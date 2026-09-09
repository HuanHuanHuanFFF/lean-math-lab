/- leanprover/lean4:v4.29.1  mathlib v4.29.1 -/
import Mathlib

/-!
# Erdős Problem 686, $k=3$, $N=4$ proof

This module formalizes the elementary and finite parts of the Bennett-route
proof of the $k=3$, $N=4$ variant, including its cleared integer form
`(m+1)(m+2)(m+3) = 4(n+1)(n+2)(n+3)`, `m ≥ n+3`.
-/

namespace Erdos686

namespace Erdos686Variant

lemma triple_product_eq_cube_sub (n : ℕ) :
    (n + 1) * (n + 2) * (n + 3) = (n + 2) ^ 3 - (n + 2) := by
  ring_nf
  omega

lemma curve_int_of_product (n m : ℕ)
    (heq : (m + 1) * (m + 2) * (m + 3) = 4 * ((n + 1) * (n + 2) * (n + 3))) :
    ((m + 2 : ℕ) : ℤ) ^ 3 - ((m + 2 : ℕ) : ℤ) =
      4 * (((n + 2 : ℕ) : ℤ) ^ 3 - ((n + 2 : ℕ) : ℤ)) := by
  have hnat : (m + 2) ^ 3 - (m + 2) = 4 * ((n + 2) ^ 3 - (n + 2)) := by
    rw [← triple_product_eq_cube_sub m, ← triple_product_eq_cube_sub n]
    exact heq
  have hmle : m + 2 ≤ (m + 2) ^ 3 := Nat.le_self_pow (by norm_num) (m + 2)
  have hnle : n + 2 ≤ (n + 2) ^ 3 := Nat.le_self_pow (by norm_num) (n + 2)
  exact_mod_cast hnat

lemma not_two_mul_le_of_curve (x y : ℕ) (hx : 0 < x)
    (hcurve : (y : ℤ) ^ 3 - (y : ℤ) = 4 * ((x : ℤ) ^ 3 - (x : ℤ))) :
    ¬ 2 * x ≤ y := by
  intro h2
  have h2z : (2 : ℤ) * x ≤ y := by exact_mod_cast h2
  let b : ℤ := 2 * (x : ℤ)
  let a : ℤ := (y : ℤ) - b
  let c : ℤ := (y : ℤ) ^ 2 + (y : ℤ) * b + b ^ 2 - 1
  have ha_nonneg : 0 ≤ a := by dsimp [a, b]; omega
  have hc_nonneg : 0 ≤ c := by
    dsimp [c, b]
    nlinarith [show (0 : ℤ) < x by exact_mod_cast hx, h2z]
  have hmono : b ^ 3 - b ≤ (y : ℤ) ^ 3 - (y : ℤ) := by
    have hfac : (y : ℤ) ^ 3 - (y : ℤ) - (b ^ 3 - b) = a * c := by
      dsimp [a, c]
      ring
    have hprod : 0 ≤ a * c := mul_nonneg ha_nonneg hc_nonneg
    nlinarith
  have hbase_gt : b ^ 3 - b > 4 * ((x : ℤ) ^ 3 - (x : ℤ)) := by
    dsimp [b]
    ring_nf
    have hxz : (0 : ℤ) < x := by exact_mod_cast hx
    have hx3 : (0 : ℤ) < (x : ℤ) ^ 3 := by positivity
    nlinarith
  nlinarith

/--
The modular divisibility step in Lemma T. From
$D^2s=4u-v$, $s=4u^3-v^3$, and $\gcd(s,u)=1$, one gets $s\mid 60$.
-/
lemma s_dvd_sixty_of_coprime_s_u
    (u v D s : ℕ)
    (hDpos : 0 < D) (hspos : 0 < s)
    (hsu : Nat.Coprime s u)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v) :
    s ∣ 60 := by
  have hprod_pos : 0 < D ^ 2 * s := by positivity
  have hsub_pos : 0 < 4 * u - v := by simpa [hD] using hprod_pos
  have hv_le_4u : v ≤ 4 * u := by omega
  have hsdvd_sub : s ∣ 4 * u - v := by
    refine ⟨D ^ 2, ?_⟩
    rw [← hD, mul_comm]
  have hv_mod : v ≡ 4 * u [MOD s] := by
    rw [Nat.modEq_iff_dvd' hv_le_4u]
    exact hsdvd_sub
  have hspos_expr : 0 < 4 * u ^ 3 - v ^ 3 := by
    simpa [hsdef] using hspos
  have hv3_le : v ^ 3 ≤ 4 * u ^ 3 := by omega
  have hv3_mod : v ^ 3 ≡ 4 * u ^ 3 [MOD s] := by
    rw [Nat.modEq_iff_dvd' hv3_le]
    rw [← hsdef]
  have hcube_mod : (4 * u) ^ 3 ≡ 4 * u ^ 3 [MOD s] :=
    (hv_mod.pow 3).symm.trans hv3_mod
  have hle_cube : 4 * u ^ 3 ≤ (4 * u) ^ 3 := by
    nlinarith [show 0 ≤ u ^ 3 by omega]
  have hs_dvd_cube_diff : s ∣ (4 * u) ^ 3 - 4 * u ^ 3 := by
    rw [← Nat.modEq_iff_dvd' hle_cube]
    exact hcube_mod.symm
  have hdiff : (4 * u) ^ 3 - 4 * u ^ 3 = 60 * u ^ 3 := by
    ring_nf
    omega
  have hs_dvd_60u3 : s ∣ 60 * u ^ 3 := by
    rwa [hdiff] at hs_dvd_cube_diff
  exact (hsu.pow_right 3).dvd_of_dvd_mul_right hs_dvd_60u3

lemma coprime_D_u
    (u v D s : ℕ) (hDpos : 0 < D) (hspos : 0 < s)
    (hcop : Nat.Coprime u v)
    (hD : D ^ 2 * s = 4 * u - v) :
    Nat.Coprime D u := by
  refine Nat.coprime_of_dvd' ?_
  intro p hp hpD hpu
  have hprod_pos : 0 < D ^ 2 * s := by positivity
  have hsub_pos : 0 < 4 * u - v := by simpa [hD] using hprod_pos
  have hv_le_4u : v ≤ 4 * u := by omega
  have hpD2 : p ∣ D ^ 2 := by
    rw [show D ^ 2 = D * D by ring]
    exact dvd_mul_of_dvd_left hpD D
  have hpD2s : p ∣ D ^ 2 * s := dvd_mul_of_dvd_left hpD2 s
  have hsum_eq : D ^ 2 * s + v = 4 * u := by omega
  have hp4u : p ∣ 4 * u := dvd_mul_of_dvd_right hpu 4
  have hpsum : p ∣ D ^ 2 * s + v := by rwa [hsum_eq]
  have hpv : p ∣ v := by
    have hpsum' : p ∣ v + D ^ 2 * s := by simpa [Nat.add_comm] using hpsum
    exact (Nat.dvd_add_left hpD2s).mp hpsum'
  have hp_coprime_v : Nat.Coprime p v := hcop.coprime_dvd_left hpu
  exact hp_coprime_v.dvd_of_dvd_mul_right (by simpa using hpv)

lemma D_sq_dvd_k_u3_add_one
    (u v D s k : ℕ) (hDpos : 0 < D) (hspos : 0 < s)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v)
    (hk : 60 = s * k) :
    D ^ 2 ∣ k * u ^ 3 + 1 := by
  have hprod_pos : 0 < D ^ 2 * s := by positivity
  have hsub_pos : 0 < 4 * u - v := by simpa [hD] using hprod_pos
  have hv_le_4u : v ≤ 4 * u := by omega
  have hspos_expr : 0 < 4 * u ^ 3 - v ^ 3 := by simpa [hsdef] using hspos
  have hv3_le : v ^ 3 ≤ 4 * u ^ 3 := by omega
  let d := 4 * u - v
  have h4u_eq : d + v = 4 * u := by
    dsimp [d]
    omega
  have hfactor_eq : (d + v) ^ 3 - v ^ 3 =
      d * ((d + v) ^ 2 + (d + v) * v + v ^ 2) := by
    ring_nf
    omega
  have hfactor_d : d ∣ (d + v) ^ 3 - v ^ 3 := by
    exact ⟨(d + v) ^ 2 + (d + v) * v + v ^ 2, hfactor_eq⟩
  have hfactor : 4 * u - v ∣ (4 * u) ^ 3 - v ^ 3 := by
    have hfactor' : d ∣ (4 * u) ^ 3 - v ^ 3 := by
      rwa [h4u_eq] at hfactor_d
    simpa [d] using hfactor'
  have hdiv : D ^ 2 * s ∣ (4 * u) ^ 3 - v ^ 3 := by
    rwa [← hD] at hfactor
  have hdiff : (4 * u) ^ 3 - v ^ 3 = s * (k * u ^ 3 + 1) := by
    calc
      (4 * u) ^ 3 - v ^ 3 = 60 * u ^ 3 + s := by
        rw [hsdef]
        ring_nf
        omega
      _ = s * (k * u ^ 3 + 1) := by
        rw [hk]
        ring
  have hdiv2 : D ^ 2 * s ∣ s * (k * u ^ 3 + 1) := by
    rwa [hdiff] at hdiv
  have hdiv3 : s * D ^ 2 ∣ s * (k * u ^ 3 + 1) := by
    simpa [Nat.mul_comm] using hdiv2
  exact Nat.dvd_of_mul_dvd_mul_left hspos hdiv3

lemma coprime_D_remainder_sq
    (D u : ℕ) (hcop : Nat.Coprime D u) :
    Nat.Coprime D (u % D ^ 2) := by
  refine Nat.coprime_of_dvd' ?_
  intro p hp hpD hpr
  have hpD2 : p ∣ D ^ 2 := by
    rw [show D ^ 2 = D * D by ring]
    exact dvd_mul_of_dvd_left hpD D
  have hp_part : p ∣ (u / D ^ 2) * D ^ 2 := dvd_mul_of_dvd_right hpD2 _
  have hu_eq : u = (u / D ^ 2) * D ^ 2 + u % D ^ 2 := by
    simpa [Nat.mul_comm] using (Nat.div_add_mod u (D ^ 2)).symm
  have hpu : p ∣ u := by
    rw [hu_eq]
    exact dvd_add hp_part hpr
  have hp_coprime_u : Nat.Coprime p u := hcop.coprime_dvd_left hpD
  exact hp_coprime_u.dvd_of_dvd_mul_right (by simpa using hpu)

lemma D_sq_dvd_k_remainder_cube_add_one
    (u v D s k : ℕ) (hDpos : 0 < D) (hspos : 0 < s)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v)
    (hk : 60 = s * k) :
    D ^ 2 ∣ k * (u % D ^ 2) ^ 3 + 1 := by
  have hdvd := D_sq_dvd_k_u3_add_one u v D s k hDpos hspos hsdef hD hk
  have hmod_u : u ≡ u % D ^ 2 [MOD D ^ 2] := (Nat.mod_modEq u (D ^ 2)).symm
  have hmod :
      k * u ^ 3 + 1 ≡ k * (u % D ^ 2) ^ 3 + 1 [MOD D ^ 2] := by
    exact ((hmod_u.pow 3).mul_left k).add_right 1
  exact Nat.modEq_zero_iff_dvd.mp (hmod.symm.trans hdvd.modEq_zero_nat)

lemma primitive_remainder_constraints
    (u v D s k : ℕ) (hDpos : 0 < D) (hspos : 0 < s)
    (hcop : Nat.Coprime u v)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v)
    (hk : 60 = s * k) :
    Nat.Coprime D (u % D ^ 2) ∧ D ^ 2 ∣ k * (u % D ^ 2) ^ 3 + 1 := by
  have hcopDu := coprime_D_u u v D s hDpos hspos hcop hD
  exact ⟨coprime_D_remainder_sq D u hcopDu,
    D_sq_dvd_k_remainder_cube_add_one u v D s k hDpos hspos hsdef hD hk⟩

lemma s60_q20_impossible (D t : ℕ) (hDpos : 0 < D) (ht : t < D ^ 2)
    (h : 4 * ((20 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
      (4 * ((20 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    False := by
  norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] at h
  ring_nf at h
  have hD2pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
  have ht_lt : (t : ℤ) < (D : ℤ) ^ 2 := by exact_mod_cast ht
  have ht2_lt : (t : ℤ) ^ 2 < (D : ℤ) ^ 4 := by
    nlinarith [ht_lt, hD2pos, ht_nonneg]
  have ht3_lt : (t : ℤ) ^ 3 < (D : ℤ) ^ 6 := by
    nlinarith [ht_lt, ht2_lt, hD2pos, ht_nonneg]
  nlinarith

lemma s60_q21_impossible (D t : ℕ) (hDpos : 0 < D) (ht : t < D ^ 2)
    (h : 4 * ((21 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
      (4 * ((21 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    False := by
  norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] at h
  ring_nf at h
  have hD2pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
  have ht_lt : (t : ℤ) < (D : ℤ) ^ 2 := by exact_mod_cast ht
  have ht2_lt : (t : ℤ) ^ 2 < (D : ℤ) ^ 4 := by
    nlinarith [ht_lt, hD2pos, ht_nonneg]
  have ht3_lt : (t : ℤ) ^ 3 < (D : ℤ) ^ 6 := by
    nlinarith [ht_lt, ht2_lt, hD2pos, ht_nonneg]
  nlinarith

lemma s60_q22_impossible (D t : ℕ) (hDpos : 0 < D) (ht : t < D ^ 2)
    (h : 4 * ((22 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
      (4 * ((22 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    False := by
  norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] at h
  ring_nf at h
  have hD2pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
  have ht_lt : (t : ℤ) < (D : ℤ) ^ 2 := by exact_mod_cast ht
  have ht2_lt : (t : ℤ) ^ 2 < (D : ℤ) ^ 4 := by
    nlinarith [ht_lt, hD2pos, ht_nonneg]
  have ht3_lt : (t : ℤ) ^ 3 < (D : ℤ) ^ 6 := by
    nlinarith [ht_lt, ht2_lt, hD2pos, ht_nonneg]
  nlinarith

lemma s60_q23_impossible (D t : ℕ) (hDpos : 0 < D) (ht : t < D ^ 2)
    (h : 4 * ((23 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
      (4 * ((23 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    False := by
  norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] at h
  ring_nf at h
  have hD2pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
  have ht_lt : (t : ℤ) < (D : ℤ) ^ 2 := by exact_mod_cast ht
  have ht2_lt : (t : ℤ) ^ 2 < (D : ℤ) ^ 4 := by
    nlinarith [ht_lt, hD2pos, ht_nonneg]
  have ht3_lt : (t : ℤ) ^ 3 < (D : ℤ) ^ 6 := by
    nlinarith [ht_lt, ht2_lt, hD2pos, ht_nonneg]
  nlinarith

lemma s60_q25_impossible (D t : ℕ) (hDpos : 0 < D) (ht : t < D ^ 2)
    (h : 4 * ((25 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
      (4 * ((25 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    False := by
  norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] at h
  ring_nf at h
  have hD2pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
  have ht_lt : (t : ℤ) < (D : ℤ) ^ 2 := by exact_mod_cast ht
  have ht2_lt : (t : ℤ) ^ 2 < (D : ℤ) ^ 4 := by
    nlinarith [ht_lt, hD2pos, ht_nonneg]
  have ht3_lt : (t : ℤ) ^ 3 < (D : ℤ) ^ 6 := by
    nlinarith [ht_lt, ht2_lt, hD2pos, ht_nonneg]
  nlinarith

lemma s60_q26_impossible (D t : ℕ) (hDpos : 0 < D) (ht : t < D ^ 2)
    (h : 4 * ((26 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
      (4 * ((26 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    False := by
  norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] at h
  ring_nf at h
  have hD2pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
  have ht_lt : (t : ℤ) < (D : ℤ) ^ 2 := by exact_mod_cast ht
  have ht2_lt : (t : ℤ) ^ 2 < (D : ℤ) ^ 4 := by
    nlinarith [ht_lt, hD2pos, ht_nonneg]
  have ht3_lt : (t : ℤ) ^ 3 < (D : ℤ) ^ 6 := by
    nlinarith [ht_lt, ht2_lt, hD2pos, ht_nonneg]
  nlinarith

lemma s60_q27_impossible (D t : ℕ) (hDpos : 0 < D) (ht : t < D ^ 2)
    (h : 4 * ((27 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
      (4 * ((27 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    False := by
  norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] at h
  ring_nf at h
  have hD2pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
  have ht_lt : (t : ℤ) < (D : ℤ) ^ 2 := by exact_mod_cast ht
  have ht2_lt : (t : ℤ) ^ 2 < (D : ℤ) ^ 4 := by
    nlinarith [ht_lt, hD2pos, ht_nonneg]
  have ht3_lt : (t : ℤ) ^ 3 < (D : ℤ) ^ 6 := by
    nlinarith [ht_lt, ht2_lt, hD2pos, ht_nonneg]
  nlinarith

lemma s60_q28_impossible (D t : ℕ) (hDpos : 0 < D) (ht : t < D ^ 2)
    (h : 4 * ((28 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
      (4 * ((28 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    False := by
  norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] at h
  ring_nf at h
  have hD2pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
  have ht_lt : (t : ℤ) < (D : ℤ) ^ 2 := by exact_mod_cast ht
  have ht2_lt : (t : ℤ) ^ 2 < (D : ℤ) ^ 4 := by
    nlinarith [ht_lt, hD2pos, ht_nonneg]
  have ht3_lt : (t : ℤ) ^ 3 < (D : ℤ) ^ 6 := by
    nlinarith [ht_lt, ht2_lt, hD2pos, ht_nonneg]
  nlinarith

lemma s60_q29_impossible (D t : ℕ) (hDpos : 0 < D) (ht : t < D ^ 2)
    (h : 4 * ((29 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
      (4 * ((29 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    False := by
  norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] at h
  ring_nf at h
  have hD2pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
  have ht_lt : (t : ℤ) < (D : ℤ) ^ 2 := by exact_mod_cast ht
  have ht2_lt : (t : ℤ) ^ 2 < (D : ℤ) ^ 4 := by
    nlinarith [ht_lt, hD2pos, ht_nonneg]
  have ht3_lt : (t : ℤ) ^ 3 < (D : ℤ) ^ 6 := by
    nlinarith [ht_lt, ht2_lt, hD2pos, ht_nonneg]
  nlinarith

lemma s60_quotient_eq_24
    (u v D : ℕ) (hDpos : 0 < D)
    (huv : u < v) (hv2u : v < 2 * u)
    (hD : D ^ 2 * 60 = 4 * u - v)
    (hsubst : 4 * (u : ℤ) ^ 3 -
      (4 * (u : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 60) :
    u / D ^ 2 = 24 := by
  let e := D ^ 2
  let q := u / e
  let t := u % e
  have hepos : 0 < e := by dsimp [e]; positivity
  have htlt : t < e := Nat.mod_lt u hepos
  have hu_eq_nat : u = q * e + t := by
    dsimp [q, t]
    simpa [Nat.mul_comm] using (Nat.div_add_mod u e).symm
  have hprod_pos : 0 < D ^ 2 * 60 := by positivity
  have hsub_pos : 0 < 4 * u - v := by simpa [hD] using hprod_pos
  have hv_le_4u : v ≤ 4 * u := by omega
  have hsum_eq : D ^ 2 * 60 + v = 4 * u := by omega
  have hlo : 20 * e < u := by
    dsimp [e]
    nlinarith
  have hhi : u < 30 * e := by
    dsimp [e]
    nlinarith
  have hq_ge20 : 20 ≤ q := by
    by_contra hnot
    have hq : q ≤ 19 := by omega
    have ht_le : t + 1 ≤ e := by omega
    have hu1 : u + 1 ≤ 20 * e := by
      rw [hu_eq_nat]
      nlinarith
    omega
  have hq_le29 : q ≤ 29 := by
    by_contra hnot
    have hq : 30 ≤ q := by omega
    rw [hu_eq_nat] at hhi
    nlinarith
  have hu_eq_int : (u : ℤ) = (q : ℤ) * (e : ℤ) + (t : ℤ) := by
    exact_mod_cast hu_eq_nat
  interval_cases q
  · exfalso
    have h' : 4 * ((20 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
        (4 * ((20 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 =
        60 := by
      rw [hu_eq_int] at hsubst
      dsimp [e] at hsubst
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] using hsubst
    exact s60_q20_impossible D t hDpos (by simpa [e] using htlt) h'
  · exfalso
    have h' : 4 * ((21 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
        (4 * ((21 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 =
        60 := by
      rw [hu_eq_int] at hsubst
      dsimp [e] at hsubst
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] using hsubst
    exact s60_q21_impossible D t hDpos (by simpa [e] using htlt) h'
  · exfalso
    have h' : 4 * ((22 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
        (4 * ((22 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 =
        60 := by
      rw [hu_eq_int] at hsubst
      dsimp [e] at hsubst
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] using hsubst
    exact s60_q22_impossible D t hDpos (by simpa [e] using htlt) h'
  · exfalso
    have h' : 4 * ((23 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
        (4 * ((23 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 =
        60 := by
      rw [hu_eq_int] at hsubst
      dsimp [e] at hsubst
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] using hsubst
    exact s60_q23_impossible D t hDpos (by simpa [e] using htlt) h'
  · have hu_eq_nat_D : u = 24 * D ^ 2 + t := by
      simpa [e] using hu_eq_nat
    exact Nat.div_eq_of_lt_le
      (by rw [hu_eq_nat_D]; nlinarith)
      (by rw [hu_eq_nat_D]; nlinarith [show t < D ^ 2 by simpa [e] using htlt])
  · exfalso
    have h' : 4 * ((25 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
        (4 * ((25 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 =
        60 := by
      rw [hu_eq_int] at hsubst
      dsimp [e] at hsubst
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] using hsubst
    exact s60_q25_impossible D t hDpos (by simpa [e] using htlt) h'
  · exfalso
    have h' : 4 * ((26 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
        (4 * ((26 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 =
        60 := by
      rw [hu_eq_int] at hsubst
      dsimp [e] at hsubst
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] using hsubst
    exact s60_q26_impossible D t hDpos (by simpa [e] using htlt) h'
  · exfalso
    have h' : 4 * ((27 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
        (4 * ((27 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 =
        60 := by
      rw [hu_eq_int] at hsubst
      dsimp [e] at hsubst
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] using hsubst
    exact s60_q27_impossible D t hDpos (by simpa [e] using htlt) h'
  · exfalso
    have h' : 4 * ((28 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
        (4 * ((28 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 =
        60 := by
      rw [hu_eq_int] at hsubst
      dsimp [e] at hsubst
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] using hsubst
    exact s60_q28_impossible D t hDpos (by simpa [e] using htlt) h'
  · exfalso
    have h' : 4 * ((29 * D ^ 2 + t : ℕ) : ℤ) ^ 3 -
        (4 * ((29 * D ^ 2 + t : ℕ) : ℤ) - (60 : ℤ) * (D : ℤ) ^ 2) ^ 3 =
        60 := by
      rw [hu_eq_int] at hsubst
      dsimp [e] at hsubst
      simpa [Nat.cast_add, Nat.cast_mul, Nat.cast_pow] using hsubst
    exact s60_q29_impossible D t hDpos (by simpa [e] using htlt) h'

lemma hard_quotient_s1
    (u v D : ℕ) (hDpos : 0 < D) (huv : u < v) (hv2u : v < 2 * u)
    (hD : D ^ 2 * 1 = 4 * u - v) :
    u / D ^ 2 = 0 := by
  have hprod_pos : 0 < D ^ 2 * 1 := by positivity
  have hsub_pos : 0 < 4 * u - v := by simpa [hD] using hprod_pos
  have hv_le_4u : v ≤ 4 * u := by omega
  have hsum_eq : D ^ 2 * 1 + v = 4 * u := by omega
  have hu_lt : u < D ^ 2 := by nlinarith
  exact Nat.div_eq_of_lt hu_lt

lemma hard_quotient_s3
    (u v D : ℕ) (hDpos : 0 < D) (huv : u < v) (hv2u : v < 2 * u)
    (hD : D ^ 2 * 3 = 4 * u - v) :
    u / D ^ 2 = 1 := by
  have hprod_pos : 0 < D ^ 2 * 3 := by positivity
  have hsub_pos : 0 < 4 * u - v := by simpa [hD] using hprod_pos
  have hv_le_4u : v ≤ 4 * u := by omega
  have hsum_eq : D ^ 2 * 3 + v = 4 * u := by omega
  exact Nat.div_eq_of_lt_le (by nlinarith) (by nlinarith)

lemma hard_quotient_s4
    (u v D : ℕ) (hDpos : 0 < D) (huv : u < v) (hv2u : v < 2 * u)
    (hD : D ^ 2 * 4 = 4 * u - v) :
    u / D ^ 2 = 1 := by
  have hprod_pos : 0 < D ^ 2 * 4 := by positivity
  have hsub_pos : 0 < 4 * u - v := by simpa [hD] using hprod_pos
  have hv_le_4u : v ≤ 4 * u := by omega
  have hsum_eq : D ^ 2 * 4 + v = 4 * u := by omega
  exact Nat.div_eq_of_lt_le (by nlinarith) (by nlinarith)

lemma hard_quotient_s5
    (u v D : ℕ) (hDpos : 0 < D) (huv : u < v) (hv2u : v < 2 * u)
    (hD : D ^ 2 * 5 = 4 * u - v) :
    u / D ^ 2 = 1 ∨ u / D ^ 2 = 2 := by
  let e := D ^ 2
  let q := u / e
  let t := u % e
  have hepos : 0 < e := by dsimp [e]; positivity
  have htlt : t < e := Nat.mod_lt u hepos
  have hu_eq_nat : u = q * e + t := by
    dsimp [q, t]
    simpa [Nat.mul_comm] using (Nat.div_add_mod u e).symm
  have hprod_pos : 0 < D ^ 2 * 5 := by positivity
  have hsub_pos : 0 < 4 * u - v := by simpa [hD] using hprod_pos
  have hv_le_4u : v ≤ 4 * u := by omega
  have hsum_eq : D ^ 2 * 5 + v = 4 * u := by omega
  have hlo : e < u := by dsimp [e]; nlinarith
  have hhi : u < 3 * e := by dsimp [e]; nlinarith
  have hq_ge1 : 1 ≤ q := by
    by_contra hnot
    have hq_lt1 : q < 1 := Nat.lt_of_not_ge hnot
    have hq0 : q = 0 := Nat.lt_one_iff.mp hq_lt1
    rw [hu_eq_nat, hq0] at hlo
    nlinarith [show t < e by simpa using htlt]
  have hq_le2 : q ≤ 2 := by
    by_contra hnot
    have hq3 : 3 ≤ q := by omega
    rw [hu_eq_nat] at hhi
    nlinarith
  change q = 1 ∨ q = 2
  interval_cases q <;> simp

lemma hard_s5_low_impossible
    (u v D : ℕ) (hDpos : 0 < D) (huv : u < v)
    (hD : D ^ 2 * 5 = 4 * u - v)
    (hsubst : 4 * (u : ℤ) ^ 3 -
      (4 * (u : ℤ) - (5 : ℤ) * (D : ℤ) ^ 2) ^ 3 = 5)
    (hq : u / D ^ 2 = 1) :
    False := by
  let e := D ^ 2
  let t := u % e
  have hepos : 0 < e := by dsimp [e]; positivity
  have htlt : t < e := Nat.mod_lt u hepos
  have hu_eq_nat : u = e + t := by
    have hdivmod : u = (u / e) * e + t := by
      dsimp [t]
      simpa [Nat.mul_comm] using (Nat.div_add_mod u e).symm
    have hq_e : u / e = 1 := by simpa [e] using hq
    simpa [hq_e, one_mul] using hdivmod
  have hsum_eq : D ^ 2 * 5 + v = 4 * u := by omega
  have htpos : 0 < t := by
    rw [hu_eq_nat] at hsum_eq huv
    dsimp [e] at hsum_eq huv
    nlinarith [show 0 < D ^ 2 by positivity]
  have hu_eq_int : (u : ℤ) = (D : ℤ) ^ 2 + (t : ℤ) := by
    have hcast : (u : ℤ) = (e : ℤ) + (t : ℤ) := by exact_mod_cast hu_eq_nat
    simpa [e, Nat.cast_pow] using hcast
  have hpoly5 : (5 : ℤ) *
      ((D : ℤ) ^ 6 + 12 * (t : ℤ) ^ 2 * ((D : ℤ) ^ 2 - (t : ℤ))) = 5 * 1 := by
    rw [hu_eq_int] at hsubst
    ring_nf at hsubst ⊢
    exact hsubst
  have hpoly :
      (D : ℤ) ^ 6 + 12 * (t : ℤ) ^ 2 * ((D : ℤ) ^ 2 - (t : ℤ)) = 1 := by
    exact (mul_right_injective₀ (show (5 : ℤ) ≠ 0 by norm_num)) hpoly5
  have hD6_ge1 : (1 : ℤ) ≤ (D : ℤ) ^ 6 := by
    have hDz : (1 : ℤ) ≤ D := by exact_mod_cast hDpos
    simpa using (pow_le_pow_left₀ (by norm_num : (0 : ℤ) ≤ 1) hDz 6)
  have ht_pos_z : (0 : ℤ) < (t : ℤ) := by exact_mod_cast htpos
  have hgap_pos : (0 : ℤ) < (D : ℤ) ^ 2 - (t : ℤ) := by
    have htltz : (t : ℤ) < (D : ℤ) ^ 2 := by
      dsimp [e] at htlt
      exact_mod_cast htlt
    nlinarith
  have hterm_pos : (0 : ℤ) < 12 * (t : ℤ) ^ 2 * ((D : ℤ) ^ 2 - (t : ℤ)) := by
    positivity
  nlinarith

lemma substituted_int_eq
    (u v D s : ℕ) (hDpos : 0 < D) (hspos : 0 < s)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v) :
    4 * (u : ℤ) ^ 3 - (4 * (u : ℤ) - (s : ℤ) * (D : ℤ) ^ 2) ^ 3 = (s : ℤ) := by
  have hprod_pos : 0 < D ^ 2 * s := by positivity
  have hsub_pos : 0 < 4 * u - v := by simpa [hD] using hprod_pos
  have hv_le_4u : v ≤ 4 * u := by omega
  have hv3_le : v ^ 3 ≤ 4 * u ^ 3 := by omega
  have hD_int : (D : ℤ) ^ 2 * (s : ℤ) = 4 * (u : ℤ) - (v : ℤ) := by
    have hcast : ((D ^ 2 * s : ℕ) : ℤ) = ((4 * u - v : ℕ) : ℤ) := by
      exact_mod_cast hD
    rw [Nat.cast_sub hv_le_4u] at hcast
    norm_num at hcast ⊢
    nlinarith
  have hv_eq : (v : ℤ) = 4 * (u : ℤ) - (s : ℤ) * (D : ℤ) ^ 2 := by
    nlinarith
  have hs_int : (s : ℤ) = 4 * (u : ℤ) ^ 3 - (v : ℤ) ^ 3 := by
    have hcast : ((s : ℕ) : ℤ) = ((4 * u ^ 3 - v ^ 3 : ℕ) : ℤ) := by
      exact_mod_cast hsdef
    rw [Nat.cast_sub hv3_le] at hcast
    norm_num at hcast ⊢
    nlinarith
  rw [hv_eq] at hs_int
  nlinarith

lemma hard_defect_quotient_cases
    (u v D s : ℕ) (hDpos : 0 < D) (hspos : 0 < s)
    (huv : u < v) (hv2u : v < 2 * u)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v)
    (hs_hard : s = 1 ∨ s = 3 ∨ s = 4 ∨ s = 5 ∨ s = 60) :
    (s = 1 ∧ u / D ^ 2 = 0) ∨
      (s = 3 ∧ u / D ^ 2 = 1) ∨
      (s = 4 ∧ u / D ^ 2 = 1) ∨
      (s = 5 ∧ (u / D ^ 2 = 1 ∨ u / D ^ 2 = 2)) ∨
      (s = 60 ∧ u / D ^ 2 = 24) := by
  rcases hs_hard with rfl | rfl | rfl | rfl | rfl
  · exact Or.inl ⟨rfl, hard_quotient_s1 u v D hDpos huv hv2u (by simpa using hD)⟩
  · exact Or.inr (Or.inl
      ⟨rfl, hard_quotient_s3 u v D hDpos huv hv2u (by simpa using hD)⟩)
  · exact Or.inr (Or.inr (Or.inl
      ⟨rfl, hard_quotient_s4 u v D hDpos huv hv2u (by simpa using hD)⟩))
  · exact Or.inr (Or.inr (Or.inr (Or.inl
      ⟨rfl, hard_quotient_s5 u v D hDpos huv hv2u (by simpa using hD)⟩)))
  · have hsubst := substituted_int_eq u v D 60 hDpos hspos hsdef hD
    exact Or.inr (Or.inr (Or.inr (Or.inr
      ⟨rfl, s60_quotient_eq_24 u v D hDpos huv hv2u
        (by simpa using hD) (by simpa using hsubst)⟩)))

lemma hard_defect_reduced_cases
    (u v D s : ℕ) (hDpos : 0 < D) (hspos : 0 < s)
    (huv : u < v) (hv2u : v < 2 * u)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v)
    (hs_hard : s = 1 ∨ s = 3 ∨ s = 4 ∨ s = 5 ∨ s = 60) :
    (s = 1 ∧ u / D ^ 2 = 0) ∨
      (s = 3 ∧ u / D ^ 2 = 1) ∨
      (s = 4 ∧ u / D ^ 2 = 1) ∨
      (s = 5 ∧ u / D ^ 2 = 2) ∨
      (s = 60 ∧ u / D ^ 2 = 24) := by
  have hhard_quotients :=
    hard_defect_quotient_cases u v D s hDpos hspos huv hv2u hsdef hD hs_hard
  rcases hhard_quotients with h1 | h3 | h4 | h5 | h60
  · exact Or.inl h1
  · exact Or.inr (Or.inl h3)
  · exact Or.inr (Or.inr (Or.inl h4))
  · rcases h5 with ⟨rfl, hq5⟩
    rcases hq5 with hq5low | hq5high
    · have hsubst5 := substituted_int_eq u v D 5 hDpos (by norm_num)
        (by simpa using hsdef) (by simpa using hD)
      exact (hard_s5_low_impossible u v D hDpos huv (by simpa using hD) hsubst5 hq5low).elim
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, hq5high⟩)))
  · exact Or.inr (Or.inr (Or.inr (Or.inr h60)))

lemma key_integral_identity
    (u v D s k : ℕ) (hDpos : 0 < D) (hspos : 0 < s)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v)
    (hk : 60 = s * k) :
    (s : ℤ) ^ 2 * (D : ℤ) ^ 6 -
        12 * (s : ℤ) * (u : ℤ) * (D : ℤ) ^ 4 +
        48 * (u : ℤ) ^ 2 * (D : ℤ) ^ 2 -
        (k : ℤ) * (u : ℤ) ^ 3 = 1 := by
  have hsubst := substituted_int_eq u v D s hDpos hspos hsdef hD
  have hkz : (60 : ℤ) = (s : ℤ) * (k : ℤ) := by exact_mod_cast hk
  have hs_ne : (s : ℤ) ≠ 0 := by exact_mod_cast (ne_of_gt hspos)
  have hmul : (s : ℤ) *
      ((s : ℤ) ^ 2 * (D : ℤ) ^ 6 -
        12 * (s : ℤ) * (u : ℤ) * (D : ℤ) ^ 4 +
        48 * (u : ℤ) ^ 2 * (D : ℤ) ^ 2 -
        (k : ℤ) * (u : ℤ) ^ 3) = (s : ℤ) * 1 := by
    ring_nf at hsubst
    rw [hkz] at hsubst
    ring_nf at hsubst ⊢
    exact hsubst
  exact (mul_right_injective₀ hs_ne) hmul

lemma pow_index_add_two_le_self {p v : ℕ}
    (hp3 : 3 ≤ p) (hvpos : 0 < v) : v + 2 ≤ p ^ v := by
  induction v with
  | zero => omega
  | succ v ih =>
      cases v with
      | zero =>
          simp only [zero_add, Nat.reduceAdd, pow_one]
          exact hp3
      | succ v =>
          have ih' : v.succ + 2 ≤ p ^ v.succ := ih (by omega)
          have hp2 : 2 ≤ p := by omega
          have hpow_pos : 1 ≤ p ^ v.succ := Nat.one_le_pow v.succ p (by omega)
          calc
            (v.succ.succ + 2) = (v.succ + 2) + 1 := by omega
            _ ≤ p ^ v.succ + 1 := by omega
            _ ≤ p ^ v.succ * p := by nlinarith
            _ = p ^ v.succ.succ := by simp [Nat.pow_succ, Nat.mul_assoc]

lemma padicValNat_add_two_le_self {p j : ℕ}
    (hp3 : 3 ≤ p) (hj2 : 2 ≤ j) :
    padicValNat p j + 2 ≤ j := by
  by_cases hv0 : padicValNat p j = 0
  · omega
  · have hvpos : 0 < padicValNat p j := Nat.pos_of_ne_zero hv0
    have hjne : j ≠ 0 := by omega
    have hdvd : p ^ padicValNat p j ∣ j := pow_padicValNat_dvd
    have hpow_le_j : p ^ padicValNat p j ≤ j :=
      Nat.le_of_dvd (Nat.pos_of_ne_zero hjne) hdvd
    exact le_trans (pow_index_add_two_le_self hp3 hvpos) hpow_le_j

lemma choose_mul_right_identity {q j : ℕ} (hjpos : 0 < j) (hjq : j ≤ q) :
    j * q.choose j = q * (q - 1).choose (j - 1) := by
  rcases q with _ | q'
  · omega
  rcases j with _ | j'
  · omega
  have := Nat.add_one_mul_choose_eq q' j'
  simpa [Nat.mul_comm, Nat.mul_left_comm, Nat.mul_assoc] using this.symm

lemma binom_lift_dvd {p q j r : ℕ} [Fact p.Prime]
    (hp3 : 3 ≤ p) (hqpos : 0 < q) (hr : r = padicValNat p q)
    (hj2 : 2 ≤ j) (hjq : j ≤ q) :
    p ^ (r + 2) ∣ q.choose j * p ^ j := by
  have hpne : p ≠ 1 := by omega
  have hjpos : 0 < j := by omega
  have hjne : j ≠ 0 := by omega
  have hqne : q ≠ 0 := by omega
  have hp0 : p ≠ 0 := Nat.Prime.ne_zero Fact.out
  have hchoose_ne : q.choose j ≠ 0 := Nat.choose_ne_zero hjq
  have htarget_ne : q.choose j * p ^ j ≠ 0 := by
    exact Nat.mul_ne_zero hchoose_ne (pow_ne_zero _ hp0)
  rw [Nat.pow_dvd_iff_le_padicValNat hpne htarget_ne]
  rw [padicValNat.mul hchoose_ne (pow_ne_zero _ hp0)]
  rw [padicValNat_base_pow (Nat.Prime.one_lt Fact.out) j]
  have hid := choose_mul_right_identity (q := q) (j := j) hjpos hjq
  have hval_eq :
      padicValNat p (j * q.choose j) =
        padicValNat p (q * (q - 1).choose (j - 1)) := by
    rw [hid]
  rw [padicValNat.mul hjne hchoose_ne] at hval_eq
  have hprev_nonzero : (q - 1).choose (j - 1) ≠ 0 := by
    apply Nat.choose_ne_zero
    omega
  rw [padicValNat.mul hqne hprev_nonzero] at hval_eq
  rw [← hr] at hval_eq
  have hle_r : r ≤ padicValNat p j + padicValNat p (q.choose j) := by
    nlinarith [show 0 ≤ padicValNat p ((q - 1).choose (j - 1)) by omega]
  have hvj := padicValNat_add_two_le_self (p := p) (j := j) hp3 hj2
  omega

namespace CubicOrder

structure Cub where
  a : ℤ
  b : ℤ
  c : ℤ
  deriving DecidableEq, Repr

namespace Cub

def cubMul (x y : Cub) : Cub :=
  ⟨x.a * y.a + 4 * x.b * y.c + 4 * x.c * y.b,
    x.a * y.b + x.b * y.a + 4 * x.c * y.c,
    x.a * y.c + x.b * y.b + x.c * y.a⟩

def cubOne : Cub := ⟨1, 0, 0⟩

def cubAdd (x y : Cub) : Cub := ⟨x.a + y.a, x.b + y.b, x.c + y.c⟩

def cubNeg (x : Cub) : Cub := ⟨-x.a, -x.b, -x.c⟩

def cubSub (x y : Cub) : Cub := cubAdd x (cubNeg y)

def cubZSMul (z : ℤ) (x : Cub) : Cub := ⟨z * x.a, z * x.b, z * x.c⟩

def cubOfInt (z : ℤ) : Cub := ⟨z, 0, 0⟩

def cubNorm (x : Cub) : ℤ :=
  x.a ^ 3 + 4 * x.b ^ 3 + 16 * x.c ^ 3 - 12 * x.a * x.b * x.c

noncomputable def theta : ℝ := (4 : ℝ) ^ ((3 : ℝ)⁻¹)

noncomputable def rho (x : Cub) : ℝ :=
  (x.a : ℝ) + (x.b : ℝ) * theta + (x.c : ℝ) * theta ^ 2

noncomputable def Q4 (x : Cub) : ℝ :=
  let a : ℝ := x.a
  let b : ℝ := x.b
  let c : ℝ := x.c
  let W := 2 * a - b * theta - c * theta ^ 2
  let Y := b * theta - c * theta ^ 2
  W ^ 2 + 3 * Y ^ 2

def eta : Cub := ⟨4, -1, 0⟩

def alpha (u v : ℤ) : Cub := ⟨-v, u, 0⟩

def unitE : Cub := ⟨5, 3, 2⟩

def unitEInv : Cub := ⟨1, 1, -1⟩

def lambda : Cub := ⟨-12, 1, 4⟩

def mu : Cub := ⟨0, -16, 10⟩

def delta : ℕ → Cub
  | 1 => ⟨1, 0, 0⟩
  | 3 => ⟨-1, 1, 0⟩
  | 4 => ⟨0, 1, 0⟩
  | 5 => ⟨1, 1, 0⟩
  | 60 => eta
  | _ => ⟨0, 0, 0⟩

def betaS1 (e t : ℤ) : Cub := ⟨e - 4 * t, t, 0⟩

def betaS3 (e t : ℤ) : Cub := ⟨e, -t, -t⟩

def betaS4 (e t : ℤ) : Cub := ⟨e + t, 0, -t⟩

def betaS5Low (e t : ℤ) : Cub := ⟨e, t, -t⟩

def betaS5High (e t : ℤ) : Cub := ⟨e, e + t, -e - t⟩

def betaS60 (e t : ℤ) : Cub := ⟨-8 * e - t, 4 * e, e⟩

def unitEPow : ℕ → Cub
  | 0 => cubOne
  | n + 1 => cubMul (unitEPow n) unitE

def unitEInvPow : ℕ → Cub
  | 0 => cubOne
  | n + 1 => cubMul (unitEInvPow n) unitEInv

def unitEZPow : ℤ → Cub
  | Int.ofNat n => unitEPow n
  | Int.negSucc n => unitEInvPow (n + 1)

def cubRightIter (x step : Cub) : ℕ → Cub
  | 0 => x
  | n + 1 => cubMul (cubRightIter x step n) step

lemma cubNorm_mul (x y : Cub) : cubNorm (cubMul x y) = cubNorm x * cubNorm y := by
  cases x with
  | mk a b c =>
  cases y with
  | mk d e f =>
  simp only [cubNorm, cubMul]
  ring

lemma theta_cube : theta ^ 3 = 4 := by
  simpa [theta] using
    (Real.rpow_inv_natCast_pow (x := (4 : ℝ)) (n := 3) (by norm_num) (by norm_num))

lemma theta_pos : 0 < theta := by
  have hnonneg : 0 ≤ theta := by
    dsimp [theta]
    positivity
  have hne : theta ≠ 0 := by
    intro h
    have hcube := theta_cube
    rw [h] at hcube
    norm_num at hcube
  exact lt_of_le_of_ne hnonneg (Ne.symm hne)

lemma theta_gt_three_halves : (3 : ℝ) / 2 < theta := by
  by_contra hnot
  have hle : theta ≤ (3 : ℝ) / 2 := le_of_not_gt hnot
  have hpow : theta ^ 3 ≤ ((3 : ℝ) / 2) ^ 3 :=
    pow_le_pow_left₀ (le_of_lt theta_pos) hle 3
  rw [theta_cube] at hpow
  norm_num at hpow

lemma theta_lt_eight_fifths : theta < (8 : ℝ) / 5 := by
  by_contra hnot
  have hle : (8 : ℝ) / 5 ≤ theta := le_of_not_gt hnot
  have hpow : ((8 : ℝ) / 5) ^ 3 ≤ theta ^ 3 :=
    pow_le_pow_left₀ (by norm_num) hle 3
  rw [theta_cube] at hpow
  norm_num at hpow

lemma theta_sq_lt_three : theta ^ 2 < 3 := by
  by_contra hnot
  have hle : (3 : ℝ) ≤ theta ^ 2 := le_of_not_gt hnot
  have hpow : (3 : ℝ) ^ 3 ≤ (theta ^ 2) ^ 3 :=
    pow_le_pow_left₀ (by norm_num) hle 3
  have htheta6 : (theta ^ 2) ^ 3 = 16 := by
    calc
      (theta ^ 2) ^ 3 = (theta ^ 3) ^ 2 := by ring
      _ = 16 := by rw [theta_cube]; norm_num
  rw [htheta6] at hpow
  norm_num at hpow

lemma theta_sq_gt_nine_four : (9 : ℝ) / 4 < theta ^ 2 := by
  nlinarith [theta_gt_three_halves, sq_nonneg (theta - (3 : ℝ) / 2)]

lemma theta_sq_lt_sixtyfour_twentyfive : theta ^ 2 < (64 : ℝ) / 25 := by
  have hmul : theta * theta < ((8 : ℝ) / 5) * ((8 : ℝ) / 5) :=
    mul_lt_mul theta_lt_eight_fifths (le_of_lt theta_lt_eight_fifths)
      theta_pos (by norm_num)
  nlinarith

lemma rho_mul (x y : Cub) : rho (cubMul x y) = rho x * rho y := by
  cases x with
  | mk a b c =>
  cases y with
  | mk d e f =>
    dsimp [rho, cubMul]
    have htheta4 : theta ^ 4 = 4 * theta := by
      calc
        theta ^ 4 = theta ^ 3 * theta := by ring
        _ = 4 * theta := by rw [theta_cube]
    norm_num [Int.cast_add, Int.cast_mul]
    ring_nf
    rw [htheta4, theta_cube]
    ring_nf

lemma Q4_nonneg (x : Cub) : 0 ≤ Q4 x := by
  dsimp [Q4]
  positivity

lemma rho_mul_Q4_eq_four_norm (x : Cub) :
    rho x * Q4 x = 4 * (cubNorm x : ℝ) := by
  cases x with
  | mk a b c =>
    dsimp [rho, Q4, cubNorm]
    have htheta4 : theta ^ 4 = 4 * theta := by
      calc
        theta ^ 4 = theta ^ 3 * theta := by ring
        _ = 4 * theta := by rw [theta_cube]
    have htheta6 : theta ^ 6 = 16 := by
      calc
        theta ^ 6 = (theta ^ 3) ^ 2 := by ring
        _ = 16 := by rw [theta_cube]; norm_num
    norm_num [Int.cast_add, Int.cast_mul, Int.cast_sub]
    ring_nf
    rw [htheta6, theta_cube]
    ring_nf

lemma rho_pos_of_norm_one (x : Cub) (hN : cubNorm x = 1) :
    0 < rho x := by
  have hmain := rho_mul_Q4_eq_four_norm x
  rw [hN] at hmain
  norm_num at hmain
  have hQ : 0 ≤ Q4 x := Q4_nonneg x
  by_contra hnot
  have hr : rho x ≤ 0 := le_of_not_gt hnot
  have hprod : rho x * Q4 x ≤ 0 := mul_nonpos_of_nonpos_of_nonneg hr hQ
  nlinarith

lemma Q4_le_four_of_reduced
    (x : Cub) (hN : cubNorm x = 1) (hrho_low : 1 ≤ rho x) :
    Q4 x ≤ 4 := by
  have hmain := rho_mul_Q4_eq_four_norm x
  rw [hN] at hmain
  norm_num at hmain
  have hQ : 0 ≤ Q4 x := Q4_nonneg x
  have hle : Q4 x ≤ rho x * Q4 x := by
    have hmul : 1 * Q4 x ≤ rho x * Q4 x :=
      mul_le_mul_of_nonneg_right hrho_low hQ
    simpa using hmul
  nlinarith

lemma rho_unitE_bounds : 1 < rho unitE ∧ rho unitE < 15 := by
  constructor
  · dsimp [rho, unitE]
    norm_num
    nlinarith [theta_pos, sq_nonneg theta]
  · dsimp [rho, unitE]
    norm_num
    nlinarith [theta_lt_eight_fifths, theta_sq_lt_sixtyfour_twentyfive]

lemma reduced_coord_bounds
    (x : Cub)
    (hN : cubNorm x = 1)
    (hrho_low : 1 ≤ rho x)
    (hrho_high : rho x < rho unitE) :
    0 ≤ x.a ∧ x.a ≤ 5 ∧
      0 ≤ x.b ∧ x.b ≤ 4 ∧
      0 ≤ x.c ∧ x.c ≤ 2 := by
  have hQle := Q4_le_four_of_reduced x hN hrho_low
  have hrho_high15 : rho x < 15 := lt_trans hrho_high rho_unitE_bounds.2
  cases x with
  | mk a b c =>
      let P : ℝ := (b : ℝ) * theta + (c : ℝ) * theta ^ 2
      let W : ℝ := 2 * (a : ℝ) - P
      let Y : ℝ := (b : ℝ) * theta - (c : ℝ) * theta ^ 2
      have hQ : W ^ 2 + 3 * Y ^ 2 ≤ 4 := by
        dsimp [Q4] at hQle
        dsimp [W, Y, P]
        convert hQle using 1
        ring
      have hWsq : W ^ 2 ≤ 4 := by
        nlinarith [sq_nonneg Y]
      have hYsq_lt : Y ^ 2 < 4 := by
        nlinarith [sq_nonneg W]
      have hWlo : -2 ≤ W := by
        nlinarith [sq_nonneg (W + 2), hWsq]
      have hWhi : W ≤ 2 := by
        nlinarith [sq_nonneg (W - 2), hWsq]
      have hYlo : -2 < Y := by
        nlinarith [sq_nonneg (Y + 2), hYsq_lt]
      have hYhi : Y < 2 := by
        nlinarith [sq_nonneg (Y - 2), hYsq_lt]
      have hthree_a :
          3 * (a : ℝ) = rho ⟨a, b, c⟩ + W := by
        dsimp [rho, W, P]
        ring
      have ha_ge_real : (-1 : ℝ) ≤ 3 * (a : ℝ) := by
        nlinarith
      have ha_lt_real : 3 * (a : ℝ) < 17 := by
        nlinarith
      have ha0 : 0 ≤ a := by
        by_contra hnot
        have ha_le_neg1 : a ≤ -1 := by omega
        have ha_le_neg1_real : (a : ℝ) ≤ -1 := by exact_mod_cast ha_le_neg1
        nlinarith
      have ha1 : a ≤ 5 := by
        by_contra hnot
        have ha_ge6 : 6 ≤ a := by omega
        have ha_ge6_real : (6 : ℝ) ≤ a := by exact_mod_cast ha_ge6
        nlinarith
      have hthree_P : 3 * P = 2 * rho ⟨a, b, c⟩ - W := by
        dsimp [rho, W, P]
        ring
      have hP_nonneg : 0 ≤ P := by
        nlinarith
      have hP_lt : P < (32 : ℝ) / 3 := by
        nlinarith
      have htwo_btheta :
          2 * ((b : ℝ) * theta) = P + Y := by
        dsimp [P, Y]
        ring
      have hbtheta_gt_neg1 : -1 < (b : ℝ) * theta := by
        nlinarith
      have hbtheta_lt : (b : ℝ) * theta < (19 : ℝ) / 3 := by
        nlinarith
      have hb0 : 0 ≤ b := by
        by_contra hnot
        have hb_le_neg1 : b ≤ -1 := by omega
        have hb_le_neg1_real : (b : ℝ) ≤ -1 := by exact_mod_cast hb_le_neg1
        have htheta_gt_one : (1 : ℝ) < theta := by nlinarith [theta_gt_three_halves]
        nlinarith [theta_pos]
      have hb1 : b ≤ 4 := by
        by_contra hnot
        have hb_ge5 : 5 ≤ b := by omega
        have hb_ge5_real : (5 : ℝ) ≤ b := by exact_mod_cast hb_ge5
        nlinarith [theta_pos, theta_gt_three_halves]
      let T : ℝ := theta ^ 2
      have hT_nonneg : 0 ≤ T := by
        dsimp [T]
        exact sq_nonneg theta
      have hT_gt_nine_four : (9 : ℝ) / 4 < T := by
        simpa [T] using theta_sq_gt_nine_four
      have hT_gt_one : (1 : ℝ) < T := by
        linarith only [hT_gt_nine_four]
      have htwo_ctheta :
          2 * ((c : ℝ) * T) = P - Y := by
        dsimp [P, Y, T]
        ring
      have hctheta_gt_neg1 : -1 < (c : ℝ) * T := by
        nlinarith
      have hctheta_lt : (c : ℝ) * T < (19 : ℝ) / 3 := by
        nlinarith
      have hc0 : 0 ≤ c := by
        by_contra hnot
        have hc_le_neg1 : c ≤ -1 := by omega
        have hc_le_neg1_real : (c : ℝ) ≤ -1 := by exact_mod_cast hc_le_neg1
        have hctheta_le_neg :
            (c : ℝ) * T ≤ -T := by
          have hmul := mul_le_mul_of_nonneg_right hc_le_neg1_real hT_nonneg
          simpa using hmul
        have hnegT_lt : -T < -1 := neg_lt_neg hT_gt_one
        have hctheta_lt_neg1 : (c : ℝ) * T < -1 :=
          lt_of_le_of_lt hctheta_le_neg hnegT_lt
        have hnot_gt : ¬ -1 < (c : ℝ) * T :=
          not_lt_of_ge (le_of_lt hctheta_lt_neg1)
        exact hnot_gt hctheta_gt_neg1
      have hc1 : c ≤ 2 := by
        by_contra hnot
        have hc_ge3 : 3 ≤ c := by omega
        have hc_ge3_real : (3 : ℝ) ≤ c := by exact_mod_cast hc_ge3
        have hctheta_ge :
            3 * T ≤ (c : ℝ) * T := by
          exact mul_le_mul_of_nonneg_right hc_ge3_real hT_nonneg
        have hthreeT_gt_19 : (19 : ℝ) / 3 < 3 * T := by
          linarith only [hT_gt_nine_four]
        have hctheta_gt_19 : (19 : ℝ) / 3 < (c : ℝ) * T :=
          lt_of_lt_of_le hthreeT_gt_19 hctheta_ge
        have hnot_lt : ¬ (c : ℝ) * T < (19 : ℝ) / 3 :=
          not_lt_of_ge (le_of_lt hctheta_gt_19)
        exact hnot_lt hctheta_lt
      constructor
      · exact ha0
      · constructor
        · exact ha1
        · constructor
          · exact hb0
          · constructor
            · exact hb1
            · exact ⟨hc0, hc1⟩

lemma exists_int_pow_scale {A r : ℝ} (hA : 1 < A) (hr : 0 < r) :
    ∃ k : ℤ, 1 ≤ r * A ^ k ∧ r * A ^ k < A := by
  obtain ⟨n, hnlo, hnhi⟩ := exists_mem_Ico_zpow hr hA
  refine ⟨-n, ?_⟩
  have hApos : 0 < A := lt_trans zero_lt_one hA
  have hApow_pos : 0 < A ^ n := zpow_pos hApos n
  have hdiv_eq : r / A ^ n = r * A ^ (-n) := by
    rw [zpow_neg, div_eq_mul_inv]
  constructor
  · have hle : 1 ≤ r / A ^ n := (one_le_div hApow_pos).2 hnlo
    simpa [hdiv_eq] using hle
  · have hnhi' : r < A * A ^ n := by
      simpa [zpow_add_one₀ (ne_of_gt hApos), mul_comm] using hnhi
    have hlt : r / A ^ n < A := (div_lt_iff₀ hApow_pos).2 hnhi'
    simpa [hdiv_eq] using hlt

lemma cubMul_assoc (x y z : Cub) : cubMul (cubMul x y) z = cubMul x (cubMul y z) := by
  cases x with
  | mk a b c =>
  cases y with
  | mk d e f =>
  cases z with
  | mk g h i =>
    simp only [cubMul]
    rw [Cub.mk.injEq]
    constructor
    · ring
    · constructor <;> ring

lemma cubMul_comm (x y : Cub) : cubMul x y = cubMul y x := by
  cases x with
  | mk a b c =>
  cases y with
  | mk d e f =>
    simp only [cubMul]
    rw [Cub.mk.injEq]
    constructor
    · ring
    · constructor <;> ring

lemma cubMul_one (x : Cub) : cubMul x cubOne = x := by
  cases x with
  | mk a b c =>
    norm_num [cubMul, cubOne]

lemma cubOne_mul (x : Cub) : cubMul cubOne x = x := by
  rw [cubMul_comm, cubMul_one]

instance instZero : Zero Cub := ⟨⟨0, 0, 0⟩⟩

instance instOne : One Cub := ⟨cubOne⟩

instance instAdd : Add Cub := ⟨cubAdd⟩

instance instNeg : Neg Cub := ⟨cubNeg⟩

instance instSub : Sub Cub := ⟨cubSub⟩

instance instMul : Mul Cub := ⟨cubMul⟩

@[simp] lemma zero_def : (0 : Cub) = ⟨0, 0, 0⟩ := rfl

@[simp] lemma one_def : (1 : Cub) = cubOne := rfl

@[simp] lemma add_def (x y : Cub) : x + y = cubAdd x y := rfl

@[simp] lemma neg_def (x : Cub) : -x = cubNeg x := rfl

@[simp] lemma sub_def (x y : Cub) : x - y = cubSub x y := rfl

@[simp] lemma mul_def (x y : Cub) : x * y = cubMul x y := rfl

instance instCommRing : CommRing Cub where
  add := (· + ·)
  add_assoc := by
    intro a b c
    cases a; cases b; cases c
    simp [cubAdd]
    ring_nf
    simp
  zero := 0
  zero_add := by
    intro a
    cases a
    simp [cubAdd]
  add_zero := by
    intro a
    cases a
    simp [cubAdd]
  nsmul := fun n x => cubZSMul (n : ℤ) x
  nsmul_zero := by
    intro x
    cases x
    simp [cubZSMul]
  nsmul_succ := by
    intro n x
    cases x
    simp [cubZSMul, cubAdd]
    ring_nf
    simp
  add_comm := by
    intro a b
    cases a; cases b
    simp [cubAdd]
    ring_nf
    simp
  mul := (· * ·)
  left_distrib := by
    intro a b c
    cases a; cases b; cases c
    simp [cubMul, cubAdd]
    ring_nf
    simp
  right_distrib := by
    intro a b c
    cases a; cases b; cases c
    simp [cubMul, cubAdd]
    ring_nf
    simp
  zero_mul := by
    intro a
    cases a
    simp [cubMul]
  mul_zero := by
    intro a
    cases a
    simp [cubMul]
  mul_assoc := by
    intro a b c
    exact cubMul_assoc a b c
  one := 1
  one_mul := by
    intro a
    exact cubOne_mul a
  mul_one := by
    intro a
    exact cubMul_one a
  natCast := fun n => cubOfInt (n : ℤ)
  natCast_zero := by
    simp [cubOfInt]
  natCast_succ := by
    intro n
    simp [cubOfInt, cubAdd, cubOne]
  npow := fun n x => Nat.recOn n 1 (fun _ y => y * x)
  npow_zero := by
    intro x
    rfl
  npow_succ := by
    intro n x
    rfl
  neg := Neg.neg
  sub := Sub.sub
  sub_eq_add_neg := by
    intro a b
    cases a; cases b
    simp [cubSub, cubAdd, cubNeg]
  zsmul := cubZSMul
  zsmul_zero' := by
    intro a
    cases a
    simp [cubZSMul]
  zsmul_succ' := by
    intro n a
    cases a
    simp [cubZSMul, cubAdd]
    ring_nf
    simp
  zsmul_neg' := by
    intro n a
    cases a
    simp [cubZSMul, cubNeg, Int.negSucc_eq]
    ring_nf
    simp
  neg_add_cancel := by
    intro a
    cases a
    simp [cubAdd, cubNeg]
  intCast := cubOfInt
  intCast_ofNat := by
    intro n
    rfl
  intCast_negSucc := by
    intro n
    change cubOfInt (Int.negSucc n) = cubNeg (cubOfInt ((n + 1 : ℕ) : ℤ))
    simp [cubOfInt, cubNeg, Int.negSucc_eq]
  mul_comm := by
    intro a b
    exact cubMul_comm a b

@[simp] lemma natCast_def (n : ℕ) : (n : Cub) = cubOfInt (n : ℤ) := rfl

@[simp] lemma intCast_def (z : ℤ) : (z : Cub) = cubOfInt z := rfl

attribute [-simp] zero_def one_def add_def neg_def sub_def mul_def natCast_def intCast_def

lemma finset_sum_c {ι : Type} (s : Finset ι) (f : ι → Cub) :
    (∑ i ∈ s, f i).c = ∑ i ∈ s, (f i).c := by
  classical
  induction s using Finset.induction_on with
  | empty =>
      simp [zero_def]
  | insert a s has ih =>
      simp [has, ih, add_def, cubAdd]

lemma natCast_mul_c (n : ℕ) (x : Cub) :
    (((n : Cub) * x).c) = (n : ℤ) * x.c := by
  cases x
  simp [natCast_def, mul_def, cubMul, cubOfInt]

lemma intCast_mul_c (z : ℤ) (x : Cub) :
    (((z : Cub) * x).c) = z * x.c := by
  cases x
  simp [intCast_def, mul_def, cubMul, cubOfInt]

lemma binomial_term_c_eq (p q m : ℕ) (B L : Cub) :
    (B * (((p : Cub) * L) ^ m * (q.choose m : Cub))).c =
      ((q.choose m : ℤ) * (p : ℤ) ^ m) * (B * L ^ m).c := by
  calc
    (B * (((p : Cub) * L) ^ m * (q.choose m : Cub))).c =
        (((q.choose m * p ^ m : ℕ) : Cub) * (B * L ^ m)).c := by
          congr 1
          rw [mul_pow, Nat.cast_mul, Nat.cast_pow]
          ac_rfl
    _ = ((q.choose m * p ^ m : ℕ) : ℤ) * (B * L ^ m).c := by
          rw [natCast_mul_c]
    _ = ((q.choose m : ℤ) * (p : ℤ) ^ m) * (B * L ^ m).c := by
          norm_num

lemma first_order_lifting_modEq
    {p q r : ℕ} [Fact p.Prime]
    (hp3 : 3 ≤ p) (hqpos : 0 < q) (hr : r = padicValNat p q)
    (B L : Cub) (hB : B.c = 0) :
    (B * (1 + (p : Cub) * L) ^ q).c ≡
      (q : ℤ) * (p : ℤ) * (B * L).c [ZMOD (p : ℤ) ^ (r + 2)] := by
  classical
  let f : ℕ → ℤ := fun m =>
    ((q.choose m : ℤ) * (p : ℤ) ^ m) * (B * L ^ m).c
  let g : ℕ → ℤ := fun m =>
    if m = 1 then (q : ℤ) * (p : ℤ) * (B * L).c else 0
  have hsum : (B * (1 + (p : Cub) * L) ^ q).c = ∑ m ∈ Finset.range (q + 1), f m := by
    dsimp [f]
    calc
      (B * (1 + (p : Cub) * L) ^ q).c =
          (B * (((p : Cub) * L + 1) ^ q)).c := by
            congr 2
            ring
      _ = (B * (∑ m ∈ Finset.range (q + 1),
            ((p : Cub) * L) ^ m * (q.choose m : Cub))).c := by
            have hadd := add_pow ((p : Cub) * L) (1 : Cub) q
            simp only [one_pow, mul_one] at hadd
            rw [hadd]
      _ = (∑ m ∈ Finset.range (q + 1),
            B * (((p : Cub) * L) ^ m * (q.choose m : Cub))).c := by
            rw [Finset.mul_sum]
      _ = ∑ m ∈ Finset.range (q + 1),
            (B * (((p : Cub) * L) ^ m * (q.choose m : Cub))).c := by
            rw [finset_sum_c]
      _ = ∑ m ∈ Finset.range (q + 1),
            ((q.choose m : ℤ) * (p : ℤ) ^ m) * (B * L ^ m).c := by
            apply Finset.sum_congr rfl
            intro m _hm
            exact binomial_term_c_eq p q m B L
  have hterm : ∀ m ∈ Finset.range (q + 1), f m ≡ g m [ZMOD (p : ℤ) ^ (r + 2)] := by
    intro m hm
    have hmle : m ≤ q := by
      have : m < q + 1 := Finset.mem_range.mp hm
      omega
    by_cases hm0 : m = 0
    · subst m
      dsimp [f, g]
      simp [hB]
    · by_cases hm1 : m = 1
      · subst m
        dsimp [f, g]
        simp [Nat.choose_one_right, pow_one, mul_assoc]
      · have hm2 : 2 ≤ m := by omega
        dsimp [f, g]
        rw [if_neg hm1]
        apply (Int.modEq_zero_iff_dvd).2
        have hdvd_nat := binom_lift_dvd (p := p) (q := q) (j := m) (r := r)
          hp3 hqpos hr hm2 hmle
        obtain ⟨k, hk⟩ := hdvd_nat
        refine dvd_mul_of_dvd_left ?_ ((B * L ^ m).c)
        use (k : ℤ)
        have hkz : ((q.choose m * p ^ m : ℕ) : ℤ) =
            ((p ^ (r + 2) : ℕ) : ℤ) * (k : ℤ) := by
          exact_mod_cast hk
        simpa [Nat.cast_mul, Nat.cast_pow] using hkz
  have hsum_mod := Int.ModEq.sum hterm
  rw [← hsum] at hsum_mod
  have hgsum : ∑ m ∈ Finset.range (q + 1), g m = (q : ℤ) * (p : ℤ) * (B * L).c := by
    dsimp [g]
    apply Finset.sum_eq_single 1
    · intro b _hb hbne
      simp [hbne]
    · intro hnot
      have : 1 ∈ Finset.range (q + 1) := by
        rw [Finset.mem_range]
        omega
      exact (hnot this).elim
  rwa [hgsum] at hsum_mod

lemma first_order_lifting_ne_zero
    {p q : ℕ} [Fact p.Prime]
    (hp3 : 3 ≤ p) (hqpos : 0 < q)
    (B L : Cub)
    (hB : B.c = 0)
    (hBL : ¬ (p : ℤ) ∣ (B * L).c) :
    (B * (1 + (p : Cub) * L) ^ q).c ≠ 0 := by
  intro hzero
  let r := padicValNat p q
  have hmod := first_order_lifting_modEq (p := p) (q := q) (r := r)
    hp3 hqpos rfl B L hB
  rw [hzero] at hmod
  have hlin_dvd : (p : ℤ) ^ (r + 2) ∣ (q : ℤ) * (p : ℤ) * (B * L).c := by
    simpa using Int.ModEq.dvd hmod
  have hpne : p ≠ 1 := by omega
  have hpz_nat : p ≠ 0 := (Fact.out : Nat.Prime p).ne_zero
  have hpz : (p : ℤ) ≠ 0 := by exact_mod_cast hpz_nat
  have hqz : (q : ℤ) ≠ 0 := by exact_mod_cast (ne_of_gt hqpos)
  have ht_ne : (B * L).c ≠ 0 := by
    intro ht
    exact hBL (by rw [ht]; exact dvd_zero _)
  have hqp_ne : (q : ℤ) * (p : ℤ) ≠ 0 := mul_ne_zero hqz hpz
  have hprod_ne : (q : ℤ) * (p : ℤ) * (B * L).c ≠ 0 :=
    mul_ne_zero hqp_ne ht_ne
  have hval_ge : r + 2 ≤ padicValInt p ((q : ℤ) * (p : ℤ) * (B * L).c) := by
    have hiff := padicValInt_dvd_iff_of_ne_one hpne (r + 2)
      ((q : ℤ) * (p : ℤ) * (B * L).c)
    have hzero_or := hiff.mp hlin_dvd
    rcases hzero_or with hprod_zero | hge
    · exact (hprod_ne hprod_zero).elim
    · exact hge
  have hq_val : padicValInt p (q : ℤ) = r := by
    dsimp [r]
    exact padicValInt.of_nat
  have hp_val : padicValInt p (p : ℤ) = 1 := by
    exact padicValInt_self (p := p)
  have ht_val : padicValInt p (B * L).c = 0 :=
    padicValInt.eq_zero_of_not_dvd hBL
  have hval_eq :
      padicValInt p ((q : ℤ) * (p : ℤ) * (B * L).c) = r + 1 := by
    rw [padicValInt.mul hqp_ne ht_ne, padicValInt.mul hqz hpz]
    rw [hq_val, hp_val, ht_val]
  rw [hval_eq] at hval_ge
  omega

lemma cubMul_mul_mul_reorder (a b c d : Cub) :
    cubMul (cubMul a b) (cubMul c d) =
      cubMul (cubMul a c) (cubMul b d) := by
  calc
    cubMul (cubMul a b) (cubMul c d) =
        cubMul a (cubMul b (cubMul c d)) := cubMul_assoc a b (cubMul c d)
    _ = cubMul a (cubMul (cubMul b c) d) := by rw [cubMul_assoc b c d]
    _ = cubMul a (cubMul (cubMul c b) d) := by rw [cubMul_comm b c]
    _ = cubMul a (cubMul c (cubMul b d)) := by rw [cubMul_assoc]
    _ = cubMul (cubMul a c) (cubMul b d) := by rw [← cubMul_assoc]

lemma cubMul_add_right (x y z : Cub) :
    cubMul x (cubAdd y z) = cubAdd (cubMul x y) (cubMul x z) := by
  cases x with
  | mk a b c =>
  cases y with
  | mk d e f =>
  cases z with
  | mk g h i =>
    simp only [cubMul, cubAdd]
    rw [Cub.mk.injEq]
    constructor
    · ring
    · constructor <;> ring

lemma cubMul_add_left (x y z : Cub) :
    cubMul (cubAdd x y) z = cubAdd (cubMul x z) (cubMul y z) := by
  rw [cubMul_comm, cubMul_add_right]
  simp only [cubMul_comm z x, cubMul_comm z y]

lemma cubMul_zsmul_right (x : Cub) (z : ℤ) (y : Cub) :
    cubMul x (cubZSMul z y) = cubZSMul z (cubMul x y) := by
  cases x with
  | mk a b c =>
  cases y with
  | mk d e f =>
    simp only [cubMul, cubZSMul]
    rw [Cub.mk.injEq]
    constructor
    · ring
    · constructor <;> ring

lemma cubMul_zsmul_left (z : ℤ) (x y : Cub) :
    cubMul (cubZSMul z x) y = cubZSMul z (cubMul x y) := by
  rw [cubMul_comm, cubMul_zsmul_right, cubMul_comm x y]

lemma cubNorm_eta : cubNorm eta = 60 := by
  norm_num [cubNorm, eta]

lemma cubNorm_alpha (u v : ℤ) : cubNorm (alpha u v) = 4 * u ^ 3 - v ^ 3 := by
  simp only [cubNorm, alpha]
  ring

lemma cubNorm_alpha_nat
    (u v s : ℕ) (hsdef : s = 4 * u ^ 3 - v ^ 3) (hspos : 0 < s) :
    cubNorm (alpha (u : ℤ) (v : ℤ)) = (s : ℤ) := by
  rw [cubNorm_alpha]
  have hv3_le : v ^ 3 ≤ 4 * u ^ 3 := by
    rw [hsdef] at hspos
    omega
  have hcast : ((s : ℕ) : ℤ) = ((4 * u ^ 3 - v ^ 3 : ℕ) : ℤ) := by
    exact_mod_cast hsdef
  rw [Nat.cast_sub hv3_le] at hcast
  norm_num at hcast ⊢
  nlinarith

lemma alpha_decomposition
    (u v D s : ℤ) (h : v = 4 * u - s * D ^ 2) :
    alpha u v = cubSub (cubOfInt (s * D ^ 2)) (cubZSMul u eta) := by
  subst v
  simp only [alpha, cubSub, cubAdd, cubNeg, cubOfInt, cubZSMul, eta]
  ring_nf

lemma cubNorm_unitE : cubNorm unitE = 1 := by
  norm_num [cubNorm, unitE]

lemma cubNorm_unitEInv : cubNorm unitEInv = 1 := by
  norm_num [cubNorm, unitEInv]

lemma unitE_mul_inv : cubMul unitE unitEInv = cubOne := by
  norm_num [cubMul, unitE, unitEInv, cubOne]

lemma unitE_inv_mul : cubMul unitEInv unitE = cubOne := by
  norm_num [cubMul, unitE, unitEInv, cubOne]

lemma unitEPow_one : unitEPow 1 = unitE := by
  norm_num [unitEPow, cubMul, cubOne, unitE]

lemma unitEInvPow_one : unitEInvPow 1 = unitEInv := by
  norm_num [unitEInvPow, cubMul, cubOne, unitEInv]

lemma unitEZPow_zero : unitEZPow 0 = cubOne := by
  rfl

lemma unitEZPow_neg_one : unitEZPow (-1) = unitEInv := by
  rfl

lemma cubRightIter_add (x step : Cub) (m n : ℕ) :
    cubRightIter x step (m + n) = cubRightIter (cubRightIter x step m) step n := by
  induction n with
  | zero =>
      simp [cubRightIter]
  | succ n ih =>
      rw [Nat.add_succ, cubRightIter, ih, cubRightIter]

lemma cubMul_cubRightIter_cubOne (x step : Cub) (n : ℕ) :
    cubMul x (cubRightIter cubOne step n) = cubRightIter x step n := by
  induction n with
  | zero =>
      simp [cubRightIter, cubMul_one]
  | succ n ih =>
      rw [cubRightIter, cubRightIter, ← ih, cubMul_assoc]

lemma unitEPow_add (m n : ℕ) :
    unitEPow (m + n) = cubMul (unitEPow m) (unitEPow n) := by
  induction n with
  | zero =>
      simp [unitEPow, cubMul_one]
  | succ n ih =>
      rw [Nat.add_succ, unitEPow, ih, unitEPow, cubMul_assoc]

lemma unitEInvPow_add (m n : ℕ) :
    unitEInvPow (m + n) = cubMul (unitEInvPow m) (unitEInvPow n) := by
  induction n with
  | zero =>
      simp [unitEInvPow, cubMul_one]
  | succ n ih =>
      rw [Nat.add_succ, unitEInvPow, ih, unitEInvPow, cubMul_assoc]

lemma unitEPow_mul_unitEInvPow (n : ℕ) :
    cubMul (unitEPow n) (unitEInvPow n) = cubOne := by
  induction n with
  | zero =>
      simp [unitEPow, unitEInvPow, cubMul_one]
  | succ n ih =>
      rw [unitEPow, unitEInvPow, cubMul_mul_mul_reorder, ih, unitE_mul_inv, cubOne_mul]

lemma unitEInvPow_mul_unitEPow (n : ℕ) :
    cubMul (unitEInvPow n) (unitEPow n) = cubOne := by
  rw [cubMul_comm, unitEPow_mul_unitEInvPow]

lemma cubMul_unitEZPow_neg (n : ℤ) :
    cubMul (unitEZPow n) (unitEZPow (-n)) = cubOne := by
  cases n with
  | ofNat k =>
      cases k with
      | zero =>
          simp [unitEZPow, unitEPow, cubMul_one]
      | succ k =>
          change cubMul (unitEPow (k + 1)) (unitEInvPow (k + 1)) = cubOne
          exact unitEPow_mul_unitEInvPow (k + 1)
  | negSucc k =>
      change cubMul (unitEInvPow (k + 1)) (unitEPow (k + 1)) = cubOne
      exact unitEInvPow_mul_unitEPow (k + 1)

lemma unitEInvPow_three_mul (q : ℕ) :
    unitEInvPow (3 * q) = cubRightIter cubOne (unitEInvPow 3) q := by
  induction q with
  | zero =>
      norm_num [unitEInvPow, cubRightIter, cubOne]
  | succ q ih =>
      rw [Nat.mul_succ, Nat.add_comm, unitEInvPow_add, ih, cubRightIter]
      rw [cubMul_comm]

lemma unitEInvPow_four_mul (q : ℕ) :
    unitEInvPow (4 * q) = cubRightIter cubOne (unitEInvPow 4) q := by
  induction q with
  | zero =>
      norm_num [unitEInvPow, cubRightIter, cubOne]
  | succ q ih =>
      rw [Nat.mul_succ, Nat.add_comm, unitEInvPow_add, ih, cubRightIter]
      rw [cubMul_comm]

lemma cubNorm_unitEPow (n : ℕ) : cubNorm (unitEPow n) = 1 := by
  induction n with
  | zero =>
      norm_num [unitEPow, cubOne, cubNorm]
  | succ n ih =>
      rw [unitEPow, cubNorm_mul, ih, cubNorm_unitE]
      norm_num

lemma cubNorm_unitEInvPow (n : ℕ) : cubNorm (unitEInvPow n) = 1 := by
  induction n with
  | zero =>
      norm_num [unitEInvPow, cubOne, cubNorm]
  | succ n ih =>
      rw [unitEInvPow, cubNorm_mul, ih, cubNorm_unitEInv]
      norm_num

lemma cubNorm_unitEZPow (n : ℤ) : cubNorm (unitEZPow n) = 1 := by
  cases n with
  | ofNat k =>
      exact cubNorm_unitEPow k
  | negSucc k =>
      exact cubNorm_unitEInvPow (k + 1)

lemma rho_unitEInv : rho unitEInv = (rho unitE)⁻¹ := by
  have hmul := rho_mul unitE unitEInv
  rw [unitE_mul_inv] at hmul
  have hEpos : 0 < rho unitE := lt_trans zero_lt_one rho_unitE_bounds.1
  have hEinv_mul : rho unitE * rho unitEInv = 1 := by
    simpa [rho, cubOne] using hmul.symm
  have hEne : rho unitE ≠ 0 := ne_of_gt hEpos
  apply mul_left_cancel₀ hEne
  rw [hEinv_mul, mul_inv_cancel₀ hEne]

lemma rho_unitEPow (n : ℕ) : rho (unitEPow n) = (rho unitE) ^ n := by
  induction n with
  | zero =>
      norm_num [unitEPow, rho, cubOne]
  | succ n ih =>
      rw [unitEPow, rho_mul, ih]
      rfl

lemma rho_unitEInvPow (n : ℕ) : rho (unitEInvPow n) = (rho unitE) ^ (-(n : ℤ)) := by
  induction n with
  | zero =>
      norm_num [unitEInvPow, rho, cubOne]
  | succ n ih =>
      rw [unitEInvPow, rho_mul, ih, rho_unitEInv]
      have hEne : rho unitE ≠ 0 := ne_of_gt (lt_trans zero_lt_one rho_unitE_bounds.1)
      rw [← zpow_neg_one (rho unitE)]
      rw [← zpow_add₀ hEne]
      congr 1
      omega

lemma rho_unitEZPow (n : ℤ) : rho (unitEZPow n) = (rho unitE) ^ n := by
  cases n with
  | ofNat k =>
      simp [unitEZPow, rho_unitEPow]
  | negSucc k =>
      dsimp [unitEZPow]
      rw [rho_unitEInvPow]
      change (rho unitE ^ (k + 1))⁻¹ =
        (rho unitE) ^ (-(↑(k + 1) : ℤ))
      rw [zpow_neg, zpow_natCast]

lemma cubMul_unitE_formula (x : Cub) :
    cubMul x unitE =
      ⟨5 * x.a + 8 * x.b + 12 * x.c,
        3 * x.a + 5 * x.b + 8 * x.c,
        2 * x.a + 3 * x.b + 5 * x.c⟩ := by
  cases x with
  | mk a b c =>
    dsimp [cubMul, unitE]
    rw [Cub.mk.injEq]
    constructor
    · ring
    · constructor <;> ring

lemma unitEPow_pos_props : ∀ n : ℕ, 0 < n →
    0 < (unitEPow n).a ∧ 0 < (unitEPow n).b ∧ 0 < (unitEPow n).c ∧
      (unitEPow n).c < (unitEPow n).b ∧ (unitEPow n).b < 4 * (unitEPow n).c
  | 0, hn => by omega
  | 1, _hn => by norm_num [unitEPow, cubMul, cubOne, unitE]
  | n + 2, _hn => by
      have hprev : 0 < n + 1 := by omega
      obtain ⟨ha, hb, hc, hcb, hb4c⟩ := unitEPow_pos_props (n + 1) hprev
      rw [unitEPow, cubMul_unitE_formula]
      constructor
      · nlinarith
      · constructor
        · nlinarith
        · constructor
          · nlinarith
          · constructor <;> nlinarith

lemma delta_one_unitEPow_c_pos (n : ℕ) (hn : 0 < n) :
    0 < (cubMul (delta 1) (unitEPow n)).c := by
  obtain ⟨_ha, _hb, hc, _hcb, _hb4c⟩ := unitEPow_pos_props n hn
  dsimp [cubMul, delta]
  nlinarith

lemma delta_three_unitEPow_c_pos (n : ℕ) (hn : 0 < n) :
    0 < (cubMul (delta 3) (unitEPow n)).c := by
  obtain ⟨_ha, hb, hc, hcb, _hb4c⟩ := unitEPow_pos_props n hn
  dsimp [cubMul, delta]
  nlinarith

lemma delta_four_unitEPow_c_pos (n : ℕ) (hn : 0 < n) :
    0 < (cubMul (delta 4) (unitEPow n)).c := by
  obtain ⟨_ha, hb, _hc, _hcb, _hb4c⟩ := unitEPow_pos_props n hn
  dsimp [cubMul, delta]
  nlinarith

lemma delta_five_unitEPow_c_pos (n : ℕ) (hn : 0 < n) :
    0 < (cubMul (delta 5) (unitEPow n)).c := by
  obtain ⟨_ha, hb, hc, _hcb, _hb4c⟩ := unitEPow_pos_props n hn
  dsimp [cubMul, delta]
  nlinarith

lemma delta_sixty_unitEPow_c_pos (n : ℕ) (hn : 0 < n) :
    0 < (cubMul (delta 60) (unitEPow n)).c := by
  obtain ⟨_ha, hb, hc, _hcb, hb4c⟩ := unitEPow_pos_props n hn
  dsimp [cubMul, delta, eta]
  nlinarith

lemma unitEInv_pow_three :
    cubMul (cubMul unitEInv unitEInv) unitEInv =
      cubAdd cubOne (cubZSMul 3 lambda) := by
  norm_num [cubMul, unitEInv, cubAdd, cubOne, cubZSMul, lambda]

lemma unitEInvPow_three :
    unitEInvPow 3 = cubAdd cubOne (cubZSMul 3 lambda) := by
  norm_num [unitEInvPow, cubMul, unitEInv, cubAdd, cubOne, cubZSMul, lambda]

lemma unitEInv_pow_four :
    cubMul (cubMul (cubMul unitEInv unitEInv) unitEInv) unitEInv =
      cubAdd cubOne (cubZSMul 5 mu) := by
  norm_num [cubMul, unitEInv, cubAdd, cubOne, cubZSMul, mu]

lemma unitEInvPow_four :
    unitEInvPow 4 = cubAdd cubOne (cubZSMul 5 mu) := by
  norm_num [unitEInvPow, cubMul, unitEInv, cubAdd, cubOne, cubZSMul, mu]

lemma unitEInvPow_three_ring :
    unitEInvPow 3 = 1 + (3 : Cub) * lambda := by
  rw [unitEInvPow_three]
  change cubAdd cubOne (cubZSMul 3 lambda) = cubOne + cubOfInt (3 : ℤ) * lambda
  norm_num [add_def, mul_def, cubAdd, cubMul, cubZSMul, cubOne, cubOfInt, lambda]

lemma unitEInvPow_four_ring :
    unitEInvPow 4 = 1 + (5 : Cub) * mu := by
  rw [unitEInvPow_four]
  change cubAdd cubOne (cubZSMul 5 mu) = cubOne + cubOfInt (5 : ℤ) * mu
  norm_num [add_def, mul_def, cubAdd, cubMul, cubZSMul, cubOne, cubOfInt, mu]

lemma cubRightIter_eq_mul_pow (x step : Cub) (n : ℕ) :
    cubRightIter x step n = x * step ^ n := by
  induction n with
  | zero =>
      simp [cubRightIter, one_def, mul_def, cubMul_one]
  | succ n ih =>
      calc
        cubRightIter x step (n + 1) = cubMul (x * step ^ n) step := by
          rw [cubRightIter, ih]
        _ = (x * step ^ n) * step := rfl
        _ = x * step ^ (n + 1) := by
          rw [pow_succ, mul_assoc]

lemma cubMul_unitEInvPow_three_mul_eq_ring (B : Cub) (q : ℕ) :
    cubMul B (unitEInvPow (3 * q)) = B * (1 + (3 : Cub) * lambda) ^ q := by
  rw [unitEInvPow_three_mul, cubMul_cubRightIter_cubOne, cubRightIter_eq_mul_pow,
    unitEInvPow_three_ring]

lemma cubMul_unitEInvPow_four_mul_eq_ring (B : Cub) (q : ℕ) :
    cubMul B (unitEInvPow (4 * q)) = B * (1 + (5 : Cub) * mu) ^ q := by
  rw [unitEInvPow_four_mul, cubMul_cubRightIter_cubOne, cubRightIter_eq_mul_pow,
    unitEInvPow_four_ring]

lemma cubMul_unitEInvPow_three_eq_add_lambda (x : Cub) :
    cubMul x (unitEInvPow 3) =
      cubAdd x (cubZSMul 3 (cubMul x lambda)) := by
  rw [unitEInvPow_three, cubMul_add_right, cubMul_one, cubMul_zsmul_right]

lemma cubMul_unitEInvPow_four_eq_add_mu (x : Cub) :
    cubMul x (unitEInvPow 4) =
      cubAdd x (cubZSMul 5 (cubMul x mu)) := by
  rw [unitEInvPow_four, cubMul_add_right, cubMul_one, cubMul_zsmul_right]

lemma cubMul_unitEInvPow_three_c (x : Cub) :
    (cubMul x (unitEInvPow 3)).c = x.c + 3 * (cubMul x lambda).c := by
  rw [cubMul_unitEInvPow_three_eq_add_lambda]
  rfl

lemma cubMul_unitEInvPow_four_c (x : Cub) :
    (cubMul x (unitEInvPow 4)).c = x.c + 5 * (cubMul x mu).c := by
  rw [cubMul_unitEInvPow_four_eq_add_mu]
  rfl

lemma cubRightIter_unitEInvPow_three_succ_c (x : Cub) (q : ℕ) :
    (cubRightIter x (unitEInvPow 3) (q + 1)).c =
      (cubRightIter x (unitEInvPow 3) q).c +
        3 * (cubMul (cubRightIter x (unitEInvPow 3) q) lambda).c := by
  rw [cubRightIter, cubMul_unitEInvPow_three_c]

lemma cubRightIter_unitEInvPow_four_succ_c (x : Cub) (q : ℕ) :
    (cubRightIter x (unitEInvPow 4) (q + 1)).c =
      (cubRightIter x (unitEInvPow 4) q).c +
        5 * (cubMul (cubRightIter x (unitEInvPow 4) q) mu).c := by
  rw [cubRightIter, cubMul_unitEInvPow_four_c]

lemma cubMul_unitEInvPow_three_c_mod (x : Cub) :
    (cubMul x (unitEInvPow 3)).c % 3 = x.c % 3 := by
  cases x with
  | mk a b c =>
    norm_num [unitEInvPow, cubMul, cubOne, unitEInv]
    omega

lemma cubMul_unitEInvPow_four_c_mod (x : Cub) :
    (cubMul x (unitEInvPow 4)).c % 5 = x.c % 5 := by
  cases x with
  | mk a b c =>
    norm_num [unitEInvPow, cubMul, cubOne, unitEInv]
    omega

lemma cubRightIter_unitEInvPow_three_c_mod (x : Cub) (q : ℕ) :
    (cubRightIter x (unitEInvPow 3) q).c % 3 = x.c % 3 := by
  induction q with
  | zero =>
      simp [cubRightIter]
  | succ q ih =>
      rw [cubRightIter, cubMul_unitEInvPow_three_c_mod, ih]

lemma cubRightIter_unitEInvPow_four_c_mod (x : Cub) (q : ℕ) :
    (cubRightIter x (unitEInvPow 4) q).c % 5 = x.c % 5 := by
  induction q with
  | zero =>
      simp [cubRightIter]
  | succ q ih =>
      rw [cubRightIter, cubMul_unitEInvPow_four_c_mod, ih]

lemma cubMul_unitEInvPow_three_mul_c_mod (x : Cub) (q : ℕ) :
    (cubMul x (unitEInvPow (3 * q))).c % 3 = x.c % 3 := by
  rw [unitEInvPow_three_mul, cubMul_cubRightIter_cubOne,
    cubRightIter_unitEInvPow_three_c_mod]

lemma cubMul_unitEInvPow_four_mul_c_mod (x : Cub) (q : ℕ) :
    (cubMul x (unitEInvPow (4 * q))).c % 5 = x.c % 5 := by
  rw [unitEInvPow_four_mul, cubMul_cubRightIter_cubOne,
    cubRightIter_unitEInvPow_four_c_mod]

lemma cubMul_unitEInvPow_mod3_residue_c_mod (x : Cub) (m : ℕ) :
    (cubMul x (unitEInvPow m)).c % 3 =
      (cubMul x (unitEInvPow (m % 3))).c % 3 := by
  have hm : m = m % 3 + 3 * (m / 3) := by
    simpa [Nat.mul_comm] using (Nat.mod_add_div m 3).symm
  calc
    (cubMul x (unitEInvPow m)).c % 3 =
        (cubMul x (unitEInvPow (m % 3 + 3 * (m / 3)))).c % 3 := by
          conv_lhs => rw [hm]
    _ = (cubMul x (unitEInvPow (m % 3))).c % 3 := by
        rw [unitEInvPow_add, ← cubMul_assoc,
          cubMul_unitEInvPow_three_mul_c_mod]

lemma cubMul_unitEInvPow_mod5_residue_c_mod (x : Cub) (m : ℕ) :
    (cubMul x (unitEInvPow m)).c % 5 =
      (cubMul x (unitEInvPow (m % 4))).c % 5 := by
  have hm : m = m % 4 + 4 * (m / 4) := by
    simpa [Nat.mul_comm] using (Nat.mod_add_div m 4).symm
  calc
    (cubMul x (unitEInvPow m)).c % 5 =
        (cubMul x (unitEInvPow (m % 4 + 4 * (m / 4)))).c % 5 := by
          conv_lhs => rw [hm]
    _ = (cubMul x (unitEInvPow (m % 4))).c % 5 := by
        rw [unitEInvPow_add, ← cubMul_assoc,
          cubMul_unitEInvPow_four_mul_c_mod]

lemma cubMul_unitEInv_eq (x : Cub) :
    cubMul x unitEInv =
      ⟨x.a - 4 * x.b + 4 * x.c, x.a + x.b - 4 * x.c, -x.a + x.b + x.c⟩ := by
  cases x with
  | mk a b c =>
    dsimp [cubMul, unitEInv]
    rw [Cub.mk.injEq]
    constructor
    · ring
    · constructor <;> ring

lemma unitEInv_cCoeff_recurrence (x : Cub) :
    (cubMul (cubMul (cubMul x unitEInv) unitEInv) unitEInv).c =
      3 * (cubMul (cubMul x unitEInv) unitEInv).c -
        15 * (cubMul x unitEInv).c + x.c := by
  cases x with
  | mk a b c =>
    dsimp [cubMul, unitEInv]
    ring

lemma norm_one_box
    (a b c : ℤ)
    (ha0 : 0 ≤ a) (ha1 : a ≤ 5)
    (hb0 : 0 ≤ b) (hb1 : b ≤ 4)
    (hc0 : 0 ≤ c) (hc1 : c ≤ 2)
    (hN : cubNorm ⟨a, b, c⟩ = 1) :
    (⟨a, b, c⟩ : Cub) = cubOne ∨ (⟨a, b, c⟩ : Cub) = unitE := by
  interval_cases a <;> interval_cases b <;> interval_cases c
  all_goals norm_num [cubNorm] at hN
  all_goals norm_num [cubOne, unitE]

lemma norm_one_eq_unitEZPow (x : Cub) (hN : cubNorm x = 1) :
    ∃ n : ℤ, x = unitEZPow n := by
  have hEgt : 1 < rho unitE := rho_unitE_bounds.1
  have hrho_pos : 0 < rho x := rho_pos_of_norm_one x hN
  obtain ⟨k, hklo, hkhi⟩ := exists_int_pow_scale hEgt hrho_pos
  set gamma : Cub := cubMul x (unitEZPow k) with hgamma
  have hNgamma : cubNorm gamma = 1 := by
    rw [hgamma, cubNorm_mul, hN, cubNorm_unitEZPow]
    norm_num
  have hrhogamma : rho gamma = rho x * (rho unitE) ^ k := by
    rw [hgamma, rho_mul, rho_unitEZPow]
  have hbounds :=
    reduced_coord_bounds gamma hNgamma
      (by simpa [hrhogamma] using hklo)
      (by simpa [hrhogamma] using hkhi)
  have hbox : gamma = cubOne ∨ gamma = unitE := by
    rcases gamma with ⟨a, b, c⟩
    exact norm_one_box a b c hbounds.1 hbounds.2.1 hbounds.2.2.1
      hbounds.2.2.2.1 hbounds.2.2.2.2.1 hbounds.2.2.2.2.2 hNgamma
  rcases hbox with hone | hunit
  · rw [hgamma] at hone
    refine ⟨-k, ?_⟩
    calc
      x = cubMul x cubOne := (cubMul_one x).symm
      _ = cubMul x (cubMul (unitEZPow k) (unitEZPow (-k))) := by
          rw [cubMul_unitEZPow_neg]
      _ = cubMul (cubMul x (unitEZPow k)) (unitEZPow (-k)) := by
          rw [cubMul_assoc]
      _ = cubMul cubOne (unitEZPow (-k)) := by rw [hone]
      _ = unitEZPow (-k) := cubOne_mul _
  · rw [hgamma] at hunit
    have hrho_eq : rho x * (rho unitE) ^ k = rho unitE := by
      have h := congrArg rho hunit
      simpa [rho_mul, rho_unitEZPow] using h
    have hlt : rho unitE < rho unitE := by
      calc
        rho unitE = rho x * (rho unitE) ^ k := hrho_eq.symm
        _ < rho unitE := hkhi
    exact (lt_irrefl (rho unitE) hlt).elim

lemma cubNorm_delta_one : cubNorm (delta 1) = 1 := by
  norm_num [delta, cubNorm]

lemma cubNorm_delta_three : cubNorm (delta 3) = 3 := by
  norm_num [delta, cubNorm]

lemma cubNorm_delta_four : cubNorm (delta 4) = 4 := by
  norm_num [delta, cubNorm]

lemma cubNorm_delta_five : cubNorm (delta 5) = 5 := by
  norm_num [delta, cubNorm]

lemma cubNorm_delta_sixty : cubNorm (delta 60) = 60 := by
  norm_num [delta, cubNorm, eta]

lemma zeroCoeff_initial_s1 :
    (delta 1).c = 0 ∧ (cubMul (delta 1) unitEInv).c = -1 ∧
      (cubMul (cubMul (delta 1) unitEInv) unitEInv).c = -1 := by
  norm_num [delta, cubMul, unitEInv]

lemma zeroCoeff_initial_s1_pow :
    (cubMul (delta 1) (unitEInvPow 0)).c = 0 ∧
      (cubMul (delta 1) (unitEInvPow 1)).c = -1 ∧
      (cubMul (delta 1) (unitEInvPow 2)).c = -1 := by
  norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv]

lemma zeroCoeff_initial_s3 :
    (delta 3).c = 0 ∧ (cubMul (delta 3) unitEInv).c = 2 ∧
      (cubMul (cubMul (delta 3) unitEInv) unitEInv).c = 7 := by
  norm_num [delta, cubMul, unitEInv]

lemma zeroCoeff_initial_s3_pow :
    (cubMul (delta 3) (unitEInvPow 0)).c = 0 ∧
      (cubMul (delta 3) (unitEInvPow 1)).c = 2 ∧
      (cubMul (delta 3) (unitEInvPow 2)).c = 7 ∧
      (cubMul (delta 3) (unitEInvPow 3)).c = -9 := by
  norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv]

lemma zeroCoeff_initial_s4 :
    (delta 4).c = 0 ∧ (cubMul (delta 4) unitEInv).c = 1 ∧
      (cubMul (cubMul (delta 4) unitEInv) unitEInv).c = 6 := by
  norm_num [delta, cubMul, unitEInv]

lemma zeroCoeff_initial_s4_pow :
    (cubMul (delta 4) (unitEInvPow 0)).c = 0 ∧
      (cubMul (delta 4) (unitEInvPow 1)).c = 1 ∧
      (cubMul (delta 4) (unitEInvPow 2)).c = 6 ∧
      (cubMul (delta 4) (unitEInvPow 3)).c = 3 := by
  norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv]

lemma zeroCoeff_initial_s5 :
    (delta 5).c = 0 ∧ (cubMul (delta 5) unitEInv).c = 0 ∧
      (cubMul (cubMul (delta 5) unitEInv) unitEInv).c = 5 := by
  norm_num [delta, cubMul, unitEInv]

lemma delta_five_unitEInv :
    cubMul (delta 5) unitEInv = ⟨-3, 2, 0⟩ := by
  norm_num [delta, cubMul, unitEInv]

lemma zeroCoeff_initial_s5_pow :
    (cubMul (delta 5) (unitEInvPow 0)).c = 0 ∧
      (cubMul (delta 5) (unitEInvPow 1)).c = 0 ∧
      (cubMul (delta 5) (unitEInvPow 2)).c = 5 := by
  norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv]

lemma zeroCoeff_initial_s60 :
    (delta 60).c = 0 ∧ (cubMul (delta 60) unitEInv).c = -5 ∧
      (cubMul (cubMul (delta 60) unitEInv) unitEInv).c = -10 := by
  norm_num [delta, cubMul, unitEInv, eta]

lemma zeroCoeff_initial_s60_pow :
    (cubMul (delta 60) (unitEInvPow 0)).c = 0 ∧
      (cubMul (delta 60) (unitEInvPow 1)).c = -5 ∧
      (cubMul (delta 60) (unitEInvPow 2)).c = -10 := by
  norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv, eta]

lemma delta_one_unitEInvPow_c_zero_mod3_forces
    (m : ℕ) (hzero : (cubMul (delta 1) (unitEInvPow m)).c = 0) :
    m % 3 = 0 := by
  have hmod := cubMul_unitEInvPow_mod3_residue_c_mod (delta 1) m
  have hzero_mod : (cubMul (delta 1) (unitEInvPow m)).c % 3 = 0 := by
    rw [hzero]
    norm_num
  rw [hmod] at hzero_mod
  generalize hr : m % 3 = r
  rw [hr] at hzero_mod
  have hrlt : r < 3 := by
    rw [← hr]
    exact Nat.mod_lt m (by norm_num)
  interval_cases r
  · rfl
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv] at hzero_mod
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv] at hzero_mod

lemma delta_three_unitEInvPow_c_zero_mod5_forces
    (m : ℕ) (hzero : (cubMul (delta 3) (unitEInvPow m)).c = 0) :
    m % 4 = 0 := by
  have hmod := cubMul_unitEInvPow_mod5_residue_c_mod (delta 3) m
  have hzero_mod : (cubMul (delta 3) (unitEInvPow m)).c % 5 = 0 := by
    rw [hzero]
    norm_num
  rw [hmod] at hzero_mod
  generalize hr : m % 4 = r
  rw [hr] at hzero_mod
  have hrlt : r < 4 := by
    rw [← hr]
    exact Nat.mod_lt m (by norm_num)
  interval_cases r
  · rfl
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv] at hzero_mod
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv] at hzero_mod
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv] at hzero_mod

lemma delta_four_unitEInvPow_c_zero_mod5_forces
    (m : ℕ) (hzero : (cubMul (delta 4) (unitEInvPow m)).c = 0) :
    m % 4 = 0 := by
  have hmod := cubMul_unitEInvPow_mod5_residue_c_mod (delta 4) m
  have hzero_mod : (cubMul (delta 4) (unitEInvPow m)).c % 5 = 0 := by
    rw [hzero]
    norm_num
  rw [hmod] at hzero_mod
  generalize hr : m % 4 = r
  rw [hr] at hzero_mod
  have hrlt : r < 4 := by
    rw [← hr]
    exact Nat.mod_lt m (by norm_num)
  interval_cases r
  · rfl
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv] at hzero_mod
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv] at hzero_mod
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv] at hzero_mod

lemma delta_five_unitEInvPow_c_zero_mod3_forces
    (m : ℕ) (hzero : (cubMul (delta 5) (unitEInvPow m)).c = 0) :
    m % 3 = 0 ∨ m % 3 = 1 := by
  have hmod := cubMul_unitEInvPow_mod3_residue_c_mod (delta 5) m
  have hzero_mod : (cubMul (delta 5) (unitEInvPow m)).c % 3 = 0 := by
    rw [hzero]
    norm_num
  rw [hmod] at hzero_mod
  generalize hr : m % 3 = r
  rw [hr] at hzero_mod
  have hrlt : r < 3 := by
    rw [← hr]
    exact Nat.mod_lt m (by norm_num)
  interval_cases r
  · exact Or.inl rfl
  · exact Or.inr rfl
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv] at hzero_mod

lemma delta_sixty_unitEInvPow_c_zero_mod3_forces
    (m : ℕ) (hzero : (cubMul (delta 60) (unitEInvPow m)).c = 0) :
    m % 3 = 0 := by
  have hmod := cubMul_unitEInvPow_mod3_residue_c_mod (delta 60) m
  have hzero_mod : (cubMul (delta 60) (unitEInvPow m)).c % 3 = 0 := by
    rw [hzero]
    norm_num
  rw [hmod] at hzero_mod
  generalize hr : m % 3 = r
  rw [hr] at hzero_mod
  have hrlt : r < 3 := by
    rw [← hr]
    exact Nat.mod_lt m (by norm_num)
  interval_cases r
  · rfl
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv, eta] at hzero_mod
  · norm_num [unitEInvPow, delta, cubMul, cubOne, unitEInv, eta] at hzero_mod

lemma delta_one_lambda_c : (cubMul (delta 1) lambda).c = 4 := by
  norm_num [cubMul, delta, lambda]

lemma delta_one_lambda :
    cubMul (delta 1) lambda = ⟨-12, 1, 4⟩ := by
  norm_num [cubMul, delta, lambda]

lemma delta_three_mu_c : (cubMul (delta 3) mu).c = -26 := by
  norm_num [cubMul, delta, mu]

lemma delta_three_mu :
    cubMul (delta 3) mu = ⟨40, 16, -26⟩ := by
  norm_num [cubMul, delta, mu]

lemma delta_four_mu_c : (cubMul (delta 4) mu).c = -16 := by
  norm_num [cubMul, delta, mu]

lemma delta_four_mu :
    cubMul (delta 4) mu = ⟨40, 0, -16⟩ := by
  norm_num [cubMul, delta, mu]

lemma delta_five_lambda_c : (cubMul (delta 5) lambda).c = 5 := by
  norm_num [cubMul, delta, lambda]

lemma delta_five_lambda :
    cubMul (delta 5) lambda = ⟨4, -11, 5⟩ := by
  norm_num [cubMul, delta, lambda]

lemma delta_five_unitEInv_lambda_c :
    (cubMul (cubMul (delta 5) unitEInv) lambda).c = -10 := by
  norm_num [cubMul, delta, unitEInv, lambda]

lemma delta_five_unitEInv_lambda :
    cubMul (cubMul (delta 5) unitEInv) lambda = ⟨68, -27, -10⟩ := by
  norm_num [cubMul, delta, unitEInv, lambda]

lemma delta_one_unitEInvPow_three_mul_c_ne_zero (q : ℕ) (hq : 0 < q) :
    (cubMul (delta 1) (unitEInvPow (3 * q))).c ≠ 0 := by
  haveI : Fact (Nat.Prime 3) := ⟨by norm_num⟩
  have hne := first_order_lifting_ne_zero (p := 3) (q := q)
    (by norm_num) hq (delta 1) lambda
    (by norm_num [delta])
    (by norm_num [mul_def, cubMul, delta, lambda])
  rw [cubMul_unitEInvPow_three_mul_eq_ring]
  exact hne

lemma delta_three_unitEInvPow_four_mul_c_ne_zero (q : ℕ) (hq : 0 < q) :
    (cubMul (delta 3) (unitEInvPow (4 * q))).c ≠ 0 := by
  haveI : Fact (Nat.Prime 5) := ⟨by norm_num⟩
  have hne := first_order_lifting_ne_zero (p := 5) (q := q)
    (by norm_num) hq (delta 3) mu
    (by norm_num [delta])
    (by norm_num [mul_def, cubMul, delta, mu])
  rw [cubMul_unitEInvPow_four_mul_eq_ring]
  exact hne

lemma delta_four_unitEInvPow_four_mul_c_ne_zero (q : ℕ) (hq : 0 < q) :
    (cubMul (delta 4) (unitEInvPow (4 * q))).c ≠ 0 := by
  haveI : Fact (Nat.Prime 5) := ⟨by norm_num⟩
  have hne := first_order_lifting_ne_zero (p := 5) (q := q)
    (by norm_num) hq (delta 4) mu
    (by norm_num [delta])
    (by norm_num [mul_def, cubMul, delta, mu])
  rw [cubMul_unitEInvPow_four_mul_eq_ring]
  exact hne

lemma delta_five_unitEInvPow_three_mul_c_ne_zero (q : ℕ) (hq : 0 < q) :
    (cubMul (delta 5) (unitEInvPow (3 * q))).c ≠ 0 := by
  haveI : Fact (Nat.Prime 3) := ⟨by norm_num⟩
  have hne := first_order_lifting_ne_zero (p := 3) (q := q)
    (by norm_num) hq (delta 5) lambda
    (by norm_num [delta])
    (by norm_num [mul_def, cubMul, delta, lambda])
  rw [cubMul_unitEInvPow_three_mul_eq_ring]
  exact hne

lemma delta_five_unitEInv_unitEInvPow_three_mul_c_ne_zero (q : ℕ) (hq : 0 < q) :
    (cubMul (cubMul (delta 5) unitEInv) (unitEInvPow (3 * q))).c ≠ 0 := by
  haveI : Fact (Nat.Prime 3) := ⟨by norm_num⟩
  have hne := first_order_lifting_ne_zero (p := 3) (q := q)
    (by norm_num) hq (cubMul (delta 5) unitEInv) lambda
    (by norm_num [cubMul, delta, unitEInv])
    (by norm_num [mul_def, cubMul, delta, unitEInv, lambda])
  rw [cubMul_unitEInvPow_three_mul_eq_ring]
  exact hne

lemma delta_sixty_lambda_c : (cubMul (delta 60) lambda).c = 15 := by
  norm_num [cubMul, delta, lambda, eta]

lemma delta_sixty_lambda :
    cubMul (delta 60) lambda = ⟨-64, 16, 15⟩ := by
  norm_num [cubMul, delta, lambda, eta]

lemma delta_sixty_lambda_mod3_shape :
    let x := cubMul (delta 60) lambda
    x.c % 3 = 0 ∧ (x.a + x.b) % 3 = 0 := by
  norm_num [cubMul, delta, lambda, eta]

lemma lambda_preserves_mod3_shape
    (x : Cub) (hc : x.c % 3 = 0) (hab : (x.a + x.b) % 3 = 0) :
    let y := cubMul x lambda
    y.c % 3 = 0 ∧ (y.a + y.b) % 3 = 0 := by
  cases x with
  | mk a b c =>
    dsimp [cubMul, lambda] at hc hab ⊢
    constructor <;> omega

lemma delta_sixty_lambda_iter_mod3_shape (n : ℕ) :
    let x := cubRightIter (cubMul (delta 60) lambda) lambda n
    x.c % 3 = 0 ∧ (x.a + x.b) % 3 = 0 := by
  induction n with
  | zero =>
      exact delta_sixty_lambda_mod3_shape
  | succ n ih =>
      dsimp [cubRightIter]
      exact lambda_preserves_mod3_shape
        (cubRightIter (cubMul (delta 60) lambda) lambda n) ih.1 ih.2

lemma cubMul_pow_succ_eq_rightIter (x step : Cub) (n : ℕ) :
    cubMul x (step ^ (n + 1)) = cubRightIter (cubMul x step) step n := by
  rw [cubRightIter_eq_mul_pow]
  change x * step ^ (n + 1) = (x * step) * step ^ n
  rw [pow_succ]
  ring

lemma delta_sixty_lambda_pow_c_dvd_three (m : ℕ) (hm : 1 ≤ m) :
    (3 : ℤ) ∣ (delta 60 * lambda ^ m).c := by
  obtain ⟨n, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : m ≠ 0)
  change (3 : ℤ) ∣ (cubMul (delta 60) (lambda ^ (n + 1))).c
  have hshape := delta_sixty_lambda_iter_mod3_shape n
  have hmod : (cubRightIter (cubMul (delta 60) lambda) lambda n).c % 3 = 0 := hshape.1
  rw [cubMul_pow_succ_eq_rightIter]
  exact Int.dvd_iff_emod_eq_zero.mpr hmod

lemma second_order_lifting_modEq_delta_sixty
    {q r : ℕ} (hqpos : 0 < q) (hr : r = padicValNat 3 q) :
    (delta 60 * (1 + (3 : Cub) * lambda) ^ q).c ≡
      (q : ℤ) * (3 : ℤ) * (delta 60 * lambda).c [ZMOD (3 : ℤ) ^ (r + 3)] := by
  classical
  haveI : Fact (Nat.Prime 3) := ⟨by norm_num⟩
  let f : ℕ → ℤ := fun m =>
    ((q.choose m : ℤ) * (3 : ℤ) ^ m) * (delta 60 * lambda ^ m).c
  let g : ℕ → ℤ := fun m =>
    if m = 1 then (q : ℤ) * (3 : ℤ) * (delta 60 * lambda).c else 0
  have hsum : (delta 60 * (1 + (3 : Cub) * lambda) ^ q).c =
      ∑ m ∈ Finset.range (q + 1), f m := by
    dsimp [f]
    calc
      (delta 60 * (1 + (3 : Cub) * lambda) ^ q).c =
          (delta 60 * (((3 : Cub) * lambda + 1) ^ q)).c := by
            ring_nf
      _ = (delta 60 * (∑ m ∈ Finset.range (q + 1),
            ((3 : Cub) * lambda) ^ m * (q.choose m : Cub))).c := by
            have hadd := add_pow ((3 : Cub) * lambda) (1 : Cub) q
            simp only [one_pow, mul_one] at hadd
            rw [hadd]
      _ = (∑ m ∈ Finset.range (q + 1),
            delta 60 * (((3 : Cub) * lambda) ^ m * (q.choose m : Cub))).c := by
            rw [Finset.mul_sum]
      _ = ∑ m ∈ Finset.range (q + 1),
            (delta 60 * (((3 : Cub) * lambda) ^ m * (q.choose m : Cub))).c := by
            rw [finset_sum_c]
      _ = ∑ m ∈ Finset.range (q + 1),
            ((q.choose m : ℤ) * (3 : ℤ) ^ m) * (delta 60 * lambda ^ m).c := by
            apply Finset.sum_congr rfl
            intro m _hm
            exact binomial_term_c_eq 3 q m (delta 60) lambda
  have hterm : ∀ m ∈ Finset.range (q + 1), f m ≡ g m [ZMOD (3 : ℤ) ^ (r + 3)] := by
    intro m hm
    have hmle : m ≤ q := by
      have : m < q + 1 := Finset.mem_range.mp hm
      omega
    by_cases hm0 : m = 0
    · subst m
      dsimp [f, g]
      change (cubMul (delta 60) (1 : Cub)).c ≡ 0 [ZMOD (3 : ℤ) ^ (r + 3)]
      rw [one_def, cubMul_one]
      norm_num [delta, eta]
    · by_cases hm1 : m = 1
      · subst m
        dsimp [f, g]
        simp [Nat.choose_one_right, pow_one, mul_assoc]
      · have hm2 : 2 ≤ m := by omega
        dsimp [f, g]
        rw [if_neg hm1]
        apply (Int.modEq_zero_iff_dvd).2
        have hdvd_nat := binom_lift_dvd (p := 3) (q := q) (j := m) (r := r)
          (by norm_num) hqpos hr hm2 hmle
        obtain ⟨k, hk⟩ := hdvd_nat
        have hcoord := delta_sixty_lambda_pow_c_dvd_three m (by omega)
        obtain ⟨l, hl⟩ := hcoord
        use (k : ℤ) * l
        have hkz : ((q.choose m * 3 ^ m : ℕ) : ℤ) =
            ((3 ^ (r + 2) : ℕ) : ℤ) * (k : ℤ) := by
          exact_mod_cast hk
        have hpow : (3 : ℤ) ^ (r + 3) = (3 : ℤ) ^ (r + 2) * 3 := by
          rw [show r + 3 = (r + 2) + 1 by omega, pow_succ]
        calc
          ((q.choose m : ℤ) * (3 : ℤ) ^ m) * (delta 60 * lambda ^ m).c =
              ((q.choose m * 3 ^ m : ℕ) : ℤ) * (delta 60 * lambda ^ m).c := by
                norm_num [Nat.cast_mul, Nat.cast_pow]
          _ = (((3 ^ (r + 2) : ℕ) : ℤ) * (k : ℤ)) * (3 * l) := by
                rw [hkz, hl]
          _ = (3 : ℤ) ^ (r + 3) * ((k : ℤ) * l) := by
                rw [hpow]
                norm_num [Nat.cast_pow]
                ring
  have hsum_mod := Int.ModEq.sum hterm
  rw [← hsum] at hsum_mod
  have hgsum : ∑ m ∈ Finset.range (q + 1), g m =
      (q : ℤ) * (3 : ℤ) * (delta 60 * lambda).c := by
    dsimp [g]
    apply Finset.sum_eq_single 1
    · intro b _hb hbne
      simp [hbne]
    · intro hnot
      have : 1 ∈ Finset.range (q + 1) := by
        rw [Finset.mem_range]
        omega
      exact (hnot this).elim
  rwa [hgsum] at hsum_mod

lemma delta_sixty_unitEInvPow_three_mul_c_ne_zero (q : ℕ) (hq : 0 < q) :
    (cubMul (delta 60) (unitEInvPow (3 * q))).c ≠ 0 := by
  haveI : Fact (Nat.Prime 3) := ⟨by norm_num⟩
  intro hzero
  let r := padicValNat 3 q
  have hmod := second_order_lifting_modEq_delta_sixty (q := q) (r := r) hq rfl
  have hzero_ring : (delta 60 * (1 + (3 : Cub) * lambda) ^ q).c = 0 := by
    rwa [← cubMul_unitEInvPow_three_mul_eq_ring (delta 60) q]
  rw [hzero_ring] at hmod
  have hlin_dvd :
      (3 : ℤ) ^ (r + 3) ∣ (q : ℤ) * (3 : ℤ) * (delta 60 * lambda).c := by
    simpa using Int.ModEq.dvd hmod
  have hpne : (3 : ℕ) ≠ 1 := by norm_num
  have hqz : (q : ℤ) ≠ 0 := by exact_mod_cast (ne_of_gt hq)
  have h3z : (3 : ℤ) ≠ 0 := by norm_num
  have ht_ne : (delta 60 * lambda).c ≠ 0 := by
    norm_num [mul_def, cubMul, delta, eta, lambda]
  have hq3_ne : (q : ℤ) * (3 : ℤ) ≠ 0 := mul_ne_zero hqz h3z
  have hprod_ne : (q : ℤ) * (3 : ℤ) * (delta 60 * lambda).c ≠ 0 :=
    mul_ne_zero hq3_ne ht_ne
  have hval_ge :
      r + 3 ≤ padicValInt 3 ((q : ℤ) * (3 : ℤ) * (delta 60 * lambda).c) := by
    have hiff := padicValInt_dvd_iff_of_ne_one hpne (r + 3)
      ((q : ℤ) * (3 : ℤ) * (delta 60 * lambda).c)
    have hzero_or := hiff.mp hlin_dvd
    rcases hzero_or with hprod_zero | hge
    · exact (hprod_ne hprod_zero).elim
    · exact hge
  have hq_val : padicValInt 3 (q : ℤ) = r := by
    dsimp [r]
    exact padicValInt.of_nat
  have h3_val : padicValInt 3 (3 : ℤ) = 1 := by
    simpa using (padicValInt_self (p := 3))
  have ht_val : padicValInt 3 (delta 60 * lambda).c = 1 := by
    change padicValInt 3 ((3 : ℤ) * 5) = 1
    rw [padicValInt.mul (by norm_num : (3 : ℤ) ≠ 0) (by norm_num : (5 : ℤ) ≠ 0)]
    rw [h3_val]
    have h5 : padicValInt 3 (5 : ℤ) = 0 :=
      padicValInt.eq_zero_of_not_dvd (by norm_num)
    rw [h5]
  have hval_eq :
      padicValInt 3 ((q : ℤ) * (3 : ℤ) * (delta 60 * lambda).c) = r + 2 := by
    rw [padicValInt.mul hq3_ne ht_ne, padicValInt.mul hqz h3z]
    rw [hq_val, h3_val, ht_val]
  rw [hval_eq] at hval_ge
  omega

lemma delta_one_mul_c (x : Cub) : (cubMul (delta 1) x).c = x.c := by
  cases x
  norm_num [cubMul, delta]

lemma delta_three_mul_c (x : Cub) : (cubMul (delta 3) x).c = x.b - x.c := by
  cases x
  dsimp [cubMul, delta]
  ring

lemma delta_four_mul_c (x : Cub) : (cubMul (delta 4) x).c = x.b := by
  cases x
  norm_num [cubMul, delta]

lemma delta_five_mul_c (x : Cub) : (cubMul (delta 5) x).c = x.b + x.c := by
  cases x
  dsimp [cubMul, delta]
  ring

lemma delta_sixty_mul_c (x : Cub) : (cubMul (delta 60) x).c = 4 * x.c - x.b := by
  cases x
  dsimp [cubMul, delta, eta]
  ring

lemma delta_one_unitEInvPow_c_ne_zero (m : ℕ) (hm : 0 < m) :
    (cubMul (delta 1) (unitEInvPow m)).c ≠ 0 := by
  intro hzero
  have hmod := delta_one_unitEInvPow_c_zero_mod3_forces m hzero
  let q := m / 3
  have hm_eq : m = 3 * q := by
    dsimp [q]
    have h := (Nat.mod_add_div m 3).symm
    rw [hmod] at h
    omega
  have hq : 0 < q := by
    omega
  have hne := delta_one_unitEInvPow_three_mul_c_ne_zero q hq
  exact hne (by simpa [hm_eq] using hzero)

lemma delta_three_unitEInvPow_c_ne_zero (m : ℕ) (hm : 0 < m) :
    (cubMul (delta 3) (unitEInvPow m)).c ≠ 0 := by
  intro hzero
  have hmod := delta_three_unitEInvPow_c_zero_mod5_forces m hzero
  let q := m / 4
  have hm_eq : m = 4 * q := by
    dsimp [q]
    have h := (Nat.mod_add_div m 4).symm
    rw [hmod] at h
    omega
  have hq : 0 < q := by
    omega
  have hne := delta_three_unitEInvPow_four_mul_c_ne_zero q hq
  exact hne (by simpa [hm_eq] using hzero)

lemma delta_four_unitEInvPow_c_ne_zero (m : ℕ) (hm : 0 < m) :
    (cubMul (delta 4) (unitEInvPow m)).c ≠ 0 := by
  intro hzero
  have hmod := delta_four_unitEInvPow_c_zero_mod5_forces m hzero
  let q := m / 4
  have hm_eq : m = 4 * q := by
    dsimp [q]
    have h := (Nat.mod_add_div m 4).symm
    rw [hmod] at h
    omega
  have hq : 0 < q := by
    omega
  have hne := delta_four_unitEInvPow_four_mul_c_ne_zero q hq
  exact hne (by simpa [hm_eq] using hzero)

lemma delta_five_unitEInvPow_one_add_three_mul (q : ℕ) :
    cubMul (delta 5) (unitEInvPow (1 + 3 * q)) =
      cubMul (cubMul (delta 5) unitEInv) (unitEInvPow (3 * q)) := by
  rw [unitEInvPow_add, unitEInvPow_one, cubMul_assoc]

lemma delta_five_unitEInvPow_c_zero_pos_forces_one
    (m : ℕ) (hm : 0 < m)
    (hzero : (cubMul (delta 5) (unitEInvPow m)).c = 0) :
    m = 1 := by
  have hcases := delta_five_unitEInvPow_c_zero_mod3_forces m hzero
  let q := m / 3
  rcases hcases with hmod0 | hmod1
  · have hm_eq : m = 3 * q := by
      dsimp [q]
      have h := (Nat.mod_add_div m 3).symm
      rw [hmod0] at h
      omega
    have hq : 0 < q := by omega
    have hne := delta_five_unitEInvPow_three_mul_c_ne_zero q hq
    exact (hne (by simpa [hm_eq] using hzero)).elim
  · have hm_eq : m = 1 + 3 * q := by
      dsimp [q]
      have h := (Nat.mod_add_div m 3).symm
      rw [hmod1] at h
      omega
    by_cases hq0 : q = 0
    · omega
    · have hq : 0 < q := by omega
      have hne := delta_five_unitEInv_unitEInvPow_three_mul_c_ne_zero q hq
      have hzero' :
          (cubMul (cubMul (delta 5) unitEInv) (unitEInvPow (3 * q))).c = 0 := by
        rw [← delta_five_unitEInvPow_one_add_three_mul q]
        simpa [hm_eq] using hzero
      exact (hne hzero').elim

lemma delta_sixty_unitEInvPow_c_ne_zero (m : ℕ) (hm : 0 < m) :
    (cubMul (delta 60) (unitEInvPow m)).c ≠ 0 := by
  intro hzero
  have hmod := delta_sixty_unitEInvPow_c_zero_mod3_forces m hzero
  let q := m / 3
  have hm_eq : m = 3 * q := by
    dsimp [q]
    have h := (Nat.mod_add_div m 3).symm
    rw [hmod] at h
    omega
  have hq : 0 < q := by
    omega
  have hne := delta_sixty_unitEInvPow_three_mul_c_ne_zero q hq
  exact hne (by simpa [hm_eq] using hzero)

lemma unitEZPow_c_eq_zero_iff (n : ℤ) :
    (unitEZPow n).c = 0 ↔ n = 0 := by
  constructor
  · intro h
    cases n with
    | ofNat k =>
        cases k with
        | zero => rfl
        | succ k =>
            have hcpos : 0 < (unitEPow (k + 1)).c := by
              obtain ⟨_ha, _hb, hc, _hcb, _hb4c⟩ :=
                unitEPow_pos_props (k + 1) (by omega)
              exact hc
            change (unitEPow (k + 1)).c = 0 at h
            omega
    | negSucc k =>
        have hm : 0 < k + 1 := by omega
        have hzero_delta : (cubMul (delta 1) (unitEInvPow (k + 1))).c = 0 := by
          rw [delta_one_mul_c]
          change (unitEInvPow (k + 1)).c = 0 at h
          exact h
        exact (delta_one_unitEInvPow_c_ne_zero (k + 1) hm hzero_delta).elim
  · intro hn
    subst n
    simp [unitEZPow_zero, cubOne]

lemma unitEZPow_b_eq_c_iff (n : ℤ) :
    (unitEZPow n).b = (unitEZPow n).c ↔ n = 0 := by
  constructor
  · intro h
    cases n with
    | ofNat k =>
        cases k with
        | zero => rfl
        | succ k =>
            obtain ⟨_ha, _hb, _hc, hcb, _hb4c⟩ :=
              unitEPow_pos_props (k + 1) (by omega)
            change (unitEPow (k + 1)).b = (unitEPow (k + 1)).c at h
            omega
    | negSucc k =>
        have hm : 0 < k + 1 := by omega
        have hzero_delta : (cubMul (delta 3) (unitEInvPow (k + 1))).c = 0 := by
          rw [delta_three_mul_c]
          change (unitEInvPow (k + 1)).b = (unitEInvPow (k + 1)).c at h
          omega
        exact (delta_three_unitEInvPow_c_ne_zero (k + 1) hm hzero_delta).elim
  · intro hn
    subst n
    simp [unitEZPow_zero, cubOne]

lemma unitEZPow_b_eq_zero_iff (n : ℤ) :
    (unitEZPow n).b = 0 ↔ n = 0 := by
  constructor
  · intro h
    cases n with
    | ofNat k =>
        cases k with
        | zero => rfl
        | succ k =>
            obtain ⟨_ha, hb, _hc, _hcb, _hb4c⟩ :=
              unitEPow_pos_props (k + 1) (by omega)
            change (unitEPow (k + 1)).b = 0 at h
            omega
    | negSucc k =>
        have hm : 0 < k + 1 := by omega
        have hzero_delta : (cubMul (delta 4) (unitEInvPow (k + 1))).c = 0 := by
          rw [delta_four_mul_c]
          change (unitEInvPow (k + 1)).b = 0 at h
          exact h
        exact (delta_four_unitEInvPow_c_ne_zero (k + 1) hm hzero_delta).elim
  · intro hn
    subst n
    simp [unitEZPow_zero, cubOne]

lemma unitEZPow_b_add_c_eq_zero_iff (n : ℤ) :
    (unitEZPow n).b + (unitEZPow n).c = 0 ↔ n = 0 ∨ n = -1 := by
  constructor
  · intro h
    cases n with
    | ofNat k =>
        cases k with
        | zero => exact Or.inl rfl
        | succ k =>
            obtain ⟨_ha, hb, hc, _hcb, _hb4c⟩ :=
              unitEPow_pos_props (k + 1) (by omega)
            change (unitEPow (k + 1)).b + (unitEPow (k + 1)).c = 0 at h
            omega
    | negSucc k =>
        have hm : 0 < k + 1 := by omega
        have hzero_delta : (cubMul (delta 5) (unitEInvPow (k + 1))).c = 0 := by
          rw [delta_five_mul_c]
          change (unitEInvPow (k + 1)).b + (unitEInvPow (k + 1)).c = 0 at h
          exact h
        have hm1 := delta_five_unitEInvPow_c_zero_pos_forces_one
          (k + 1) hm hzero_delta
        have hk0 : k = 0 := by omega
        subst k
        exact Or.inr rfl
  · intro hn
    rcases hn with hn | hn
    · subst n
      simp [unitEZPow_zero, cubOne]
    · subst n
      simp [unitEZPow_neg_one, unitEInv]

lemma unitEZPow_b_eq_four_c_iff (n : ℤ) :
    (unitEZPow n).b = 4 * (unitEZPow n).c ↔ n = 0 := by
  constructor
  · intro h
    cases n with
    | ofNat k =>
        cases k with
        | zero => rfl
        | succ k =>
            obtain ⟨_ha, _hb, _hc, _hcb, hb4c⟩ :=
              unitEPow_pos_props (k + 1) (by omega)
            change (unitEPow (k + 1)).b = 4 * (unitEPow (k + 1)).c at h
            omega
    | negSucc k =>
        have hm : 0 < k + 1 := by omega
        have hzero_delta : (cubMul (delta 60) (unitEInvPow (k + 1))).c = 0 := by
          rw [delta_sixty_mul_c]
          change (unitEInvPow (k + 1)).b = 4 * (unitEInvPow (k + 1)).c at h
          omega
        exact (delta_sixty_unitEInvPow_c_ne_zero (k + 1) hm hzero_delta).elim
  · intro hn
    subst n
    simp [unitEZPow_zero, cubOne]

lemma unitEZPow_coordinate_facts (n : ℤ) :
    ((unitEZPow n).c = 0 ↔ n = 0) ∧
    ((unitEZPow n).b = (unitEZPow n).c ↔ n = 0) ∧
    ((unitEZPow n).b = 0 ↔ n = 0) ∧
    ((unitEZPow n).b + (unitEZPow n).c = 0 ↔ n = 0 ∨ n = -1) ∧
    ((unitEZPow n).b = 4 * (unitEZPow n).c ↔ n = 0) := by
  exact ⟨unitEZPow_c_eq_zero_iff n, unitEZPow_b_eq_c_iff n,
    unitEZPow_b_eq_zero_iff n, unitEZPow_b_add_c_eq_zero_iff n,
    unitEZPow_b_eq_four_c_iff n⟩

lemma delta_one_mul_betaS1 (e t : ℤ) :
    cubMul (delta 1) (betaS1 e t) = alpha t (4 * t - e) := by
  dsimp [cubMul, delta, betaS1, alpha]
  rw [Cub.mk.injEq]
  constructor
  · ring_nf
  · constructor <;> ring_nf

lemma delta_three_mul_betaS3 (e t : ℤ) :
    cubMul (delta 3) (betaS3 e t) = alpha (e + t) (e + 4 * t) := by
  dsimp [cubMul, delta, betaS3, alpha]
  rw [Cub.mk.injEq]
  constructor
  · ring_nf
  · constructor <;> ring_nf

lemma delta_four_mul_betaS4 (e t : ℤ) :
    cubMul (delta 4) (betaS4 e t) = alpha (e + t) (4 * t) := by
  dsimp [cubMul, delta, betaS4, alpha]
  rw [Cub.mk.injEq]
  constructor
  · ring_nf
  · constructor <;> ring_nf

lemma delta_five_mul_betaS5Low (e t : ℤ) :
    cubMul (delta 5) (betaS5Low e t) = alpha (e + t) (4 * t - e) := by
  dsimp [cubMul, delta, betaS5Low, alpha]
  rw [Cub.mk.injEq]
  constructor
  · ring_nf
  · constructor <;> ring_nf

lemma delta_five_mul_betaS5High (e t : ℤ) :
    cubMul (delta 5) (betaS5High e t) = alpha (2 * e + t) (3 * e + 4 * t) := by
  dsimp [cubMul, delta, betaS5High, alpha]
  rw [Cub.mk.injEq]
  constructor
  · ring_nf
  · constructor <;> ring_nf

lemma delta_sixty_mul_betaS60 (e t : ℤ) :
    cubMul (delta 60) (betaS60 e t) = alpha (24 * e + t) (36 * e + 4 * t) := by
  dsimp [cubMul, delta, betaS60, alpha, eta]
  rw [Cub.mk.injEq]
  constructor
  · ring_nf
  · constructor <;> ring_nf

lemma cubNorm_betaS1 (e t : ℤ) :
    cubNorm (betaS1 e t) = e ^ 3 - 12 * e ^ 2 * t + 48 * e * t ^ 2 - 60 * t ^ 3 := by
  simp only [cubNorm, betaS1]
  ring

lemma cubNorm_betaS3 (e t : ℤ) :
    cubNorm (betaS3 e t) = e ^ 3 - 12 * e * t ^ 2 - 20 * t ^ 3 := by
  simp only [cubNorm, betaS3]
  ring

lemma cubNorm_betaS4 (e t : ℤ) :
    cubNorm (betaS4 e t) = e ^ 3 + 3 * e ^ 2 * t + 3 * e * t ^ 2 - 15 * t ^ 3 := by
  simp only [cubNorm, betaS4]
  ring

lemma cubNorm_betaS5Low (e t : ℤ) :
    cubNorm (betaS5Low e t) = e ^ 3 + 12 * e * t ^ 2 - 12 * t ^ 3 := by
  simp only [cubNorm, betaS5Low]
  ring

lemma cubNorm_betaS5High (e t : ℤ) :
    cubNorm (betaS5High e t) =
      e ^ 3 - 12 * e ^ 2 * t - 24 * e * t ^ 2 - 12 * t ^ 3 := by
  simp only [cubNorm, betaS5High]
  ring

lemma cubNorm_betaS60 (e t : ℤ) :
    cubNorm (betaS60 e t) =
      144 * e ^ 3 - 144 * e ^ 2 * t - 24 * e * t ^ 2 - t ^ 3 := by
  simp only [cubNorm, betaS60]
  ring

lemma hard_s1_of_unit_classification
    (hunit : ∀ x : Cub, cubNorm x = 1 → ∃ n : ℤ, x = unitEZPow n)
    (hcoord_c_zero : ∀ n : ℤ, (unitEZPow n).c = 0 ↔ n = 0)
    (u v D : ℕ)
    (hu : 0 < u) (hDpos : 0 < D)
    (hsdef : 1 = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * 1 = 4 * u - v) :
    False := by
  have hkey := key_integral_identity u v D 1 60 hDpos (by norm_num) hsdef hD (by norm_num)
  have hN : cubNorm (betaS1 ((D : ℤ) ^ 2) (u : ℤ)) = 1 := by
    rw [cubNorm_betaS1]
    norm_num at hkey ⊢
    ring_nf at hkey ⊢
    exact hkey
  obtain ⟨n, hn⟩ := hunit _ hN
  have hc : (unitEZPow n).c = 0 := by
    rw [← hn]
    simp [betaS1]
  have hn0 : n = 0 := (hcoord_c_zero n).mp hc
  subst n
  have hbeta : betaS1 ((D : ℤ) ^ 2) (u : ℤ) = cubOne := by
    simpa [unitEZPow_zero] using hn
  have hb := congrArg Cub.b hbeta
  have hu0 : (u : ℤ) = 0 := by
    simpa [betaS1, cubOne] using hb
  have hune : (u : ℤ) ≠ 0 := by
    exact_mod_cast (ne_of_gt hu)
  exact hune hu0

lemma hard_s3_of_unit_classification
    (hunit : ∀ x : Cub, cubNorm x = 1 → ∃ n : ℤ, x = unitEZPow n)
    (hcoord_b_eq_c : ∀ n : ℤ, (unitEZPow n).b = (unitEZPow n).c ↔ n = 0)
    (u v D : ℕ)
    (hDpos : 0 < D) (huv : u < v)
    (hsdef : 3 = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * 3 = 4 * u - v)
    (hq : u / D ^ 2 = 1) :
    False := by
  let e := D ^ 2
  let t := u % e
  have hepos : 0 < e := by dsimp [e]; positivity
  have hu_eq_nat : u = e + t := by
    have hdivmod : u = (u / e) * e + t := by
      dsimp [t]
      simpa [Nat.mul_comm] using (Nat.div_add_mod u e).symm
    have hq_e : u / e = 1 := by simpa [e] using hq
    simpa [hq_e, one_mul] using hdivmod
  have hsum_eq : D ^ 2 * 3 + v = 4 * u := by omega
  have htpos : 0 < t := by
    rw [hu_eq_nat] at hsum_eq huv
    dsimp [e] at hsum_eq huv
    nlinarith [show 0 < D ^ 2 by positivity]
  have hkey := key_integral_identity u v D 3 20 hDpos (by norm_num) hsdef hD (by norm_num)
  have hu_eq_int : (u : ℤ) = (D : ℤ) ^ 2 + (t : ℤ) := by
    have hcast : (u : ℤ) = (e : ℤ) + (t : ℤ) := by exact_mod_cast hu_eq_nat
    simpa [e, Nat.cast_pow] using hcast
  have hN : cubNorm (betaS3 ((D : ℤ) ^ 2) (t : ℤ)) = 1 := by
    rw [cubNorm_betaS3]
    rw [hu_eq_int] at hkey
    norm_num at hkey ⊢
    ring_nf at hkey ⊢
    exact hkey
  obtain ⟨n, hn⟩ := hunit _ hN
  have hbceq : (unitEZPow n).b = (unitEZPow n).c := by
    rw [← hn]
    simp [betaS3]
  have hn0 : n = 0 := (hcoord_b_eq_c n).mp hbceq
  subst n
  have hbeta : betaS3 ((D : ℤ) ^ 2) (t : ℤ) = cubOne := by
    simpa [unitEZPow_zero] using hn
  have hc := congrArg Cub.c hbeta
  have ht0 : (t : ℤ) = 0 := by
    simpa [betaS3, cubOne] using hc
  have htne : (t : ℤ) ≠ 0 := by
    exact_mod_cast (ne_of_gt htpos)
  exact htne ht0

lemma hard_s4_of_unit_classification
    (hunit : ∀ x : Cub, cubNorm x = 1 → ∃ n : ℤ, x = unitEZPow n)
    (hcoord_b_zero : ∀ n : ℤ, (unitEZPow n).b = 0 ↔ n = 0)
    (u v D : ℕ)
    (hDpos : 0 < D) (huv : u < v)
    (hsdef : 4 = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * 4 = 4 * u - v)
    (hq : u / D ^ 2 = 1) :
    False := by
  let e := D ^ 2
  let t := u % e
  have hepos : 0 < e := by dsimp [e]; positivity
  have hu_eq_nat : u = e + t := by
    have hdivmod : u = (u / e) * e + t := by
      dsimp [t]
      simpa [Nat.mul_comm] using (Nat.div_add_mod u e).symm
    have hq_e : u / e = 1 := by simpa [e] using hq
    simpa [hq_e, one_mul] using hdivmod
  have hsum_eq : D ^ 2 * 4 + v = 4 * u := by omega
  have htpos : 0 < t := by
    rw [hu_eq_nat] at hsum_eq huv
    dsimp [e] at hsum_eq huv
    nlinarith [show 0 < D ^ 2 by positivity]
  have hkey := key_integral_identity u v D 4 15 hDpos (by norm_num) hsdef hD (by norm_num)
  have hu_eq_int : (u : ℤ) = (D : ℤ) ^ 2 + (t : ℤ) := by
    have hcast : (u : ℤ) = (e : ℤ) + (t : ℤ) := by exact_mod_cast hu_eq_nat
    simpa [e, Nat.cast_pow] using hcast
  have hN : cubNorm (betaS4 ((D : ℤ) ^ 2) (t : ℤ)) = 1 := by
    rw [cubNorm_betaS4]
    rw [hu_eq_int] at hkey
    norm_num at hkey ⊢
    ring_nf at hkey ⊢
    exact hkey
  obtain ⟨n, hn⟩ := hunit _ hN
  have hbzero : (unitEZPow n).b = 0 := by
    rw [← hn]
    simp [betaS4]
  have hn0 : n = 0 := (hcoord_b_zero n).mp hbzero
  subst n
  have hbeta : betaS4 ((D : ℤ) ^ 2) (t : ℤ) = cubOne := by
    simpa [unitEZPow_zero] using hn
  have hc := congrArg Cub.c hbeta
  have ht0 : (t : ℤ) = 0 := by
    simpa [betaS4, cubOne] using hc
  have htne : (t : ℤ) ≠ 0 := by
    exact_mod_cast (ne_of_gt htpos)
  exact htne ht0

lemma hard_s5_high_of_unit_classification
    (hunit : ∀ x : Cub, cubNorm x = 1 → ∃ n : ℤ, x = unitEZPow n)
    (hcoord_b_add_c :
      ∀ n : ℤ, (unitEZPow n).b + (unitEZPow n).c = 0 ↔ n = 0 ∨ n = -1)
    (u v D : ℕ)
    (hDpos : 0 < D)
    (hsdef : 5 = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * 5 = 4 * u - v)
    (hq : u / D ^ 2 = 2) :
    u = 2 ∧ v = 3 ∧ D = 1 := by
  let e := D ^ 2
  let t := u % e
  have hepos : 0 < e := by dsimp [e]; positivity
  have hu_eq_nat : u = 2 * e + t := by
    have hdivmod : u = (u / e) * e + t := by
      dsimp [t]
      simpa [Nat.mul_comm] using (Nat.div_add_mod u e).symm
    have hq_e : u / e = 2 := by simpa [e] using hq
    simpa [hq_e] using hdivmod
  have hkey := key_integral_identity u v D 5 12 hDpos (by norm_num) hsdef hD (by norm_num)
  have hu_eq_int : (u : ℤ) = 2 * (D : ℤ) ^ 2 + (t : ℤ) := by
    have hcast : (u : ℤ) = 2 * (e : ℤ) + (t : ℤ) := by exact_mod_cast hu_eq_nat
    simpa [e, Nat.cast_pow] using hcast
  have hN : cubNorm (betaS5High ((D : ℤ) ^ 2) (t : ℤ)) = 1 := by
    rw [cubNorm_betaS5High]
    rw [hu_eq_int] at hkey
    norm_num at hkey ⊢
    ring_nf at hkey ⊢
    exact hkey
  obtain ⟨n, hn⟩ := hunit _ hN
  have hbczero : (unitEZPow n).b + (unitEZPow n).c = 0 := by
    rw [← hn]
    simp [betaS5High]
  have hn_cases : n = 0 ∨ n = -1 := (hcoord_b_add_c n).mp hbczero
  rcases hn_cases with hn0 | hnneg
  · subst n
    have hbeta : betaS5High ((D : ℤ) ^ 2) (t : ℤ) = cubOne := by
      simpa [unitEZPow_zero] using hn
    have hb := congrArg Cub.b hbeta
    have hbad : (D : ℤ) ^ 2 + (t : ℤ) = 0 := by
      simpa [betaS5High, cubOne] using hb
    have hDsq_pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
    have ht_nonneg : (0 : ℤ) ≤ (t : ℤ) := by positivity
    nlinarith
  · subst n
    have hbeta : betaS5High ((D : ℤ) ^ 2) (t : ℤ) = unitEInv := by
      simpa [unitEZPow_neg_one] using hn
    have ha := congrArg Cub.a hbeta
    have hb := congrArg Cub.b hbeta
    have hDsq_z : (D : ℤ) ^ 2 = 1 := by
      simpa [betaS5High, unitEInv] using ha
    have ht0_z : (t : ℤ) = 0 := by
      have hb' : (D : ℤ) ^ 2 + (t : ℤ) = 1 := by
        simpa [betaS5High, unitEInv] using hb
      nlinarith
    have hDsq_nat : D ^ 2 = 1 := by
      exact_mod_cast hDsq_z
    have hDle : D ≤ 1 := by nlinarith
    have hD1 : D = 1 := by omega
    have ht0 : t = 0 := by
      exact_mod_cast ht0_z
    have he1 : e = 1 := by
      dsimp [e]
      rw [hD1]
      norm_num
    have hu2 : u = 2 := by
      simpa [he1, ht0] using hu_eq_nat
    have hv3 : v = 3 := by
      rw [hu2, hD1] at hD
      norm_num at hD
      omega
    exact ⟨hu2, hv3, hD1⟩

lemma hard_s60_of_unit_classification
    (hunit : ∀ x : Cub, cubNorm x = 1 → ∃ n : ℤ, x = unitEZPow n)
    (hcoord_b_eq_four_c :
      ∀ n : ℤ, (unitEZPow n).b = 4 * (unitEZPow n).c ↔ n = 0)
    (u v D : ℕ)
    (hDpos : 0 < D)
    (hsdef : 60 = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * 60 = 4 * u - v)
    (hq : u / D ^ 2 = 24) :
    False := by
  let e := D ^ 2
  let t := u % e
  have hepos : 0 < e := by dsimp [e]; positivity
  have hu_eq_nat : u = 24 * e + t := by
    have hdivmod : u = (u / e) * e + t := by
      dsimp [t]
      simpa [Nat.mul_comm] using (Nat.div_add_mod u e).symm
    have hq_e : u / e = 24 := by simpa [e] using hq
    simpa [hq_e] using hdivmod
  have hkey := key_integral_identity u v D 60 1 hDpos (by norm_num) hsdef hD (by norm_num)
  have hu_eq_int : (u : ℤ) = 24 * (D : ℤ) ^ 2 + (t : ℤ) := by
    have hcast : (u : ℤ) = 24 * (e : ℤ) + (t : ℤ) := by exact_mod_cast hu_eq_nat
    simpa [e, Nat.cast_pow] using hcast
  have hN : cubNorm (betaS60 ((D : ℤ) ^ 2) (t : ℤ)) = 1 := by
    rw [cubNorm_betaS60]
    rw [hu_eq_int] at hkey
    norm_num at hkey ⊢
    ring_nf at hkey ⊢
    exact hkey
  obtain ⟨n, hn⟩ := hunit _ hN
  have hb4c : (unitEZPow n).b = 4 * (unitEZPow n).c := by
    rw [← hn]
    simp [betaS60]
  have hn0 : n = 0 := (hcoord_b_eq_four_c n).mp hb4c
  subst n
  have hbeta : betaS60 ((D : ℤ) ^ 2) (t : ℤ) = cubOne := by
    simpa [unitEZPow_zero] using hn
  have hc := congrArg Cub.c hbeta
  have hDsq0 : (D : ℤ) ^ 2 = 0 := by
    simpa [betaS60, cubOne] using hc
  have hDsq_pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  nlinarith

lemma hard_cases_of_unit_classification
    (hunit : ∀ x : Cub, cubNorm x = 1 → ∃ n : ℤ, x = unitEZPow n)
    (hcoord : ∀ n : ℤ,
      ((unitEZPow n).c = 0 ↔ n = 0) ∧
      ((unitEZPow n).b = (unitEZPow n).c ↔ n = 0) ∧
      ((unitEZPow n).b = 0 ↔ n = 0) ∧
      ((unitEZPow n).b + (unitEZPow n).c = 0 ↔ n = 0 ∨ n = -1) ∧
      ((unitEZPow n).b = 4 * (unitEZPow n).c ↔ n = 0))
    (u v D s : ℕ)
    (hu : 0 < u) (hDpos : 0 < D) (hspos : 0 < s)
    (huv : u < v) (hv2u : v < 2 * u)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v)
    (hs_hard : s = 1 ∨ s = 3 ∨ s = 4 ∨ s = 5 ∨ s = 60) :
    (u, v, D, s) = (2, 3, 1, 5) := by
  have hcoord_c_zero :
      ∀ n : ℤ, (unitEZPow n).c = 0 ↔ n = 0 := fun n => (hcoord n).1
  have hcoord_b_eq_c :
      ∀ n : ℤ, (unitEZPow n).b = (unitEZPow n).c ↔ n = 0 := fun n =>
    (hcoord n).2.1
  have hcoord_b_zero :
      ∀ n : ℤ, (unitEZPow n).b = 0 ↔ n = 0 := fun n =>
    (hcoord n).2.2.1
  have hcoord_b_add_c :
      ∀ n : ℤ, (unitEZPow n).b + (unitEZPow n).c = 0 ↔ n = 0 ∨ n = -1 := fun n =>
    (hcoord n).2.2.2.1
  have hcoord_b_eq_four_c :
      ∀ n : ℤ, (unitEZPow n).b = 4 * (unitEZPow n).c ↔ n = 0 := fun n =>
    (hcoord n).2.2.2.2
  have hhard :=
    hard_defect_reduced_cases u v D s hDpos hspos huv hv2u hsdef hD hs_hard
  rcases hhard with h1 | h3 | h4 | h5 | h60
  · rcases h1 with ⟨rfl, _hq⟩
    exact (hard_s1_of_unit_classification hunit hcoord_c_zero u v D
      hu hDpos hsdef hD).elim
  · rcases h3 with ⟨rfl, hq⟩
    exact (hard_s3_of_unit_classification hunit hcoord_b_eq_c u v D
      hDpos huv hsdef hD hq).elim
  · rcases h4 with ⟨rfl, hq⟩
    exact (hard_s4_of_unit_classification hunit hcoord_b_zero u v D
      hDpos huv hsdef hD hq).elim
  · rcases h5 with ⟨rfl, hq⟩
    obtain ⟨hu2, hv3, hD1⟩ :=
      hard_s5_high_of_unit_classification hunit hcoord_b_add_c u v D
        hDpos hsdef hD hq
    subst u
    subst v
    subst D
    rfl
  · rcases h60 with ⟨rfl, hq⟩
    exact (hard_s60_of_unit_classification hunit hcoord_b_eq_four_c u v D
      hDpos hsdef hD hq).elim

end Cub

end CubicOrder

lemma no_substituted_of_no_residue
    (M s : ℕ) (hM : 0 < M)
    (hcert : ∀ ur dr : Fin M,
      (4 * ((ur : ℕ) : ℤ) ^ 3 -
          (4 * ((ur : ℕ) : ℤ) - (s : ℤ) * ((dr : ℕ) : ℤ) ^ 2) ^ 3 -
        (s : ℤ)) % (M : ℤ) ≠ 0)
    (u D : ℕ)
    (h : 4 * (u : ℤ) ^ 3 - (4 * (u : ℤ) - (s : ℤ) * (D : ℤ) ^ 2) ^ 3 =
      (s : ℤ)) :
    False := by
  let ur : ℤ := ((u % M : ℕ) : ℤ)
  let dr : ℤ := ((D % M : ℕ) : ℤ)
  have hu : (u : ℤ) ≡ ur [ZMOD (M : ℤ)] := by
    dsimp [ur]
    exact (Int.mod_modEq (u : ℤ) (M : ℤ)).symm
  have hD : (D : ℤ) ≡ dr [ZMOD (M : ℤ)] := by
    dsimp [dr]
    exact (Int.mod_modEq (D : ℤ) (M : ℤ)).symm
  have hinner :
      4 * (u : ℤ) - (s : ℤ) * (D : ℤ) ^ 2 ≡
        4 * ur - (s : ℤ) * dr ^ 2 [ZMOD (M : ℤ)] := by
    exact ((Int.ModEq.refl (n := (M : ℤ)) (4 : ℤ)).mul hu).sub
      ((Int.ModEq.refl (n := (M : ℤ)) (s : ℤ)).mul (hD.pow 2))
  have hpoly :
      4 * (u : ℤ) ^ 3 - (4 * (u : ℤ) - (s : ℤ) * (D : ℤ) ^ 2) ^ 3 -
          (s : ℤ) ≡
        4 * ur ^ 3 - (4 * ur - (s : ℤ) * dr ^ 2) ^ 3 -
          (s : ℤ) [ZMOD (M : ℤ)] := by
    exact (((Int.ModEq.refl (n := (M : ℤ)) (4 : ℤ)).mul (hu.pow 3)).sub
      (hinner.pow 3)).sub (Int.ModEq.refl (n := (M : ℤ)) (s : ℤ))
  have hzero :
      (4 * (u : ℤ) ^ 3 - (4 * (u : ℤ) - (s : ℤ) * (D : ℤ) ^ 2) ^ 3 -
          (s : ℤ)) % (M : ℤ) = 0 := by
    have hz :
        4 * (u : ℤ) ^ 3 - (4 * (u : ℤ) - (s : ℤ) * (D : ℤ) ^ 2) ^ 3 -
            (s : ℤ) = 0 := by
      omega
    rw [hz]
    simp
  have hreszero :
      (4 * ur ^ 3 - (4 * ur - (s : ℤ) * dr ^ 2) ^ 3 - (s : ℤ)) %
          (M : ℤ) = 0 := by
    exact hpoly ▸ hzero
  have hc := hcert ⟨u % M, Nat.mod_lt u hM⟩ ⟨D % M, Nat.mod_lt D hM⟩
  exact hc (by simpa [ur, dr] using hreszero)

lemma no_residue_s2_mod4 :
    ∀ ur dr : Fin 4,
      (4 * ((ur : ℕ) : ℤ) ^ 3 -
          (4 * ((ur : ℕ) : ℤ) - (2 : ℤ) * ((dr : ℕ) : ℤ) ^ 2) ^ 3 -
        (2 : ℤ)) % (4 : ℤ) ≠ 0 := by
  decide

lemma no_residue_s6_mod4 :
    ∀ ur dr : Fin 4,
      (4 * ((ur : ℕ) : ℤ) ^ 3 -
          (4 * ((ur : ℕ) : ℤ) - (6 : ℤ) * ((dr : ℕ) : ℤ) ^ 2) ^ 3 -
        (6 : ℤ)) % (4 : ℤ) ≠ 0 := by
  decide

lemma no_residue_s10_mod4 :
    ∀ ur dr : Fin 4,
      (4 * ((ur : ℕ) : ℤ) ^ 3 -
          (4 * ((ur : ℕ) : ℤ) - (10 : ℤ) * ((dr : ℕ) : ℤ) ^ 2) ^ 3 -
        (10 : ℤ)) % (4 : ℤ) ≠ 0 := by
  decide

lemma no_residue_s12_mod27 :
    ∀ ur dr : Fin 27,
      (4 * ((ur : ℕ) : ℤ) ^ 3 -
          (4 * ((ur : ℕ) : ℤ) - (12 : ℤ) * ((dr : ℕ) : ℤ) ^ 2) ^ 3 -
        (12 : ℤ)) % (27 : ℤ) ≠ 0 := by
  decide

lemma no_residue_s15_mod27 :
    ∀ ur dr : Fin 27,
      (4 * ((ur : ℕ) : ℤ) ^ 3 -
          (4 * ((ur : ℕ) : ℤ) - (15 : ℤ) * ((dr : ℕ) : ℤ) ^ 2) ^ 3 -
        (15 : ℤ)) % (27 : ℤ) ≠ 0 := by
  decide

lemma no_residue_s20_mod9 :
    ∀ ur dr : Fin 9,
      (4 * ((ur : ℕ) : ℤ) ^ 3 -
          (4 * ((ur : ℕ) : ℤ) - (20 : ℤ) * ((dr : ℕ) : ℤ) ^ 2) ^ 3 -
        (20 : ℤ)) % (9 : ℤ) ≠ 0 := by
  decide

lemma no_residue_s30_mod4 :
    ∀ ur dr : Fin 4,
      (4 * ((ur : ℕ) : ℤ) ^ 3 -
          (4 * ((ur : ℕ) : ℤ) - (30 : ℤ) * ((dr : ℕ) : ℤ) ^ 2) ^ 3 -
        (30 : ℤ)) % (4 : ℤ) ≠ 0 := by
  decide

lemma divisor_sixty_cases_aux :
    ∀ s : Fin 61,
      0 < (s : ℕ) →
      (s : ℕ) ∣ 60 →
      (s : ℕ) = 1 ∨ (s : ℕ) = 2 ∨ (s : ℕ) = 3 ∨ (s : ℕ) = 4 ∨
      (s : ℕ) = 5 ∨ (s : ℕ) = 6 ∨ (s : ℕ) = 10 ∨ (s : ℕ) = 12 ∨
      (s : ℕ) = 15 ∨ (s : ℕ) = 20 ∨ (s : ℕ) = 30 ∨ (s : ℕ) = 60 := by
  decide

lemma divisor_sixty_cases (s : ℕ) (hspos : 0 < s) (hs60 : s ∣ 60) :
    s = 1 ∨ s = 2 ∨ s = 3 ∨ s = 4 ∨ s = 5 ∨ s = 6 ∨ s = 10 ∨ s = 12 ∨
      s = 15 ∨ s = 20 ∨ s = 30 ∨ s = 60 := by
  have hsle : s ≤ 60 := Nat.le_of_dvd (by norm_num) hs60
  exact divisor_sixty_cases_aux ⟨s, by omega⟩ hspos hs60

lemma modular_defect_exclusion
    (u v D s : ℕ) (hDpos : 0 < D) (hspos : 0 < s)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v)
    (hs_easy :
      s = 2 ∨ s = 6 ∨ s = 10 ∨ s = 12 ∨ s = 15 ∨ s = 20 ∨ s = 30) :
    False := by
  have hsubst := substituted_int_eq u v D s hDpos hspos hsdef hD
  rcases hs_easy with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact no_substituted_of_no_residue 4 2 (by norm_num) no_residue_s2_mod4 u D hsubst
  · exact no_substituted_of_no_residue 4 6 (by norm_num) no_residue_s6_mod4 u D hsubst
  · exact no_substituted_of_no_residue 4 10 (by norm_num) no_residue_s10_mod4 u D hsubst
  · exact no_substituted_of_no_residue 27 12 (by norm_num) no_residue_s12_mod27 u D hsubst
  · exact no_substituted_of_no_residue 27 15 (by norm_num) no_residue_s15_mod27 u D hsubst
  · exact no_substituted_of_no_residue 9 20 (by norm_num) no_residue_s20_mod9 u D hsubst
  · exact no_substituted_of_no_residue 4 30 (by norm_num) no_residue_s30_mod4 u D hsubst

lemma coprime_s_u
    (u v s : ℕ)
    (hcop : Nat.Coprime u v)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hspos : 0 < s) :
    Nat.Coprime s u := by
  refine Nat.coprime_of_dvd' ?_
  intro p hp hps hpu
  have hv3_le : v ^ 3 ≤ 4 * u ^ 3 := by
    by_contra hle
    rw [hsdef] at hspos
    omega
  have hs_add : s + v ^ 3 = 4 * u ^ 3 := by
    rw [hsdef]
    omega
  have hp_u3 : p ∣ u ^ 3 := by
    rw [show u ^ 3 = u * u ^ 2 by ring]
    exact dvd_mul_of_dvd_left hpu _
  have hp_4u3 : p ∣ 4 * u ^ 3 := dvd_mul_of_dvd_right hp_u3 4
  have hp_sum : p ∣ s + v ^ 3 := by rwa [hs_add]
  have hp_v3 : p ∣ v ^ 3 := (Nat.dvd_add_right hps).mp hp_sum
  have hp_v : p ∣ v := hp.dvd_of_dvd_pow hp_v3
  have hp_coprime_v : Nat.Coprime p v := hcop.coprime_dvd_left hpu
  exact hp_coprime_v.dvd_of_dvd_mul_right (by simpa using hp_v)

lemma scaled_nat_eq
    (D u v : ℕ) (hDpos : 0 < D) (hu : 0 < u) (hv2u : v < 2 * u)
    (hscaled_int : ((D : ℤ) ^ 2) * (4 * (u : ℤ) ^ 3 - (v : ℤ) ^ 3) =
      4 * (u : ℤ) - (v : ℤ)) :
    let s := 4 * u ^ 3 - v ^ 3
    0 < s ∧ D ^ 2 * s = 4 * u - v := by
  intro s
  have hv_lt_4u : v < 4 * u := by nlinarith
  have hv_le_4u : v ≤ 4 * u := le_of_lt hv_lt_4u
  have hrhs_pos_int : (0 : ℤ) < 4 * (u : ℤ) - (v : ℤ) := by
    omega
  have hDsq_pos : (0 : ℤ) < (D : ℤ) ^ 2 := by positivity
  have hterm_pos_int : (0 : ℤ) < 4 * (u : ℤ) ^ 3 - (v : ℤ) ^ 3 := by
    nlinarith
  have hv3_lt_int : (v : ℤ) ^ 3 < 4 * (u : ℤ) ^ 3 := by
    nlinarith
  have hv3_lt : v ^ 3 < 4 * u ^ 3 := by
    exact_mod_cast hv3_lt_int
  have hv3_le : v ^ 3 ≤ 4 * u ^ 3 := le_of_lt hv3_lt
  have hspos : 0 < s := by
    dsimp [s]
    omega
  refine ⟨hspos, ?_⟩
  apply Nat.cast_injective (R := ℤ)
  dsimp [s]
  rw [Nat.cast_sub hv3_le, Nat.cast_sub hv_le_4u]
  simpa [Nat.cast_pow] using hscaled_int

/--
Conditional Lemma T. Easy defect values are excluded by finite residue checks;
the hard defect values are handled by the cubic-order unit classification.
-/
theorem lemmaT_conditional
    (u v D s : ℕ)
    (hu : 0 < u) (_hv : 0 < v) (hDpos : 0 < D) (hspos : 0 < s)
    (_hcop : Nat.Coprime u v)
    (huv : u < v) (hv2u : v < 2 * u)
    (hsdef : s = 4 * u ^ 3 - v ^ 3)
    (hD : D ^ 2 * s = 4 * u - v)
    (hs60 : s ∣ 60) :
    (u, v, D, s) = (2, 3, 1, 5) := by
  have hs_cases :
      s = 1 ∨ s = 2 ∨ s = 3 ∨ s = 4 ∨ s = 5 ∨ s = 6 ∨ s = 10 ∨ s = 12 ∨
        s = 15 ∨ s = 20 ∨ s = 30 ∨ s = 60 := by
    exact divisor_sixty_cases s hspos hs60
  have hs_easy_or_hard :
      (s = 2 ∨ s = 6 ∨ s = 10 ∨ s = 12 ∨ s = 15 ∨ s = 20 ∨ s = 30) ∨
        (s = 1 ∨ s = 3 ∨ s = 4 ∨ s = 5 ∨ s = 60) := by
    rcases hs_cases with h1 | h2 | h3 | h4 | h5 | h6 | h10 | h12 | h15 | h20 | h30 | h60
    · exact Or.inr (Or.inl h1)
    · exact Or.inl (Or.inl h2)
    · exact Or.inr (Or.inr (Or.inl h3))
    · exact Or.inr (Or.inr (Or.inr (Or.inl h4)))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h5))))
    · exact Or.inl (Or.inr (Or.inl h6))
    · exact Or.inl (Or.inr (Or.inr (Or.inl h10)))
    · exact Or.inl (Or.inr (Or.inr (Or.inr (Or.inl h12))))
    · exact Or.inl (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h15)))))
    · exact Or.inl (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h20))))))
    · exact Or.inl (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr h30))))))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr h60))))
  rcases hs_easy_or_hard with hs_easy | hs_hard
  · exact (modular_defect_exclusion u v D s hDpos hspos hsdef hD hs_easy).elim
  exact CubicOrder.Cub.hard_cases_of_unit_classification
    CubicOrder.Cub.norm_one_eq_unitEZPow
    CubicOrder.Cub.unitEZPow_coordinate_facts
    u v D s hu hDpos hspos huv hv2u hsdef hD hs_hard

/--
Arithmetic reduction from a solution of the cleared $k=3$, $N=4$
equation to the primitive Lemma T data. This carries out the substitution
$x=n+2$, $y=m+2$, normalizes by $D=\gcd(x,y)$, and proves the primitive
conditions needed by Lemma T.
-/
theorem primitive_reduction_to_LemmaT
    (n m : ℕ)
    (hm : m ≥ n + 3)
    (heq : (m + 1) * (m + 2) * (m + 3) = 4 * ((n + 1) * (n + 2) * (n + 3))) :
    ∃ u v D s : ℕ,
      0 < u ∧ 0 < v ∧ 0 < D ∧ 0 < s ∧
      Nat.Coprime u v ∧
      u < v ∧ v < 2 * u ∧
      s = 4 * u ^ 3 - v ^ 3 ∧
      D ^ 2 * s = 4 * u - v ∧
      Nat.Coprime s u ∧
      D * u = n + 2 ∧
      D * v = m + 2 := by
  let x := n + 2
  let y := m + 2
  have hx : 0 < x := by dsimp [x]; omega
  have hy : 0 < y := by dsimp [y]; omega
  have hxy3 : x + 3 ≤ y := by dsimp [x, y]; omega
  have hxy : x < y := by omega
  have hcurve : (y : ℤ) ^ 3 - (y : ℤ) = 4 * ((x : ℤ) ^ 3 - (x : ℤ)) := by
    dsimp [x, y]
    exact curve_int_of_product n m heq
  have hy_lt_2x : y < 2 * x := by
    exact lt_of_not_ge (not_two_mul_le_of_curve x y hx hcurve)
  let D := Nat.gcd x y
  let u := x / D
  let v := y / D
  have hDpos : 0 < D := by
    dsimp [D]
    exact Nat.gcd_pos_of_pos_left y hx
  have hDvdx : D ∣ x := by
    dsimp [D]
    exact Nat.gcd_dvd_left x y
  have hDvdy : D ∣ y := by
    dsimp [D]
    exact Nat.gcd_dvd_right x y
  have hx_eq : D * u = x := by
    dsimp [u]
    exact Nat.mul_div_cancel' hDvdx
  have hy_eq : D * v = y := by
    dsimp [v]
    exact Nat.mul_div_cancel' hDvdy
  have hD_le_x : D ≤ x := Nat.le_of_dvd hx hDvdx
  have hD_le_y : D ≤ y := Nat.le_of_dvd hy hDvdy
  have hu : 0 < u := by
    dsimp [u]
    exact Nat.div_pos hD_le_x hDpos
  have hv : 0 < v := by
    dsimp [v]
    exact Nat.div_pos hD_le_y hDpos
  have hcop : Nat.Coprime u v := by
    dsimp [u, v, D]
    exact Nat.coprime_div_gcd_div_gcd hDpos
  have huv : u < v := by nlinarith
  have hv2u : v < 2 * u := by nlinarith
  have hxz : (x : ℤ) = (D : ℤ) * (u : ℤ) := by exact_mod_cast hx_eq.symm
  have hyz : (y : ℤ) = (D : ℤ) * (v : ℤ) := by exact_mod_cast hy_eq.symm
  have hscaled_int : ((D : ℤ) ^ 2) * (4 * (u : ℤ) ^ 3 - (v : ℤ) ^ 3) =
      4 * (u : ℤ) - (v : ℤ) := by
    have hcurve' := hcurve
    rw [hxz, hyz] at hcurve'
    have hDnz : (D : ℤ) ≠ 0 := by exact_mod_cast ne_of_gt hDpos
    have hmul : (D : ℤ) *
        (((D : ℤ) ^ 2) * (4 * (u : ℤ) ^ 3 - (v : ℤ) ^ 3) -
          (4 * (u : ℤ) - (v : ℤ))) = 0 := by
      ring_nf at hcurve' ⊢
      nlinarith
    have hzero : ((D : ℤ) ^ 2) * (4 * (u : ℤ) ^ 3 - (v : ℤ) ^ 3) -
        (4 * (u : ℤ) - (v : ℤ)) = 0 := by
      exact (mul_eq_zero.mp hmul).resolve_left hDnz
    exact sub_eq_zero.mp hzero
  let s := 4 * u ^ 3 - v ^ 3
  obtain ⟨hspos, hD⟩ := scaled_nat_eq D u v hDpos hu hv2u hscaled_int
  have hsdef : s = 4 * u ^ 3 - v ^ 3 := rfl
  have hsu : Nat.Coprime s u := coprime_s_u u v s hcop hsdef hspos
  refine ⟨u, v, D, s, hu, hv, hDpos, hspos, hcop, huv, hv2u, hsdef, hD, hsu, ?_, ?_⟩
  · dsimp [D, u, x] at hx_eq ⊢
    exact hx_eq
  · dsimp [D, v, y] at hy_eq ⊢
    exact hy_eq

/--
Cleared integer form of the $k=3$, $N=4$ variant:
there are no natural numbers $n,m$ with $m\geq n+3$ and
$(m+1)(m+2)(m+3)=4(n+1)(n+2)(n+3)$.
-/
theorem no_solution_cleared :
    ¬ ∃ n m : ℕ,
      m ≥ n + 3 ∧
      (m + 1) * (m + 2) * (m + 3) = 4 * ((n + 1) * (n + 2) * (n + 3)) := by
  rintro ⟨n, m, hm, heq⟩
  obtain ⟨u, v, D, s, hu, hv, hDpos, hspos, hcop, huv, hv2u, hsdef, hD, hsu,
    hDu, hDv⟩ := primitive_reduction_to_LemmaT n m hm heq
  have hs60 := s_dvd_sixty_of_coprime_s_u u v D s hDpos hspos hsu hsdef hD
  have htuple := lemmaT_conditional u v D s hu hv hDpos hspos hcop huv hv2u hsdef hD hs60
  have htuple_components : u = 2 ∧ v = 3 ∧ D = 1 ∧ s = 5 := by
    simpa using htuple
  obtain ⟨hu2, hv3, hD1, hs5⟩ := htuple_components
  subst u
  subst v
  subst D
  subst s
  norm_num at hDu hDv
  omega

/--
A Pell-type split gives a triangular-number identity. If
`z^2 = N w^2 + 1`, `z = w + (2a+1)`, and `Nw = z + (2b+1)`, then
`N a(a+1) = b(b+1)`.
-/
lemma triangular_eq_of_pell_split
    (N z w a b : ℕ)
    (hpell : z ^ 2 = N * w ^ 2 + 1)
    (hz : z = w + (2 * a + 1))
    (hNw : N * w = z + (2 * b + 1)) :
    N * (a * (a + 1)) = b * (b + 1) := by
  subst z
  nlinarith

/--
For `N > 3`, any positive triangular solution `N a(a+1)=b(b+1)` has the
non-overlap gap needed for the `k=2` Erdős representation.
-/
lemma gap_of_triangular_solution
    (N a b : ℕ) (hN : 3 < N) (ha : 0 < a)
    (htri : N * (a * (a + 1)) = b * (b + 1)) :
    a + 2 ≤ b := by
  by_contra hnot
  have hb : b ≤ a + 1 := by omega
  have hb1 : b + 1 ≤ a + 2 := by omega
  have hle : b * (b + 1) ≤ (a + 1) * (a + 2) := Nat.mul_le_mul hb hb1
  have hN4 : 4 ≤ N := by omega
  have hgt : (a + 1) * (a + 2) < N * (a * (a + 1)) := by
    have hNa : a + 2 < N * a := by nlinarith
    have hmul := Nat.mul_lt_mul_of_pos_left hNa (Nat.succ_pos a)
    nlinarith
  nlinarith

/--
A positive triangular identity `N a(a+1)=b(b+1)` with gap `b≥a+2` gives a
`k=2` representation of `N` in the quotient form of Erdős 686.
-/
lemma representation_of_triangular_solution
    (N a b : ℕ) (ha : 0 < a) (hgap : a + 2 ≤ b)
    (htri : N * (a * (a + 1)) = b * (b + 1)) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  refine ⟨a - 1, b - 1, ?_, ?_⟩
  · omega
  · have ha1 : ((a - 1 : ℕ) : ℚ) + 1 = (a : ℚ) := by
      have h : a - 1 + 1 = a := by omega
      have hc : (((a - 1) + 1 : ℕ) : ℚ) = (a : ℚ) := by exact_mod_cast h
      simpa [Nat.cast_add] using hc
    have ha2 : ((a - 1 : ℕ) : ℚ) + 2 = ((a + 1 : ℕ) : ℚ) := by
      have h : a - 1 + 2 = a + 1 := by omega
      have hc : (((a - 1) + 2 : ℕ) : ℚ) = ((a + 1 : ℕ) : ℚ) := by
        exact_mod_cast h
      simpa [Nat.cast_add] using hc
    have hb1 : ((b - 1 : ℕ) : ℚ) + 1 = (b : ℚ) := by
      have h : b - 1 + 1 = b := by omega
      have hc : (((b - 1) + 1 : ℕ) : ℚ) = (b : ℚ) := by exact_mod_cast h
      simpa [Nat.cast_add] using hc
    have hb2 : ((b - 1 : ℕ) : ℚ) + 2 = ((b + 1 : ℕ) : ℚ) := by
      have h : b - 1 + 2 = b + 1 := by omega
      have hc : (((b - 1) + 2 : ℕ) : ℚ) = ((b + 1 : ℕ) : ℚ) := by
        exact_mod_cast h
      simpa [Nat.cast_add] using hc
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    rw [ha1, ha2, hb1, hb2]
    have hden_ne : ((a : ℚ) * ((a + 1 : ℕ) : ℚ)) ≠ 0 := by positivity
    rw [eq_comm]
    rw [div_eq_iff hden_ne]
    exact_mod_cast htri.symm

/--
Packaged Pell split to quotient representation. This is the core algebraic
bridge needed for the nonsquare `k=2` construction.
-/
lemma representation_of_pell_split
    (N z w a b : ℕ) (hN : 3 < N) (ha : 0 < a)
    (hpell : z ^ 2 = N * w ^ 2 + 1)
    (hz : z = w + (2 * a + 1))
    (hNw : N * w = z + (2 * b + 1)) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  have htri := triangular_eq_of_pell_split N z w a b hpell hz hNw
  exact representation_of_triangular_solution N a b ha
    (gap_of_triangular_solution N a b hN ha htri) htri

/--
Shifted triangular form: a solution of
`N(n+1)(n+2)=(m+1)(m+2)` gives a valid `k=2` quotient representation
when `N>3`; the non-overlap gap follows automatically.
-/
lemma representation_of_shifted_triangular_solution
    (N n m : ℕ) (hN : 3 < N)
    (htri : N * ((n + 1) * (n + 2)) = (m + 1) * (m + 2)) :
    ∃ n' m' : ℕ,
      m' ≥ n' + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m' + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n' + i : ℕ) : ℚ))) := by
  have hgap := gap_of_triangular_solution N (n + 1) (m + 1) hN (by omega) htri
  exact representation_of_triangular_solution N (n + 1) (m + 1) (by omega) hgap htri

/--
Any shifted triangular solution for `N>3` gives a `k=2` quotient
representation.
-/
lemma representation_of_shifted_triangular_nonempty
    (N : ℕ) (hN : 3 < N)
    (h :
      {n : ℕ | ∃ m : ℕ, N * ((n + 1) * (n + 2)) = (m + 1) * (m + 2)}.Nonempty) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  rcases h with ⟨n, m, htri⟩
  exact representation_of_shifted_triangular_solution N n m hN htri

/--
An odd generalized Pell solution
`V^2 - N U^2 = 1 - N`, with `U > 1`, gives a positive triangular
identity `N a(a+1)=b(b+1)`.
-/
lemma triangular_solution_of_generalized_pell_odd
    (N U V : ℕ) (hUodd : Odd U) (hVodd : Odd V) (hUgt : 1 < U)
    (hgen : ((V : ℤ) ^ 2 - (N : ℤ) * (U : ℤ) ^ 2 = 1 - (N : ℤ))) :
    ∃ a b : ℕ, 0 < a ∧ N * (a * (a + 1)) = b * (b + 1) := by
  rcases hUodd with ⟨a, hU⟩
  rcases hVodd with ⟨b, hV⟩
  refine ⟨a, b, ?_, ?_⟩
  · by_contra hnot
    have ha0 : a = 0 := by omega
    omega
  · subst U
    subst V
    have htri_int :
        (N : ℤ) * ((a : ℤ) * ((a : ℤ) + 1)) = (b : ℤ) * ((b : ℤ) + 1) := by
      norm_num at hgen
      nlinarith
    exact_mod_cast htri_int

/--
An odd generalized Pell solution with `N > 3` gives the `k=2` quotient
representation required by Erdős 686.
-/
lemma representation_of_generalized_pell_odd
    (N U V : ℕ) (hN : 3 < N) (hUodd : Odd U) (hVodd : Odd V) (hUgt : 1 < U)
    (hgen : ((V : ℤ) ^ 2 - (N : ℤ) * (U : ℤ) ^ 2 = 1 - (N : ℤ))) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨a, b, ha, htri⟩ :=
    triangular_solution_of_generalized_pell_odd N U V hUodd hVodd hUgt hgen
  exact representation_of_triangular_solution N a b ha
    (gap_of_triangular_solution N a b hN ha htri) htri

/--
Every ordinary Pell solution `x^2 - N y^2 = 1` gives a generalized Pell
solution with `U=|x-y|` and `V=|x-Ny|`.
-/
lemma generalized_pell_abs_of_pell
    (N x y : ℤ) (hpell : x ^ 2 - N * y ^ 2 = 1) :
    (((x - N * y).natAbs : ℤ) ^ 2 - N * (((x - y).natAbs : ℤ) ^ 2) = 1 - N) := by
  rw [Int.natAbs_sq, Int.natAbs_sq]
  calc
    (x - N * y) ^ 2 - N * (x - y) ^ 2 = (1 - N) * (x ^ 2 - N * y ^ 2) := by
      ring
    _ = 1 - N := by rw [hpell, mul_one]

/--
If a Pell solution has odd absolute differences `|x-y|` and `|x-Ny|`, and
`|x-y|>1`, then it gives a valid `k=2` quotient representation.
-/
lemma representation_of_pell_abs_odd
    (N : ℕ) (x y : ℤ) (hN : 3 < N)
    (hUodd : Odd (x - y).natAbs)
    (hVodd : Odd (x - (N : ℤ) * y).natAbs)
    (hUgt : 1 < (x - y).natAbs)
    (hpell : x ^ 2 - (N : ℤ) * y ^ 2 = 1) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  exact representation_of_generalized_pell_odd N (x - y).natAbs (x - (N : ℤ) * y).natAbs
    hN hUodd hVodd hUgt (generalized_pell_abs_of_pell (N : ℤ) x y hpell)

private lemma even_sq_int {x : ℤ} (hx : Even x) : Even (x ^ 2) := by
  simpa [pow_two] using Even.mul_right hx x

/--
For odd `N`, a Pell solution `x^2-Ny^2=1` has odd absolute differences
`|x-y|` and `|x-Ny|`.
-/
lemma odd_subs_of_pell_odd
    (N x y : ℤ) (hNodd : Odd N) (hpell : x ^ 2 - N * y ^ 2 = 1) :
    Odd (x - y) ∧ Odd (x - N * y) := by
  rcases Int.even_or_odd x with hx_even | hx_odd
  · rcases Int.even_or_odd y with hy_even | hy_odd
    · have hx2 : Even (x ^ 2) := even_sq_int hx_even
      have hy2 : Even (y ^ 2) := even_sq_int hy_even
      have hNy2 : Even (N * y ^ 2) := Even.mul_left hy2 N
      have hlhs : Even (x ^ 2 - N * y ^ 2) := Even.sub hx2 hNy2
      rw [hpell] at hlhs
      exact (Int.not_even_one hlhs).elim
    · constructor
      · exact Even.sub_odd hx_even hy_odd
      · exact Even.sub_odd hx_even (Odd.mul hNodd hy_odd)
  · rcases Int.even_or_odd y with hy_even | hy_odd
    · constructor
      · exact Odd.sub_even hx_odd hy_even
      · exact Odd.sub_even hx_odd (Even.mul_left hy_even N)
    · have hx2 : Odd (x ^ 2) := Odd.pow hx_odd
      have hy2 : Odd (y ^ 2) := Odd.pow hy_odd
      have hNy2 : Odd (N * y ^ 2) := Odd.mul hNodd hy2
      have hlhs : Even (x ^ 2 - N * y ^ 2) := Odd.sub_odd hx2 hNy2
      rw [hpell] at hlhs
      exact (Int.not_even_one hlhs).elim

/--
For `N>3`, a positive Pell solution has `|x-y|>1`, so the associated
generalized Pell solution is nontrivial.
-/
lemma pell_natAbs_sub_gt_one
    (N : ℕ) (x y : ℤ) (hN : 3 < N) (hx : 1 < x) (hy : 0 < y)
    (hpell : x ^ 2 - (N : ℤ) * y ^ 2 = 1) :
    1 < (x - y).natAbs := by
  have hxy : 1 < x - y := by
    by_contra hnot
    have hle : x - y ≤ 1 := by omega
    have hx_le : x ≤ y + 1 := by omega
    have hsquares : x ^ 2 ≤ (y + 1) ^ 2 := by
      nlinarith
    have hN4 : (4 : ℤ) ≤ (N : ℤ) := by exact_mod_cast (by omega : 4 ≤ N)
    nlinarith
  have hnat : ((1 : ℕ) : ℤ) < ((x - y).natAbs : ℤ) := by
    rw [Int.natAbs_of_nonneg (by omega : 0 ≤ x - y)]
    exact hxy
  exact_mod_cast hnat

/--
Every odd nonsquare `N>3` has a valid Erdős 686 representation already with
`k=2`.
-/
theorem odd_nonsquare_representable_k_two
    (N : ℕ) (hN : 3 < N) (hNodd : Odd N) (hnot : ¬ IsSquare N) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  have hNpos_int : (0 : ℤ) < (N : ℤ) := by exact_mod_cast (by omega : 0 < N)
  have hnot_int : ¬ IsSquare (N : ℤ) := by
    simpa [Int.isSquare_natCast_iff] using hnot
  obtain ⟨s, hsx, hsy⟩ := Pell.Solution₁.exists_pos_of_not_isSquare hNpos_int hnot_int
  have hNodd_int : Odd (N : ℤ) := by exact_mod_cast hNodd
  have hpar := odd_subs_of_pell_odd (N : ℤ) s.x s.y hNodd_int s.prop
  exact representation_of_pell_abs_odd N s.x s.y hN
    (Int.natAbs_odd.mpr hpar.1)
    (Int.natAbs_odd.mpr hpar.2)
    (pell_natAbs_sub_gt_one N s.x s.y hN hsx hsy s.prop)
    s.prop

private lemma pell_x_odd_of_even_N
    (N x y : ℤ) (hNeven : Even N) (hpell : x ^ 2 - N * y ^ 2 = 1) : Odd x := by
  rcases Int.even_or_odd x with hx_even | hx_odd
  · have hx2 : Even (x ^ 2) := even_sq_int hx_even
    have hNy2 : Even (N * y ^ 2) := Even.mul_right hNeven (y ^ 2)
    have hlhs : Even (x ^ 2 - N * y ^ 2) := Even.sub hx2 hNy2
    rw [hpell] at hlhs
    exact (Int.not_even_one hlhs).elim
  · exact hx_odd

/--
Every even nonsquare `N>3` has a valid Erdős 686 representation already with
`k=2`. Squaring a positive Pell solution makes the Pell `y`-coordinate even,
which gives the odd absolute differences needed by
`representation_of_pell_abs_odd`.
-/
theorem even_nonsquare_representable_k_two
    (N : ℕ) (hN : 3 < N) (hNeven : Even N) (hnot : ¬ IsSquare N) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  have hNpos_int : (0 : ℤ) < (N : ℤ) := by exact_mod_cast (by omega : 0 < N)
  have hnot_int : ¬ IsSquare (N : ℤ) := by
    simpa [Int.isSquare_natCast_iff] using hnot
  obtain ⟨s, hsx, hsy⟩ := Pell.Solution₁.exists_pos_of_not_isSquare hNpos_int hnot_int
  let t : Pell.Solution₁ (N : ℤ) := s ^ 2
  have htx_formula : t.x = s.x * s.x + (N : ℤ) * (s.y * s.y) := by
    dsimp [t]
    rw [pow_two, Pell.Solution₁.x_mul]
  have hty_formula : t.y = s.x * s.y + s.y * s.x := by
    dsimp [t]
    rw [pow_two, Pell.Solution₁.y_mul]
  have htx : 1 < t.x := by
    rw [htx_formula]
    have hNnonneg : (0 : ℤ) ≤ (N : ℤ) := by exact_mod_cast (by omega : 0 ≤ N)
    nlinarith [sq_nonneg s.x, mul_nonneg hNnonneg (sq_nonneg s.y)]
  have hty : 0 < t.y := by
    rw [hty_formula]
    nlinarith
  have hNeven_int : Even (N : ℤ) := by exact_mod_cast hNeven
  have hsx_odd : Odd s.x := pell_x_odd_of_even_N (N : ℤ) s.x s.y hNeven_int s.prop
  have htx_odd : Odd t.x := by
    rw [htx_formula]
    exact Odd.add_even (Odd.mul hsx_odd hsx_odd)
      (Even.mul_right hNeven_int (s.y * s.y))
  have hty_even : Even t.y := by
    rw [hty_formula]
    use s.x * s.y
    ring
  have hUodd : Odd (t.x - t.y).natAbs := by
    exact Int.natAbs_odd.mpr (Odd.sub_even htx_odd hty_even)
  have hVodd : Odd (t.x - (N : ℤ) * t.y).natAbs := by
    exact Int.natAbs_odd.mpr (Odd.sub_even htx_odd (Even.mul_left hty_even (N : ℤ)))
  exact representation_of_pell_abs_odd N t.x t.y hN hUodd hVodd
    (pell_natAbs_sub_gt_one N t.x t.y hN htx hty t.prop)
    t.prop

/--
Every nonsquare `N≥2` has a valid Erdős 686 representation already with
`k=2`.
-/
theorem nonsquare_representable_k_two
    (N : ℕ) (hN : 2 ≤ N) (hnot : ¬ IsSquare N) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  by_cases h2 : N = 2
  · subst N
    refine ⟨13, 19, by norm_num, ?_⟩
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  by_cases h3 : N = 3
  · subst N
    refine ⟨4, 8, by norm_num, ?_⟩
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  have hNgt : 3 < N := by omega
  rcases Nat.even_or_odd N with hEven | hOdd
  · exact even_nonsquare_representable_k_two N hNgt hEven hnot
  · exact odd_nonsquare_representable_k_two N hNgt hOdd hnot

/--
The original Erdős 686 existential conclusion holds for every nonsquare
`N≥2`.
-/
theorem nonsquare_representable
    (N : ℕ) (hN : 2 ≤ N) (hnot : ¬ IsSquare N) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨n, m, hm, hq⟩ := nonsquare_representable_k_two N hN hnot
  exact ⟨2, n, m, by norm_num, hm, by simpa using hq⟩

/--
Because all nonsquares are already represented, a positive solution of Erdős
686 only needs to handle square values of `N`.
-/
theorem erdos686_of_square_representable
    (hsq : ∀ a : ℕ, 2 ≤ a → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (((a ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro N hN
  by_cases hN_square : IsSquare N
  · rw [isSquare_iff_exists_sq] at hN_square
    obtain ⟨a, haN⟩ := hN_square
    have ha2 : 2 ≤ a := by
      by_contra hnot
      have ha_le_one : a ≤ 1 := by omega
      have hN_le_one : N ≤ 1 := by
        rw [haN]
        nlinarith
      omega
    simpa [haN] using hsq a ha2
  · exact nonsquare_representable N hN hN_square

/--
Equivalently, if the original universal statement is false, then some square
`N ≥ 2` is already a counterexample.
-/
theorem square_counterexample_of_erdos686_false
    (hfalse : ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    ∃ N : ℕ,
      2 ≤ N ∧ IsSquare N ∧
      ¬ ∃ k n m : ℕ,
        2 ≤ k ∧ m ≥ n + k ∧
        (N : ℚ) =
          (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
            (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  classical
  by_contra hnone
  apply hfalse
  intro N hN
  by_cases hN_square : IsSquare N
  · by_contra hnot_rep
    exact hnone ⟨N, hN, hN_square, hnot_rep⟩
  · exact nonsquare_representable N hN hN_square

/--
The full positive Erdős 686 statement is equivalent to representing every
square `a^2` with `a≥2`.  The backward direction is
`erdos686_of_square_representable`; the forward direction is immediate.
-/
theorem erdos686_iff_square_representable :
    (∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) ↔
    (∀ a : ℕ, 2 ≤ a → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (((a ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) := by
  constructor
  · intro hall a ha
    exact hall (a ^ 2) (by nlinarith)
  · intro hsq
    exact erdos686_of_square_representable hsq

/--
Equivalently, a negative solution must be a square counterexample.  This is
the iff package around `square_counterexample_of_erdos686_false`.
-/
theorem erdos686_false_iff_square_counterexample :
    (¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) ↔
    ∃ N : ℕ,
      2 ≤ N ∧ IsSquare N ∧
      ¬ ∃ k n m : ℕ,
        2 ≤ k ∧ m ≥ n + k ∧
        (N : ℚ) =
          (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
            (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  constructor
  · exact square_counterexample_of_erdos686_false
  · rintro ⟨N, hN, _hSquare, hnot_rep⟩ hall
    exact hnot_rep (hall N hN)

/--
An infinite square family is represented already with `k=2`: for every `t`,
`N = (4t+6)^2` is represented by `n=t` and `m=4t^2+12t+7`.
-/
theorem square_family_representable_k_two (t : ℕ) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((4 * t + 6) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  refine ⟨t, 4 * t ^ 2 + 12 * t + 7, by nlinarith, ?_⟩
  have hden_ne :
      (∏ i ∈ Finset.Icc 1 2, (((t + i : ℕ) : ℚ))) ≠ 0 := by
    apply ne_of_gt
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    positivity
  rw [eq_comm, div_eq_iff hden_ne]
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  ring

/--
The original Erdős 686 existential conclusion holds for the square family
`N = (4t+6)^2`.
-/
theorem square_family_representable (t : ℕ) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (((4 * t + 6) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨n, m, hm, hq⟩ := square_family_representable_k_two t
  exact ⟨2, n, m, by norm_num, hm, by simpa using hq⟩

/--
Another infinite square family is represented already with `k=2`: for every
`t`, `N = (16t^2+48t+35)^2` is represented by `n=t` and
`m=16t^3+72t^2+105t+48`.

This is the factor-pair construction with
`u = 4t+6` and square root `a = u^2-1`.
-/
theorem square_minus_one_family_representable_k_two (t : ℕ) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((16 * t ^ 2 + 48 * t + 35) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  refine ⟨t, 16 * t ^ 3 + 72 * t ^ 2 + 105 * t + 48, by nlinarith, ?_⟩
  have hden_ne :
      (∏ i ∈ Finset.Icc 1 2, (((t + i : ℕ) : ℚ))) ≠ 0 := by
    apply ne_of_gt
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    positivity
  rw [eq_comm, div_eq_iff hden_ne]
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  ring

/--
The original Erdős 686 existential conclusion holds for the square family
`N = (16t^2+48t+35)^2`.
-/
theorem square_minus_one_family_representable (t : ℕ) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (((16 * t ^ 2 + 48 * t + 35) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨n, m, hm, hq⟩ := square_minus_one_family_representable_k_two t
  exact ⟨2, n, m, by norm_num, hm, by simpa using hq⟩

/--
The next Pell-power square-root family from the `k=2` factor-pair
characterization is represented already with `k=2`.

For `w = 2t+3`, the square root is `4w(2w^2-1)`, expanded here as
`64t^3+288t^2+424t+204`.
-/
theorem square_pell_third_family_representable_k_two (t : ℕ) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((64 * t ^ 3 + 288 * t ^ 2 + 424 * t + 204) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  refine ⟨t, 64 * t ^ 4 + 384 * t ^ 3 + 848 * t ^ 2 + 816 * t + 287,
    by nlinarith, ?_⟩
  have hden_ne :
      (∏ i ∈ Finset.Icc 1 2, (((t + i : ℕ) : ℚ))) ≠ 0 := by
    apply ne_of_gt
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    positivity
  rw [eq_comm, div_eq_iff hden_ne]
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  ring

/--
The original Erdős 686 existential conclusion holds for the Pell-power square
family with root `64t^3+288t^2+424t+204`.
-/
theorem square_pell_third_family_representable (t : ℕ) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (((64 * t ^ 3 + 288 * t ^ 2 + 424 * t + 204) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨n, m, hm, hq⟩ := square_pell_third_family_representable_k_two t
  exact ⟨2, n, m, by norm_num, hm, by simpa using hq⟩

/--
The fourth Pell-power square-root family from the `k=2` Pell construction is
represented already with `k=2`.

For `w = 2t+3`, this is the `y`-coordinate of `(w + sqrt(w^2-1))^5`,
expanded as `256t^4+1536t^3+3408t^2+3312t+1189`.
-/
theorem square_pell_fourth_family_representable_k_two (t : ℕ) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((256 * t ^ 4 + 1536 * t ^ 3 + 3408 * t ^ 2 + 3312 * t + 1189) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  refine ⟨t, 256 * t ^ 5 + 1920 * t ^ 4 + 5680 * t ^ 3 + 8280 * t ^ 2 + 5945 * t + 1680,
    ?_, ?_⟩
  · have hbase : t + 2 ≤ 5945 * t + 1680 := by nlinarith
    have hnonneg : 0 ≤ 256 * t ^ 5 + 1920 * t ^ 4 + 5680 * t ^ 3 + 8280 * t ^ 2 := by
      positivity
    nlinarith
  have hden_ne :
      (∏ i ∈ Finset.Icc 1 2, (((t + i : ℕ) : ℚ))) ≠ 0 := by
    apply ne_of_gt
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    positivity
  rw [eq_comm, div_eq_iff hden_ne]
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  ring

/--
The original Erdős 686 existential conclusion holds for the fourth Pell-power
square family with root `256t^4+1536t^3+3408t^2+3312t+1189`.
-/
theorem square_pell_fourth_family_representable (t : ℕ) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (((256 * t ^ 4 + 1536 * t ^ 3 + 3408 * t ^ 2 + 3312 * t + 1189) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨n, m, hm, hq⟩ := square_pell_fourth_family_representable_k_two t
  exact ⟨2, n, m, by norm_num, hm, by simpa using hq⟩

/--
One step in the elementary `k=2` Pell/Chebyshev recurrence for fixed lower
block start `t`.  A pair `(m,a)` records
`(m+1)(m+2)=a^2(t+1)(t+2)`.
-/
def k2PellStep (t : ℕ) (p : ℕ × ℕ) : ℕ × ℕ :=
  let m := p.1
  let a := p.2
  ((2 * t + 3) * m + 3 * t + 3 + 2 * ((t + 1) * (t + 2)) * a,
    2 * m + 3 + (2 * t + 3) * a)

/-- The full elementary `k=2` Pell/Chebyshev recurrence, starting from `(t,1)`. -/
def k2PellPair (t : ℕ) : ℕ → ℕ × ℕ
  | 0 => (t, 1)
  | r + 1 => k2PellStep t (k2PellPair t r)

/-- Numerator-block start in the elementary `k=2` Pell/Chebyshev recurrence. -/
def k2PellM (t r : ℕ) : ℕ :=
  (k2PellPair t r).1

/-- Square root produced by the elementary `k=2` Pell/Chebyshev recurrence. -/
def k2PellRoot (t r : ℕ) : ℕ :=
  (k2PellPair t r).2

lemma k2Pell_step_preserves
    (t m a : ℕ)
    (h : (m + 1) * (m + 2) = a ^ 2 * ((t + 1) * (t + 2))) :
    let q := (t + 1) * (t + 2)
    let m' := (2 * t + 3) * m + 3 * t + 3 + 2 * q * a
    let a' := 2 * m + 3 + (2 * t + 3) * a
    (m' + 1) * (m' + 2) = a' ^ 2 * q := by
  intro q m' a'
  have hstep :
      (m' + 1) * (m' + 2) + a ^ 2 * q =
        a' ^ 2 * q + (m + 1) * (m + 2) := by
    unfold m' a' q
    ring
  rw [h] at hstep
  exact Nat.add_right_cancel hstep

/--
The elementary recurrence always preserves the cleared `k=2` square identity.
-/
theorem k2Pell_identity (t r : ℕ) :
    (k2PellM t r + 1) * (k2PellM t r + 2) =
      (k2PellRoot t r) ^ 2 * ((t + 1) * (t + 2)) := by
  induction r with
  | zero =>
      unfold k2PellM k2PellRoot k2PellPair
      ring
  | succ r ih =>
      simpa [k2PellM, k2PellRoot, k2PellPair, k2PellStep] using
        k2Pell_step_preserves t (k2PellM t r) (k2PellRoot t r) ih

lemma k2Pell_separated (t r : ℕ) (hr : 1 ≤ r) :
    t + 2 ≤ k2PellM t r := by
  cases r with
  | zero =>
      omega
  | succ r =>
      change t + 2 ≤
        (2 * t + 3) * (k2PellPair t r).1 + 3 * t + 3 +
          2 * ((t + 1) * (t + 2)) * (k2PellPair t r).2
      have hbase : t + 2 ≤ 3 * t + 3 := by omega
      nlinarith [Nat.zero_le ((2 * t + 3) * (k2PellPair t r).1),
        Nat.zero_le (2 * ((t + 1) * (t + 2)) * (k2PellPair t r).2)]

theorem k2Pell_family_representable_k_two (t r : ℕ) (hr : 1 ≤ r) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((k2PellRoot t r) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  refine ⟨t, k2PellM t r, k2Pell_separated t r hr, ?_⟩
  have hden_ne :
      (∏ i ∈ Finset.Icc 1 2, (((t + i : ℕ) : ℚ))) ≠ 0 := by
    apply ne_of_gt
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    positivity
  rw [eq_comm, div_eq_iff hden_ne]
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  exact_mod_cast k2Pell_identity t r

/--
Every nontrivial rung of the elementary `k=2` Pell/Chebyshev recurrence gives
an Erdős 686 representation.
-/
theorem k2Pell_family_representable (t r : ℕ) (hr : 1 ≤ r) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (((k2PellRoot t r) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨n, m, hm, hq⟩ := k2Pell_family_representable_k_two t r hr
  exact ⟨2, n, m, by norm_num, hm, by simpa using hq⟩

/-- The first nontrivial recurrence rung is the root family `4t+6`. -/
theorem k2PellRoot_one (t : ℕ) :
    k2PellRoot t 1 = 4 * t + 6 := by
  simp [k2PellRoot, k2PellPair, k2PellStep]
  ring

/-- The second recurrence rung is the root family `(4t+6)^2-1`. -/
theorem k2PellRoot_two (t : ℕ) :
    k2PellRoot t 2 = 16 * t ^ 2 + 48 * t + 35 := by
  simp [k2PellRoot, k2PellPair, k2PellStep]
  ring

/-- The third recurrence rung is the cubic explicit Pell-root family. -/
theorem k2PellRoot_three (t : ℕ) :
    k2PellRoot t 3 = 64 * t ^ 3 + 288 * t ^ 2 + 424 * t + 204 := by
  simp [k2PellRoot, k2PellPair, k2PellStep]
  ring

/-- The fourth recurrence rung is the quartic explicit Pell-root family. -/
theorem k2PellRoot_four (t : ℕ) :
    k2PellRoot t 4 =
      256 * t ^ 4 + 1536 * t ^ 3 + 3408 * t ^ 2 + 3312 * t + 1189 := by
  simp [k2PellRoot, k2PellPair, k2PellStep]
  ring

/-- The fifth recurrence rung is redundant with the `4u+6` family. -/
theorem k2PellRoot_five_redundant (t : ℕ) :
    ∃ u : ℕ, k2PellRoot t 5 = 4 * u + 6 := by
  refine ⟨256 * t ^ 5 + 1920 * t ^ 4 + 5696 * t ^ 3 +
      8352 * t ^ 2 + 6051 * t + 1731, ?_⟩
  simp [k2PellRoot, k2PellPair, k2PellStep]
  ring

/-- The sixth recurrence rung is the first new root family after the quartic rung. -/
theorem k2PellRoot_six (t : ℕ) :
    k2PellRoot t 6 =
      4096 * t ^ 6 + 36864 * t ^ 5 + 136960 * t ^ 4 + 268800 * t ^ 3 +
        293856 * t ^ 2 + 169632 * t + 40391 := by
  simp [k2PellRoot, k2PellPair, k2PellStep]
  ring

lemma exists_four_t_plus_six_iff_mod_four_eq_two {a : ℕ} :
    (∃ t : ℕ, a = 4 * t + 6) ↔ 6 ≤ a ∧ a % 4 = 2 := by
  constructor
  · rintro ⟨t, rfl⟩
    constructor
    · omega
    · omega
  · rintro ⟨ha6, hmod⟩
    refine ⟨a / 4 - 1, ?_⟩
    have hdivmod : 4 * (a / 4) + a % 4 = a := by
      simpa [Nat.mul_comm] using (Nat.div_add_mod a 4)
    omega

lemma exists_four_t_plus_six_of_mod_four_eq_two
    {a : ℕ} (ha6 : 6 ≤ a) (hmod : a % 4 = 2) :
    ∃ t : ℕ, a = 4 * t + 6 := by
  exact (exists_four_t_plus_six_iff_mod_four_eq_two (a := a)).mpr ⟨ha6, hmod⟩

/--
Root-level form of the first square family: if the square root is `4t+6`,
then the square itself is represented already with `k=2`.
-/
theorem square_root_four_t_plus_six_representable
    {a : ℕ} (ha : ∃ t : ℕ, a = 4 * t + 6) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨t, rfl⟩ := ha
  exact square_family_representable t

/--
Congruence form of the first square family: every square whose root is at least
`6` and congruent to `2 mod 4` is represented.
-/
theorem square_root_mod_four_two_representable
    {a : ℕ} (ha6 : 6 ≤ a) (hmod : a % 4 = 2) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  exact square_root_four_t_plus_six_representable
    (exists_four_t_plus_six_of_mod_four_eq_two ha6 hmod)

/--
Root-level form of the second square family: if `a = 4t+6`, then
`(a^2-1)^2` is represented already with `k=2`.
-/
theorem square_root_four_t_plus_six_minus_one_representable
    {a : ℕ} (ha : ∃ t : ℕ, a = 4 * t + 6) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((((a ^ 2 - 1) ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨t, rfl⟩ := ha
  have hroot : (4 * t + 6) ^ 2 - 1 = 16 * t ^ 2 + 48 * t + 35 := by
    ring_nf
    omega
  simpa [hroot] using square_minus_one_family_representable t

/--
Congruence form of the second square family: if `a ≥ 6` and `a ≡ 2 mod 4`,
then `(a^2-1)^2` is represented.
-/
theorem square_root_mod_four_two_minus_one_representable
    {a : ℕ} (ha6 : 6 ≤ a) (hmod : a % 4 = 2) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((((a ^ 2 - 1) ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  exact square_root_four_t_plus_six_minus_one_representable
    (exists_four_t_plus_six_of_mod_four_eq_two ha6 hmod)

/--
Current positive coverage package for Erdős 686: all nonsquares, plus the
explicit infinite square families already proved in this file.
-/
theorem nonsquare_or_known_square_family_representable
    (N : ℕ) (hN : 2 ≤ N)
    (hcase : ¬ IsSquare N ∨
      (∃ t : ℕ, N = (4 * t + 6) ^ 2) ∨
      (∃ t : ℕ, N = (16 * t ^ 2 + 48 * t + 35) ^ 2) ∨
      (∃ t : ℕ, N = (64 * t ^ 3 + 288 * t ^ 2 + 424 * t + 204) ^ 2) ∨
      (∃ t : ℕ, N = (256 * t ^ 4 + 1536 * t ^ 3 + 3408 * t ^ 2 + 3312 * t + 1189) ^ 2)) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hcase with hnot | hsquare
  · exact nonsquare_representable N hN hnot
  rcases hsquare with hfirst | hrest
  · obtain ⟨t, ht⟩ := hfirst
    simpa [ht] using square_family_representable t
  rcases hrest with hsecond | hthird
  · obtain ⟨t, ht⟩ := hsecond
    simpa [ht] using square_minus_one_family_representable t
  rcases hthird with hthird | hfourth
  · obtain ⟨t, ht⟩ := hthird
    simpa [ht] using square_pell_third_family_representable t
  · obtain ⟨t, ht⟩ := hfourth
    simpa [ht] using square_pell_fourth_family_representable t

/--
Root-level positive coverage package: all nonsquares, plus squares whose square
root is either `4t+6` or `(4t+6)^2-1`.
-/
theorem nonsquare_or_known_square_root_family_representable
    (N : ℕ) (hN : 2 ≤ N)
    (hcase : ¬ IsSquare N ∨
      ∃ a : ℕ, N = a ^ 2 ∧
        ((∃ t : ℕ, a = 4 * t + 6) ∨
          ∃ t : ℕ, a = (4 * t + 6) ^ 2 - 1)) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hcase with hnot | hsquare
  · exact nonsquare_representable N hN hnot
  obtain ⟨a, hNa, hroot⟩ := hsquare
  rcases hroot with hfirst | hsecond
  · simpa [hNa] using square_root_four_t_plus_six_representable hfirst
  · obtain ⟨t, ht⟩ := hsecond
    have hbase : ∃ s : ℕ, 4 * t + 6 = 4 * s + 6 := ⟨t, rfl⟩
    simpa [hNa, ht] using square_root_four_t_plus_six_minus_one_representable hbase

/--
Congruence-form positive coverage package: all nonsquares, plus squares whose
root is either `≥ 6` and `2 mod 4`, or one less than the square of such a root.
-/
theorem nonsquare_or_mod_four_two_square_root_family_representable
    (N : ℕ) (hN : 2 ≤ N)
    (hcase : ¬ IsSquare N ∨
      ∃ a : ℕ, N = a ^ 2 ∧
        ((6 ≤ a ∧ a % 4 = 2) ∨
          ∃ b : ℕ, a = b ^ 2 - 1 ∧ 6 ≤ b ∧ b % 4 = 2)) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hcase with hnot | hsquare
  · exact nonsquare_representable N hN hnot
  obtain ⟨a, hNa, hroot⟩ := hsquare
  rcases hroot with hfirst | hsecond
  · obtain ⟨ha6, hmod⟩ := hfirst
    simpa [hNa] using square_root_mod_four_two_representable ha6 hmod
  · obtain ⟨b, hb, hb6, hbmod⟩ := hsecond
    simpa [hNa, hb] using square_root_mod_four_two_minus_one_representable hb6 hbmod

/--
The currently banked infinite square-root coverage: roots congruent to `2 mod
4`, roots one less than the square of such a root, and the next two explicit
`k=2` Pell/Chebyshev square-root families, plus the full elementary
`k=2` Pell/Chebyshev recurrence.
-/
def CoveredSquareRoot (a : ℕ) : Prop :=
  (6 ≤ a ∧ a % 4 = 2) ∨
    (∃ b : ℕ, a = b ^ 2 - 1 ∧ 6 ≤ b ∧ b % 4 = 2) ∨
    (∃ t : ℕ, a = 64 * t ^ 3 + 288 * t ^ 2 + 424 * t + 204) ∨
    (∃ t : ℕ, a = 256 * t ^ 4 + 1536 * t ^ 3 + 3408 * t ^ 2 + 3312 * t + 1189) ∨
    ∃ t r : ℕ, 1 ≤ r ∧ a = k2PellRoot t r

/--
If a square root is in the currently banked infinite square-root coverage, then
its square is represented.
-/
theorem covered_square_root_representable
    {a : ℕ} (hcov : CoveredSquareRoot a) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hcov with hfirst | hsecond
  · exact square_root_mod_four_two_representable hfirst.1 hfirst.2
  rcases hsecond with hsecond | hrest
  · obtain ⟨b, hb, hb6, hbmod⟩ := hsecond
    simpa [hb] using square_root_mod_four_two_minus_one_representable hb6 hbmod
  rcases hrest with hthird | hfourth
  · obtain ⟨t, rfl⟩ := hthird
    exact square_pell_third_family_representable t
  rcases hfourth with hfourth | hpell
  · obtain ⟨t, rfl⟩ := hfourth
    exact square_pell_fourth_family_representable t
  · obtain ⟨t, r, hr, rfl⟩ := hpell
    exact k2Pell_family_representable t r hr

/--
After the nonsquare theorem and current infinite square-root families, the full
positive Erdős 686 statement is equivalent to representing every remaining
square root outside `CoveredSquareRoot`.
-/
theorem erdos686_iff_uncovered_square_root_representable :
    (∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) ↔
    (∀ a : ℕ, 2 ≤ a → ¬ CoveredSquareRoot a → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) := by
  constructor
  · intro hall a ha _hnot
    exact hall (a ^ 2) (by nlinarith)
  · intro hremaining N hN
    by_cases hN_square : IsSquare N
    · rw [isSquare_iff_exists_sq] at hN_square
      obtain ⟨a, haN⟩ := hN_square
      have ha2 : 2 ≤ a := by
        by_contra hnot
        have ha_le_one : a ≤ 1 := by omega
        have hN_le_one : N ≤ 1 := by
          rw [haN]
          nlinarith
        omega
      by_cases hcov : CoveredSquareRoot a
      · simpa [haN] using covered_square_root_representable hcov
      · simpa [haN] using hremaining a ha2 hcov
    · exact nonsquare_representable N hN hN_square

/-- The square `N=9` is represented with `k=3`, `n=11`, `m=25`. -/
theorem nine_representable :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (9 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  refine ⟨3, 11, 25, by norm_num, by norm_num, ?_⟩
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]

/-- The square `N=16` is represented with `k=3`, `n=4`, `m=13`. -/
theorem sixteen_representable :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (16 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  refine ⟨3, 4, 13, by norm_num, by norm_num, ?_⟩
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]

/--
Square-root coverage after also folding in the two explicit small square
witnesses `3^2=9` and `4^2=16`.
-/
def AugmentedCoveredSquareRoot (a : ℕ) : Prop :=
  a = 3 ∨ a = 4 ∨ CoveredSquareRoot a

/--
Every square whose root lies in the augmented banked coverage is represented.
-/
theorem augmented_covered_square_root_representable
    {a : ℕ} (hcov : AugmentedCoveredSquareRoot a) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hcov with hthree | hrest
  · subst a
    simpa using nine_representable
  · rcases hrest with hfour | hcovered
    · subst a
      simpa using sixteen_representable
    · exact covered_square_root_representable hcovered

/--
After nonsquares, the currently banked infinite square-root families, and the
explicit `9` and `16` witnesses, the full positive Erdős 686 statement is
equivalent to representing every square root outside
`AugmentedCoveredSquareRoot`.
-/
theorem erdos686_iff_augmented_uncovered_square_root_representable :
    (∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) ↔
    (∀ a : ℕ, 2 ≤ a → ¬ AugmentedCoveredSquareRoot a → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) := by
  constructor
  · intro hall a ha _hnot
    exact hall (a ^ 2) (by nlinarith)
  · intro hremaining N hN
    by_cases hN_square : IsSquare N
    · rw [isSquare_iff_exists_sq] at hN_square
      obtain ⟨a, haN⟩ := hN_square
      have ha2 : 2 ≤ a := by
        by_contra hnot
        have ha_le_one : a ≤ 1 := by omega
        have hN_le_one : N ≤ 1 := by
          rw [haN]
          nlinarith
        omega
      by_cases hcov : AugmentedCoveredSquareRoot a
      · simpa [haN] using augmented_covered_square_root_representable hcov
      · simpa [haN] using hremaining a ha2 hcov
    · exact nonsquare_representable N hN hN_square

/--
Among square roots up to `10`, the only roots not already covered by the
augmented constructive coverage are the five first holdouts.
-/
theorem augmented_uncovered_square_root_le_ten
    {a : ℕ} (ha2 : 2 ≤ a) (ha10 : a ≤ 10)
    (hnot : ¬ AugmentedCoveredSquareRoot a) :
    a = 2 ∨ a = 5 ∨ a = 7 ∨ a = 8 ∨ a = 9 := by
  interval_cases a
  · simp
  · exact False.elim (hnot (by simp [AugmentedCoveredSquareRoot]))
  · exact False.elim (hnot (by simp [AugmentedCoveredSquareRoot]))
  · simp
  · exact False.elim (hnot (by
      simp [AugmentedCoveredSquareRoot, CoveredSquareRoot]))
  · simp
  · simp
  · simp
  · exact False.elim (hnot (by
      simp [AugmentedCoveredSquareRoot, CoveredSquareRoot]))

/--
Square-root coverage supplied purely by the uniform elementary `k=2`
Pell/Chebyshev recurrence.
-/
def PellCoveredSquareRoot (a : ℕ) : Prop :=
  ∃ t r : ℕ, 1 ≤ r ∧ a = k2PellRoot t r

/--
Every square whose root is covered by the uniform elementary `k=2`
Pell/Chebyshev recurrence is represented.
-/
theorem pell_covered_square_root_representable
    {a : ℕ} (hcov : PellCoveredSquareRoot a) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨t, r, hr, rfl⟩ := hcov
  exact k2Pell_family_representable t r hr

/--
The uniform `k=2` Pell/Chebyshev recurrence subsumes the older hand-listed
square-root coverage package.
-/
theorem covered_square_root_pell_covered
    {a : ℕ} (hcov : CoveredSquareRoot a) :
    PellCoveredSquareRoot a := by
  rcases hcov with hfirst | hrest
  · obtain ⟨t, ht⟩ := exists_four_t_plus_six_of_mod_four_eq_two hfirst.1 hfirst.2
    refine ⟨t, 1, by norm_num, ?_⟩
    rw [ht, k2PellRoot_one]
  rcases hrest with hsecond | hrest
  · obtain ⟨b, hb, hb6, hbmod⟩ := hsecond
    obtain ⟨t, ht⟩ := exists_four_t_plus_six_of_mod_four_eq_two hb6 hbmod
    refine ⟨t, 2, by norm_num, ?_⟩
    rw [hb, ht, k2PellRoot_two]
    have hroot : (4 * t + 6) ^ 2 - 1 = 16 * t ^ 2 + 48 * t + 35 := by
      ring_nf
      omega
    exact hroot
  rcases hrest with hthird | hrest
  · obtain ⟨t, ht⟩ := hthird
    refine ⟨t, 3, by norm_num, ?_⟩
    rw [ht, k2PellRoot_three]
  rcases hrest with hfourth | hpell
  · obtain ⟨t, ht⟩ := hfourth
    refine ⟨t, 4, by norm_num, ?_⟩
    rw [ht, k2PellRoot_four]
  · exact hpell

/--
Uniform recurrence coverage after also folding in the two explicit small
square witnesses `3^2=9` and `4^2=16`.
-/
def AugmentedPellCoveredSquareRoot (a : ℕ) : Prop :=
  a = 3 ∨ a = 4 ∨ PellCoveredSquareRoot a

/--
Every square whose root lies in the augmented uniform `k=2` Pell recurrence
coverage is represented.
-/
theorem augmented_pell_covered_square_root_representable
    {a : ℕ} (hcov : AugmentedPellCoveredSquareRoot a) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hcov with hthree | hrest
  · subst a
    simpa using nine_representable
  · rcases hrest with hfour | hpell
    · subst a
      simpa using sixteen_representable
    · exact pell_covered_square_root_representable hpell

/--
The augmented uniform Pell coverage subsumes the older augmented coverage.
-/
theorem augmented_covered_square_root_pell_covered
    {a : ℕ} (hcov : AugmentedCoveredSquareRoot a) :
    AugmentedPellCoveredSquareRoot a := by
  rcases hcov with hthree | hrest
  · exact Or.inl hthree
  rcases hrest with hfour | hcovered
  · exact Or.inr (Or.inl hfour)
  · exact Or.inr (Or.inr (covered_square_root_pell_covered hcovered))

/--
Clean constructive frontier: after nonsquares, the uniform `k=2`
Pell/Chebyshev recurrence, and the explicit `9` and `16` witnesses, the full
positive Erdős 686 statement is equivalent to representing every square root
outside `AugmentedPellCoveredSquareRoot`.
-/
theorem erdos686_iff_augmented_pell_uncovered_square_root_representable :
    (∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) ↔
    (∀ a : ℕ, 2 ≤ a → ¬ AugmentedPellCoveredSquareRoot a → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) := by
  constructor
  · intro hall a ha _hnot
    exact hall (a ^ 2) (by nlinarith)
  · intro hremaining N hN
    by_cases hN_square : IsSquare N
    · rw [isSquare_iff_exists_sq] at hN_square
      obtain ⟨a, haN⟩ := hN_square
      have ha2 : 2 ≤ a := by
        by_contra hnot
        have ha_le_one : a ≤ 1 := by omega
        have hN_le_one : N ≤ 1 := by
          rw [haN]
          nlinarith
        omega
      by_cases hcov : AugmentedPellCoveredSquareRoot a
      · simpa [haN] using augmented_pell_covered_square_root_representable hcov
      · simpa [haN] using hremaining a ha2 hcov
    · exact nonsquare_representable N hN hN_square

/--
The completed-square form of a `k=2` representation of a square `a^2`.
-/
lemma square_k_two_completed_square_int
    (a n m : ℕ)
    (heq : (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2))) :
    ((2 * (m : ℤ) + 3) ^ 2 - (a : ℤ) ^ 2 * (2 * (n : ℤ) + 3) ^ 2 =
      1 - (a : ℤ) ^ 2) := by
  have heqz : ((m + 1) * (m + 2) : ℕ) = a ^ 2 * ((n + 1) * (n + 2)) := heq
  norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow] at heqz ⊢
  nlinarith

/--
For a `k=2` representation of `a^2`, completing squares gives a factorization
of `a^2-1` over the integers.
-/
lemma square_k_two_factorization_int
    (a n m : ℕ)
    (heq : (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2))) :
    (((a : ℤ) * (2 * (n : ℤ) + 3) - (2 * (m : ℤ) + 3)) *
        ((a : ℤ) * (2 * (n : ℤ) + 3) + (2 * (m : ℤ) + 3)) =
      (a : ℤ) ^ 2 - 1) := by
  have hsq := square_k_two_completed_square_int a n m heq
  nlinarith

lemma square_k_two_factor_left_pos
    (a n m : ℕ) (ha : 2 ≤ a)
    (heq : (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2))) :
    0 < (a : ℤ) * (2 * (n : ℤ) + 3) - (2 * (m : ℤ) + 3) := by
  let A : ℤ := (a : ℤ) * (2 * (n : ℤ) + 3)
  let Y : ℤ := 2 * (m : ℤ) + 3
  have hsq := square_k_two_completed_square_int a n m heq
  have hYnonneg : 0 ≤ Y := by dsimp [Y]; omega
  have hApos : 0 < A := by
    dsimp [A]
    have haz : (2 : ℤ) ≤ a := by exact_mod_cast ha
    nlinarith
  have hYsq_lt_Asq : Y ^ 2 < A ^ 2 := by
    dsimp [A, Y]
    have haz : (2 : ℤ) ≤ a := by exact_mod_cast ha
    nlinarith
  have habs : |Y| < |A| := sq_lt_sq.mp hYsq_lt_Asq
  rw [abs_of_nonneg hYnonneg, abs_of_pos hApos] at habs
  dsimp [A, Y] at habs
  omega

/--
Natural-number factorization forced by a `k=2` representation of `a^2`.
This packages the finite-divisor obstruction/construction for square `k=2`
cases.
-/
lemma square_k_two_factorization_nat
    (a n m : ℕ) (ha : 2 ≤ a)
    (heq : (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2))) :
    (a * (2 * n + 3) - (2 * m + 3)) *
        (a * (2 * n + 3) + (2 * m + 3)) = a ^ 2 - 1 := by
  have hpos := square_k_two_factor_left_pos a n m ha heq
  have hle : 2 * m + 3 ≤ a * (2 * n + 3) := by
    have hz : ((2 * m + 3 : ℕ) : ℤ) < ((a * (2 * n + 3 : ℕ) : ℕ) : ℤ) := by
      simpa [Nat.cast_mul, Nat.cast_add] using hpos
    exact_mod_cast (le_of_lt hz)
  have hint := square_k_two_factorization_int a n m heq
  have hcast_lhs :
      (((a * (2 * n + 3) - (2 * m + 3)) *
        (a * (2 * n + 3) + (2 * m + 3)) : ℕ) : ℤ) =
        (a : ℤ) ^ 2 - 1 := by
    rw [Nat.cast_mul, Nat.cast_sub hle, Nat.cast_add]
    norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
    simpa [mul_assoc, mul_comm, mul_left_comm, add_comm, add_left_comm, add_assoc] using hint
  have hsquare_one : 1 ≤ a ^ 2 := by nlinarith
  have hcast :
      (((a * (2 * n + 3) - (2 * m + 3)) *
        (a * (2 * n + 3) + (2 * m + 3)) : ℕ) : ℤ) =
        ((a ^ 2 - 1 : ℕ) : ℤ) := by
    rw [Nat.cast_sub hsquare_one]
    simpa [Nat.cast_pow] using hcast_lhs
  exact_mod_cast hcast

lemma square_k_two_left_factor_dvd
    (a n m : ℕ) (ha : 2 ≤ a)
    (heq : (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2))) :
    a * (2 * n + 3) - (2 * m + 3) ∣ a ^ 2 - 1 := by
  refine ⟨a * (2 * n + 3) + (2 * m + 3), ?_⟩
  exact (square_k_two_factorization_nat a n m ha heq).symm

/--
Every `k=2` representation of a square `a^2` gives an explicit positive
factor pair `u < v` of `a^2-1`.
-/
lemma square_k_two_factor_pair_data
    (a n m : ℕ) (ha : 2 ≤ a)
    (heq : (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2))) :
    ∃ u v : ℕ,
      0 < u ∧ u < v ∧ u * v = a ^ 2 - 1 ∧
      u = a * (2 * n + 3) - (2 * m + 3) ∧
      v = a * (2 * n + 3) + (2 * m + 3) ∧
      u + v = 2 * (a * (2 * n + 3)) ∧
      v - u = 2 * (2 * m + 3) := by
  let A := a * (2 * n + 3)
  let B := 2 * m + 3
  let u := A - B
  let v := A + B
  have hposz := square_k_two_factor_left_pos a n m ha heq
  have hBltA : B < A := by
    have hz : ((B : ℕ) : ℤ) < ((A : ℕ) : ℤ) := by
      dsimp [A, B]
      simpa [Nat.cast_mul, Nat.cast_add] using hposz
    exact_mod_cast hz
  have hu_pos : 0 < u := by
    dsimp [u]
    omega
  have huv : u < v := by
    dsimp [u, v]
    omega
  have hprod : u * v = a ^ 2 - 1 := by
    dsimp [u, v, A, B]
    exact square_k_two_factorization_nat a n m ha heq
  refine ⟨u, v, hu_pos, huv, hprod, rfl, rfl, ?_, ?_⟩
  · dsimp [u, v, A, B]
    omega
  · dsimp [u, v, A, B]
    omega

/--
Conversely, factor-pair data with the expected sum and difference reconstructs
the cleared `k=2` square equation.
-/
lemma square_k_two_cleared_of_factor_pair_data
    (a n m u v : ℕ) (ha : 2 ≤ a)
    (hprod : u * v = a ^ 2 - 1)
    (hsum : u + v = 2 * (a * (2 * n + 3)))
    (hdiff : v - u = 2 * (2 * m + 3)) :
    (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2)) := by
  have hsquare_one : 1 ≤ a ^ 2 := by nlinarith
  have hprodz : (u : ℤ) * (v : ℤ) = (a : ℤ) ^ 2 - 1 := by
    rw [← Nat.cast_mul, hprod, Nat.cast_sub hsquare_one]
    norm_num [Nat.cast_pow]
  have hsumz : (u : ℤ) + (v : ℤ) = 2 * ((a : ℤ) * (2 * (n : ℤ) + 3)) := by
    exact_mod_cast hsum
  have hdiffz : (v : ℤ) - (u : ℤ) = 2 * (2 * (m : ℤ) + 3) := by
    have hle : u ≤ v := by
      by_contra hnot
      have hvu : v - u = 0 := by omega
      rw [hvu] at hdiff
      omega
    rw [← Nat.cast_sub hle]
    exact_mod_cast hdiff
  have hsq : (2 * (m : ℤ) + 3) ^ 2 - (a : ℤ) ^ 2 * (2 * (n : ℤ) + 3) ^ 2 =
      1 - (a : ℤ) ^ 2 := by
    nlinarith [sq_nonneg ((u : ℤ) + (v : ℤ)), sq_nonneg ((v : ℤ) - (u : ℤ))]
  have htargetz : ((m + 1) * (m + 2) : ℕ) = a ^ 2 * ((n + 1) * (n + 2)) := by
    norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow] at hsq ⊢
    nlinarith
  exact_mod_cast htargetz

def blockProduct (k x : ℕ) : ℕ :=
  ∏ i ∈ Finset.Icc 1 k, (x + i)

def intBlockProduct (k : ℕ) (x : ℤ) : ℤ :=
  ∏ i ∈ Finset.Icc 1 k, (x + (i : ℤ))

/--
Uniformly centered block product.  At the center `T = 2n+k+1`, each factor is
`2(n+i)`, so this is the integer form of the centered equation
`C_k(Y)=N C_k(X)`.
-/
def centeredBlockProduct (k : ℕ) (T : ℤ) : ℤ :=
  ∏ i ∈ Finset.Icc 1 k, (T + (2 * (i : ℤ) - (k : ℤ) - 1))

lemma centeredBlockProduct_center (k n : ℕ) :
    centeredBlockProduct k (2 * (n : ℤ) + (k : ℤ) + 1) =
      (2 ^ k : ℤ) * (blockProduct k n : ℤ) := by
  unfold centeredBlockProduct blockProduct
  calc
    (∏ i ∈ Finset.Icc 1 k,
        (2 * (n : ℤ) + (k : ℤ) + 1 + (2 * (i : ℤ) - (k : ℤ) - 1)))
        = ∏ i ∈ Finset.Icc 1 k, (2 : ℤ) * ((n + i : ℕ) : ℤ) := by
          refine Finset.prod_congr rfl ?_
          intro i hi
          norm_num [Nat.cast_add]
          ring
    _ = (∏ i ∈ Finset.Icc 1 k, (2 : ℤ)) *
          (∏ i ∈ Finset.Icc 1 k, ((n + i : ℕ) : ℤ)) := by
          rw [← Finset.prod_mul_distrib]
    _ = (2 ^ k : ℤ) * (∏ i ∈ Finset.Icc 1 k, ((n + i : ℕ) : ℤ)) := by
          congr 1
          simp [Nat.card_Icc]
    _ = (2 ^ k : ℤ) * ↑(∏ i ∈ Finset.Icc 1 k, (n + i)) := by
          simp

/--
The polynomial `H_{k,d}(a) = P_k(d-a) - 4P_k(-a)` used for congruences
around a hypothetical `N=4` root at `a=-n`.
-/
def fourCongruencePolynomial (k d : ℕ) (a : ℤ) : ℤ :=
  intBlockProduct k ((d : ℤ) - a) - 4 * intBlockProduct k (-a)

/--
Finite-difference certificate kernel: a degree `< k` integer polynomial has
zero `k`th alternating finite difference on the points `0,1,...,k`.
-/
theorem finite_difference_degree_lt_zero (k : ℕ) (P : Polynomial ℤ)
    (hdeg : P.natDegree < k) :
    (∑ a ∈ Finset.range (k + 1),
      ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * P.eval (a : ℤ)) = 0 := by
  have hzero_fun : (fwdDiff (1 : ℤ))^[k] P.eval = 0 :=
    Polynomial.fwdDiff_iter_eq_zero_of_degree_lt hdeg
  have hsum :=
    fwdDiff_iter_eq_sum_shift (h := (1 : ℤ)) (f := P.eval) (n := k) (y := (0 : ℤ))
  rw [hzero_fun] at hsum
  simp only [Pi.zero_apply] at hsum
  rw [hsum]
  simp only [zero_add, nsmul_eq_mul, smul_eq_mul]
  congr 1 with a
  congr 1
  ring_nf

/--
Value-level form of `finite_difference_degree_lt_zero`: if integer values
`q 0,...,q k` come from a degree `< k` polynomial, their alternating `k`th
finite difference vanishes.
-/
theorem finite_difference_values_vanish_of_degree_lt
    (k : ℕ) (P : Polynomial ℤ) (q : ℕ → ℤ) (hdeg : P.natDegree < k)
    (hq : ∀ a, a ∈ Finset.range (k + 1) → q a = P.eval (a : ℤ)) :
    (∑ a ∈ Finset.range (k + 1),
      ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * q a) = 0 := by
  rw [← finite_difference_degree_lt_zero k P hdeg]
  refine Finset.sum_congr rfl ?_
  intro a ha
  rw [hq a ha]

/--
Shifted value-level finite-difference vanishing: if integer values
`q 1,...,q k` come from a degree `< k` polynomial, their alternating `k`th
finite difference, based at `1`, vanishes.
-/
theorem finite_difference_values_vanish_of_degree_lt_at_one
    (k : ℕ) (P : Polynomial ℤ) (q : ℕ → ℤ) (hdeg : P.natDegree < k)
    (hq : ∀ a, a ∈ Finset.range (k + 1) → q (a + 1) = P.eval ((a + 1 : ℕ) : ℤ)) :
    (∑ a ∈ Finset.range (k + 1),
      ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * q (a + 1)) = 0 := by
  have hzero_fun : (fwdDiff (1 : ℤ))^[k] P.eval = 0 :=
    Polynomial.fwdDiff_iter_eq_zero_of_degree_lt hdeg
  have hsum :=
    fwdDiff_iter_eq_sum_shift (h := (1 : ℤ)) (f := P.eval) (n := k) (y := (1 : ℤ))
  have hzero_at_one : (fwdDiff (1 : ℤ))^[k] P.eval (1 : ℤ) = 0 := by
    have happ := congrFun hzero_fun (1 : ℤ)
    simpa using happ
  rw [← hzero_at_one, hsum]
  simp only [nsmul_eq_mul, smul_eq_mul]
  refine Finset.sum_congr rfl ?_
  intro a ha
  rw [hq a ha]
  congr 2
  omega

/--
Top finite-difference coefficient formula, based at `1`: if `q 1,...,q k+1`
are values of a degree-`k` integer polynomial `P`, their alternating `k`th
finite difference is `P.leadingCoeff * k!`.
-/
theorem finite_difference_values_leadingCoeff_at_one
    (k : ℕ) (P : Polynomial ℤ) (q : ℕ → ℤ)
    (hdeg : P.natDegree = k)
    (hq : ∀ a, a ∈ Finset.range (k + 1) → q (a + 1) = P.eval ((a + 1 : ℕ) : ℤ)) :
    (∑ a ∈ Finset.range (k + 1),
      ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * q (a + 1)) =
      P.leadingCoeff * (Nat.factorial k : ℤ) := by
  have hfd := Polynomial.fwdDiff_iter_degree_eq_factorial P
  have hsum :=
    fwdDiff_iter_eq_sum_shift (h := (1 : ℤ)) (f := P.eval) (n := k) (y := (1 : ℤ))
  have hfd_at_one :
      (fwdDiff (1 : ℤ))^[k] P.eval (1 : ℤ) =
        P.leadingCoeff * (Nat.factorial k : ℤ) := by
    rw [← hdeg]
    have happ := congrFun hfd (1 : ℤ)
    simpa [smul_eq_mul] using happ
  rw [← hfd_at_one, hsum]
  simp only [nsmul_eq_mul, smul_eq_mul]
  refine Finset.sum_congr rfl ?_
  intro a ha
  rw [hq a ha]
  congr 2
  omega

/--
Coefficient form of the shifted top finite-difference formula: if `q 1,...,q
k+1` are values of a polynomial of degree at most `k`, their alternating `k`th
finite difference is the coefficient of `X^k` times `k!`.
-/
theorem finite_difference_values_coeff_at_one
    (k : ℕ) (P : Polynomial ℤ) (q : ℕ → ℤ)
    (hdeg : P.natDegree ≤ k)
    (hq : ∀ a, a ∈ Finset.range (k + 1) → q (a + 1) = P.eval ((a + 1 : ℕ) : ℤ)) :
    (∑ a ∈ Finset.range (k + 1),
      ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * q (a + 1)) =
      P.coeff k * (Nat.factorial k : ℤ) := by
  by_cases hdeg_eq : P.natDegree = k
  · have hlead := finite_difference_values_leadingCoeff_at_one k P q hdeg_eq hq
    simpa [Polynomial.leadingCoeff, hdeg_eq] using hlead
  · have hlt : P.natDegree < k := lt_of_le_of_ne hdeg hdeg_eq
    have hzero := finite_difference_values_vanish_of_degree_lt_at_one k P q hlt hq
    have hcoeff : P.coeff k = 0 := Polynomial.coeff_eq_zero_of_natDegree_lt hlt
    simpa [hcoeff] using hzero

/--
Finite-difference quotient certificate: if a degree `≤ k` integer polynomial
`H` has root `-n`, then any integer values `q a` satisfying
`(n+a) * q a = H(a)` for `a=0,...,k` have zero alternating `k`th finite
difference.  This is the abstract algebraic step behind the proposed
polynomial-congruence attack on the remaining `N=4` case.
-/
theorem finite_difference_values_vanish_of_root_quotient
    (k n : ℕ) (H : Polynomial ℤ) (q : ℕ → ℤ)
    (hk : 1 ≤ k) (hn : 0 < n)
    (hdeg : H.natDegree ≤ k)
    (hroot : H.eval (-(n : ℤ)) = 0)
    (hq : ∀ a, a ∈ Finset.range (k + 1) →
      ((n + a : ℕ) : ℤ) * q a = H.eval (a : ℤ)) :
    (∑ a ∈ Finset.range (k + 1),
      ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * q a) = 0 := by
  let Q : Polynomial ℤ := H /ₘ (Polynomial.X - Polynomial.C (-(n : ℤ)))
  have hdegQ : Q.natDegree < k := by
    dsimp [Q]
    rw [Polynomial.natDegree_divByMonic H (Polynomial.monic_X_sub_C (-(n : ℤ)))]
    have hlin :
        (Polynomial.X - Polynomial.C (-(n : ℤ)) : Polynomial ℤ).natDegree = 1 :=
      Polynomial.natDegree_X_sub_C (-(n : ℤ))
    rw [hlin]
    omega
  apply finite_difference_values_vanish_of_degree_lt k Q q hdegQ
  intro a ha
  have hmul_poly : (Polynomial.X - Polynomial.C (-(n : ℤ))) * Q = H := by
    dsimp [Q]
    exact (Polynomial.mul_divByMonic_eq_iff_isRoot.mpr hroot)
  have heval := congrArg (fun P : Polynomial ℤ => P.eval (a : ℤ)) hmul_poly
  simp [Polynomial.eval_mul] at heval
  have hqmul := hq a ha
  have hden_ne : ((n + a : ℕ) : ℤ) ≠ 0 := by
    exact_mod_cast (by omega : n + a ≠ 0)
  apply (mul_left_cancel₀ hden_ne)
  rw [hqmul]
  convert heval.symm using 2
  simp [Nat.cast_add, add_comm]

/--
Polynomial model for `intBlockProduct`: `∏_{i=1}^k (X+i)` over the integers.
-/
noncomputable def intBlockProductPolynomial (k : ℕ) : Polynomial ℤ :=
  ∏ i ∈ Finset.Icc 1 k, (Polynomial.X + Polynomial.C (i : ℤ))

lemma intBlockProductPolynomial_eval (k : ℕ) (x : ℤ) :
    (intBlockProductPolynomial k).eval x = intBlockProduct k x := by
  unfold intBlockProductPolynomial intBlockProduct
  rw [Polynomial.eval_prod]
  simp

lemma intBlockProduct_natCast (k x : ℕ) :
    intBlockProduct k (x : ℤ) = (blockProduct k x : ℤ) := by
  unfold intBlockProduct blockProduct
  simp [Nat.cast_add]

lemma intBlockProductPolynomial_natDegree_le (k : ℕ) :
    (intBlockProductPolynomial k).natDegree ≤ k := by
  unfold intBlockProductPolynomial
  calc
    (∏ i ∈ Finset.Icc 1 k, (Polynomial.X + Polynomial.C (i : ℤ))).natDegree
        ≤ ∑ i ∈ Finset.Icc 1 k, (Polynomial.X + Polynomial.C (i : ℤ)).natDegree := by
          exact Polynomial.natDegree_prod_le _ _
    _ ≤ ∑ i ∈ Finset.Icc 1 k, 1 := by
          refine Finset.sum_le_sum ?_
          intro i hi
          exact Polynomial.natDegree_add_C.trans_le Polynomial.natDegree_X_le
    _ = k := by
          simp [Nat.card_Icc]

/--
Polynomial model for `fourCongruencePolynomial k d a`.
-/
noncomputable def fourCongruencePolynomialPoly (k d : ℕ) : Polynomial ℤ :=
  (intBlockProductPolynomial k).comp (Polynomial.C (d : ℤ) - Polynomial.X) -
    4 * (intBlockProductPolynomial k).comp (-Polynomial.X)

/--
The quotient polynomial `H_{k,d}(X)/(X+n)` attached to a hypothetical
gap-form `N=4` solution, where
`H_{k,d}(X) = P_k(d-X)-4P_k(-X)`.
-/
noncomputable def fourGapQuotientPolynomial (k n d : ℕ) : Polynomial ℤ :=
  fourCongruencePolynomialPoly k d /ₘ (Polynomial.X - Polynomial.C (-(n : ℤ)))

lemma fourCongruencePolynomialPoly_eval (k d : ℕ) (a : ℤ) :
    (fourCongruencePolynomialPoly k d).eval a = fourCongruencePolynomial k d a := by
  unfold fourCongruencePolynomialPoly fourCongruencePolynomial
  simp [Polynomial.eval_sub, Polynomial.eval_mul, intBlockProductPolynomial_eval]

lemma fourCongruencePolynomialPoly_natDegree_le (k d : ℕ) :
    (fourCongruencePolynomialPoly k d).natDegree ≤ k := by
  unfold fourCongruencePolynomialPoly
  apply le_trans (Polynomial.natDegree_sub_le _ _)
  apply max_le
  · apply le_trans Polynomial.natDegree_comp_le
    have h1 : (Polynomial.C (d : ℤ) - Polynomial.X : Polynomial ℤ).natDegree ≤ 1 := by
      have hc : (Polynomial.C (d : ℤ) : Polynomial ℤ).natDegree ≤ 1 := by
        rw [Polynomial.natDegree_C]
        omega
      exact Polynomial.natDegree_sub_le_of_le hc Polynomial.natDegree_X_le
    nlinarith [intBlockProductPolynomial_natDegree_le k]
  · apply le_trans Polynomial.natDegree_mul_le
    have hcomp : ((intBlockProductPolynomial k).comp (-Polynomial.X)).natDegree ≤ k := by
      apply le_trans Polynomial.natDegree_comp_le
      have h1 : (-Polynomial.X : Polynomial ℤ).natDegree ≤ 1 := by
        rw [Polynomial.natDegree_neg]
        exact Polynomial.natDegree_X_le
      nlinarith [intBlockProductPolynomial_natDegree_le k]
    norm_num
    exact hcomp

/--
Finite-difference certificate specialized to a hypothetical gap-form `N=4`
solution. If integer quotients `q a` witness the congruences
`(n+a) * q a = H_{k,d}(a)` for `a=0,...,k`, then their alternating `k`th
finite difference vanishes.
-/
theorem finite_difference_vanishes_of_four_gap_solution
    {k n d : ℕ} (hk : 1 ≤ k) (hn : 0 < n)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (q : ℕ → ℤ)
    (hq : ∀ a, a ∈ Finset.range (k + 1) →
      ((n + a : ℕ) : ℤ) * q a = fourCongruencePolynomial k d a) :
    (∑ a ∈ Finset.range (k + 1),
      ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * q a) = 0 := by
  apply finite_difference_values_vanish_of_root_quotient
    (k := k) (n := n) (H := fourCongruencePolynomialPoly k d) (q := q) hk hn
  · exact fourCongruencePolynomialPoly_natDegree_le k d
  · rw [fourCongruencePolynomialPoly_eval]
    unfold fourCongruencePolynomial
    have hfirst : intBlockProduct k ((d : ℤ) - (-(n : ℤ))) =
        (blockProduct k (n + d) : ℤ) := by
      have hx : (d : ℤ) - (-(n : ℤ)) = ((n + d : ℕ) : ℤ) := by
        simp [Nat.cast_add, add_comm]
      rw [hx]
      exact intBlockProduct_natCast k (n + d)
    have hsecond : intBlockProduct k (-(-(n : ℤ))) = (blockProduct k n : ℤ) := by
      have hx : -(-(n : ℤ)) = (n : ℤ) := by ring
      rw [hx]
      exact intBlockProduct_natCast k n
    rw [hfirst, hsecond]
    have hcast : ((blockProduct k (n + d) : ℕ) : ℤ) =
        4 * ((blockProduct k n : ℕ) : ℤ) := by
      exact_mod_cast heq
    rw [hcast]
    ring
  · intro a ha
    rw [fourCongruencePolynomialPoly_eval]
    exact hq a ha

def shiftedDiffProduct (k d : ℕ) : ℕ :=
  ∏ i ∈ Finset.Icc 1 k, ∏ j ∈ Finset.Icc 1 k, (d + i - j)

def shiftedDiffProductAt (k d j : ℕ) : ℕ :=
  ∏ i ∈ Finset.Icc 1 k, (d + i - j)

def shiftedDiffProductUpperAt (k d j : ℕ) : ℕ :=
  ∏ i ∈ Finset.Icc 1 k, (d + j - i)

def shiftedDiffProductRows (k d : ℕ) : ℕ :=
  ∏ j ∈ Finset.Icc 1 k, shiftedDiffProductAt k d j

def shiftedDiffProductUpperRows (k d : ℕ) : ℕ :=
  ∏ j ∈ Finset.Icc 1 k, shiftedDiffProductUpperAt k d j

def centeredDiffProduct (k d : ℕ) : ℕ :=
  ∏ h ∈ Finset.Icc 0 (2 * k - 2), (d + h - (k - 1))

def lowerBlockLcm (k n : ℕ) : ℕ :=
  (Finset.Icc 1 k).lcm (fun j => n + j)

def upperBlockEssentialLcm (k n d : ℕ) : ℕ :=
  (Finset.Icc 1 k).lcm (fun j => (n + d + j) / Nat.gcd (n + d + j) 4)

def skeletonQuotient (k n d j : ℕ) : ℕ :=
  shiftedDiffProductAt k d j / (n + j)

def transitionDenom (k n d j : ℕ) : ℕ :=
  ((n + j + 1) * (d + k - j)) /
    Nat.gcd ((n + j + 1) * (d + k - j))
      ((n + j) * (d - j))

def SmoothUpTo (B a : ℕ) : Prop :=
  ∀ p, p.Prime → p ∣ a → p ≤ B

def oddPart (n : ℕ) : ℕ :=
  ordCompl[2] n

def oddBlock (k x : ℕ) : ℕ :=
  ∏ i ∈ Finset.Icc 1 k, oddPart (x + i)

lemma blockProduct_pos (k x : ℕ) : 0 < blockProduct k x := by
  unfold blockProduct
  exact Finset.prod_pos (by
    intro i hi
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    omega)

lemma blockProduct_mono (k x y : ℕ) (hxy : x ≤ y) :
    blockProduct k x ≤ blockProduct k y := by
  unfold blockProduct
  refine Finset.prod_le_prod ?nonneg ?le
  · intro i hi
    positivity
  · intro i hi
    omega

lemma blockProduct_cast_q (k x : ℕ) :
    ((blockProduct k x : ℕ) : ℚ) =
      ∏ i ∈ Finset.Icc 1 k, (((x + i : ℕ) : ℚ)) := by
  simp [blockProduct]

lemma oddPart_mul (a b : ℕ) :
    oddPart (a * b) = oddPart a * oddPart b := by
  simpa [oddPart] using Nat.ordCompl_mul a b 2

lemma oddPart_four_mul (a : ℕ) :
    oddPart (4 * a) = oddPart a := by
  rw [show (4 : ℕ) = 2 ^ 2 by norm_num]
  simpa [oddPart] using Nat.ordCompl_self_pow_mul a 2 (by norm_num : Nat.Prime 2)

lemma oddPart_two_pow_mul (r a : ℕ) :
    oddPart ((2 ^ r) * a) = oddPart a := by
  simpa [oddPart] using Nat.ordCompl_self_pow_mul a r (by norm_num : Nat.Prime 2)

lemma oddPart_dvd (n : ℕ) : oddPart n ∣ n := by
  simpa [oddPart] using Nat.ordCompl_dvd n 2

lemma oddPart_pos {n : ℕ} (hn : n ≠ 0) : 0 < oddPart n := by
  simpa [oddPart] using Nat.ordCompl_pos 2 hn

lemma oddBlock_pos (k n : ℕ) : 0 < oddBlock k n := by
  unfold oddBlock
  refine Finset.prod_pos ?_
  intro i hi
  have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  exact oddPart_pos (by omega)

lemma oddBlock_eq_oddPart_blockProduct (k x : ℕ) :
    oddBlock k x = oddPart (blockProduct k x) := by
  unfold oddBlock blockProduct
  induction (Finset.Icc 1 k) using Finset.induction with
  | empty => simp [oddPart]
  | insert i s his ih =>
      simp [Finset.prod_insert his, oddPart_mul, ih, mul_comm]

lemma oddBlock_dvd_blockProduct (k x : ℕ) :
    oddBlock k x ∣ blockProduct k x := by
  rw [oddBlock_eq_oddPart_blockProduct]
  exact oddPart_dvd (blockProduct k x)

lemma four_blockProduct_eq_implies_oddBlock_eq
    {k n m : ℕ} (heq : blockProduct k m = 4 * blockProduct k n) :
    oddBlock k m = oddBlock k n := by
  rw [oddBlock_eq_oddPart_blockProduct, oddBlock_eq_oddPart_blockProduct]
  rw [heq, oddPart_four_mul]

lemma two_pow_blockProduct_eq_implies_oddBlock_eq
    {r k n m : ℕ} (heq : blockProduct k m = (2 ^ r) * blockProduct k n) :
    oddBlock k m = oddBlock k n := by
  rw [oddBlock_eq_oddPart_blockProduct, oddBlock_eq_oddPart_blockProduct]
  rw [heq, oddPart_two_pow_mul]

lemma blockProduct_three_eq_cube_sub (x : ℕ) :
    blockProduct 3 x = (x + 2) ^ 3 - (x + 2) := by
  simp [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  ring_nf
  omega

/--
The centered cubic form of every `k=3` block-product equality.
-/
lemma k_three_center_of_blockProduct_eq (N n m : ℕ)
    (heq : blockProduct 3 m = N * blockProduct 3 n) :
    (m + 2) ^ 3 - (m + 2) = N * ((n + 2) ^ 3 - (n + 2)) := by
  rw [blockProduct_three_eq_cube_sub m, blockProduct_three_eq_cube_sub n] at heq
  exact heq

lemma k_three_even_cubic_eq_eight_blockProduct (x : ℕ) :
    (2 * x + 4) * ((2 * x + 4) ^ 2 - 4) = 8 * blockProduct 3 x := by
  have hsub : (2 * x + 4) ^ 2 - 4 = 4 * x ^ 2 + 16 * x + 12 := by
    have hsq : 4 ≤ (2 * x + 4) ^ 2 := by
      have hbase : 2 ≤ 2 * x + 4 := by omega
      nlinarith
    rw [Nat.sub_eq_iff_eq_add hsq]
    ring
  rw [hsub]
  simp [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  ring

/--
The broken diagonal through the trivial points on the `k=3` square curve
`x(x^2-4) = a^2 y(y^2-4)` gives this exact rational point.  This is a
structural k=3 frontier lemma; it does not assert integral representability.
-/
theorem k_three_broken_diagonal_rational_point (a : ℕ) :
    let x : ℚ := (8 * (a : ℚ) ^ 2 - 2) / (8 * (a : ℚ) ^ 2 + 1)
    let y : ℚ := 6 / (8 * (a : ℚ) ^ 2 + 1)
    x * (x ^ 2 - 4) = (a : ℚ) ^ 2 * (y * (y ^ 2 - 4)) := by
  dsimp
  have hden : (8 * (a : ℚ) ^ 2 + 1) ≠ 0 := by positivity
  field_simp [hden]
  ring

def sixBlockPair (x : ℕ) : ℕ :=
  (x + 1) * (x + 6)

def sixPairCubic (u : ℕ) : ℕ :=
  u * (u + 4) * (u + 6)

lemma blockProduct_six_eq_pairCubic (x : ℕ) :
    blockProduct 6 x = sixPairCubic (sixBlockPair x) := by
  simp [blockProduct, sixPairCubic, sixBlockPair,
    Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  ring

/--
The `k=6` block-product equation is exactly a cubic equation in the paired
quadratic value `(x+1)(x+6)`.
-/
theorem k_six_pair_cubic_of_blockProduct_eq (N n m : ℕ)
    (heq : blockProduct 6 m = N * blockProduct 6 n) :
    sixPairCubic (sixBlockPair m) =
      N * sixPairCubic (sixBlockPair n) := by
  simpa [blockProduct_six_eq_pairCubic] using heq

/--
The rational quotient formulation is equivalent to the cleared natural
block-product equality, for arbitrary `N`.
-/
lemma quotient_eq_iff_blockProduct_eq (N k n m : ℕ) :
    (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) ↔
      blockProduct k m = N * blockProduct k n := by
  have hden_ne : (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) ≠ 0 := by
    rw [← blockProduct_cast_q]
    exact_mod_cast (ne_of_gt (blockProduct_pos k n))
  constructor
  · intro hq
    rw [eq_comm, div_eq_iff hden_ne] at hq
    rw [← blockProduct_cast_q, ← blockProduct_cast_q] at hq
    exact_mod_cast hq
  · intro hnat
    rw [eq_comm, div_eq_iff hden_ne]
    rw [← blockProduct_cast_q, ← blockProduct_cast_q]
    exact_mod_cast hnat

lemma quotient_eq_iff_centeredBlockProduct_eq (N k n m : ℕ) :
    (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) ↔
      centeredBlockProduct k (2 * (m : ℤ) + (k : ℤ) + 1) =
        (N : ℤ) * centeredBlockProduct k (2 * (n : ℤ) + (k : ℤ) + 1) := by
  constructor
  · intro hq
    have hblock := (quotient_eq_iff_blockProduct_eq N k n m).mp hq
    rw [centeredBlockProduct_center, centeredBlockProduct_center]
    have hcast : ((blockProduct k m : ℕ) : ℤ) =
        (N : ℤ) * (blockProduct k n : ℤ) := by
      exact_mod_cast hblock
    rw [hcast]
    ring
  · intro hcenter
    apply (quotient_eq_iff_blockProduct_eq N k n m).mpr
    rw [centeredBlockProduct_center, centeredBlockProduct_center] at hcenter
    have hpow_ne : (2 ^ k : ℤ) ≠ 0 := by positivity
    have hcancel : ((blockProduct k m : ℕ) : ℤ) =
        (N : ℤ) * (blockProduct k n : ℤ) := by
      apply mul_left_cancel₀ hpow_ne
      rw [hcenter]
      ring
    exact_mod_cast hcancel

lemma branch_factor_value_dvd_leading_value
    (g q a : ℕ) (X Y : ℤ) (ha : a ^ g = 64) :
    Y ^ q - (a : ℤ) * X ^ q ∣ Y ^ (q * g) - 64 * X ^ (q * g) := by
  have hdiv : Y ^ q - ((a : ℤ) * X ^ q) ∣
      (Y ^ q) ^ g - ((a : ℤ) * X ^ q) ^ g := by
    exact sub_dvd_pow_sub_pow (Y ^ q) ((a : ℤ) * X ^ q) g
  rw [← pow_mul] at hdiv
  convert hdiv using 1
  rw [mul_pow, ← Int.natCast_pow, ha, ← pow_mul]
  norm_num

lemma branch_factor_value_dvd_leading_value_of_eq
    (k g q a : ℕ) (X Y : ℤ) (hk : k = q * g) (ha : a ^ g = 64) :
    Y ^ q - (a : ℤ) * X ^ q ∣ Y ^ k - 64 * X ^ k := by
  rw [hk]
  exact branch_factor_value_dvd_leading_value g q a X Y ha

lemma branch_factor_eight_value_dvd_leading_value (q : ℕ) (X Y : ℤ) :
    Y ^ q - 8 * X ^ q ∣ Y ^ (2 * q) - 64 * X ^ (2 * q) := by
  simpa [mul_comm, mul_left_comm, mul_assoc] using
    branch_factor_value_dvd_leading_value (g := 2) (q := q) (a := 8) X Y (by norm_num)

lemma branch_factor_four_value_dvd_leading_value (q : ℕ) (X Y : ℤ) :
    Y ^ q - 4 * X ^ q ∣ Y ^ (3 * q) - 64 * X ^ (3 * q) := by
  simpa [mul_comm, mul_left_comm, mul_assoc] using
    branch_factor_value_dvd_leading_value (g := 3) (q := q) (a := 4) X Y (by norm_num)

lemma branch_factor_two_value_dvd_leading_value (q : ℕ) (X Y : ℤ) :
    Y ^ q - 2 * X ^ q ∣ Y ^ (6 * q) - 64 * X ^ (6 * q) := by
  simpa [mul_comm, mul_left_comm, mul_assoc] using
    branch_factor_value_dvd_leading_value (g := 6) (q := q) (a := 2) X Y (by norm_num)

lemma two_or_three_dvd_of_not_coprime_six {k : ℕ}
    (hk : ¬ Nat.Coprime k 6) : 2 ∣ k ∨ 3 ∣ k := by
  by_contra h23
  have h2k : ¬ 2 ∣ k := by
    intro h2
    exact h23 (Or.inl h2)
  have h3k : ¬ 3 ∣ k := by
    intro h3
    exact h23 (Or.inr h3)
  have hg : Nat.gcd k 6 = 1 := by
    let g := Nat.gcd k 6
    have hg_dvd_k : g ∣ k := Nat.gcd_dvd_left k 6
    have hg_dvd_6 : g ∣ 6 := Nat.gcd_dvd_right k 6
    have hg_pos : 0 < g := Nat.gcd_pos_of_pos_right k (by norm_num)
    have hg_le : g ≤ 6 := Nat.le_of_dvd (by norm_num) hg_dvd_6
    have h2g : ¬ 2 ∣ g := by
      intro h2g
      exact h2k (dvd_trans h2g hg_dvd_k)
    have h3g : ¬ 3 ∣ g := by
      intro h3g
      exact h3k (dvd_trans h3g hg_dvd_k)
    change g = 1
    interval_cases g
    · rfl
    · exact False.elim (h2g (by norm_num))
    · exact False.elim (h3g (by norm_num))
    · exact False.elim (h2g (by norm_num))
    · have h56 : ¬ 5 ∣ 6 := by norm_num
      exact False.elim (h56 hg_dvd_6)
    · exact False.elim (h2g (by norm_num))
  exact hk hg

theorem branch_factor_value_exists_of_not_coprime_six
    {k : ℕ} (hkpos : 0 < k) (hk : ¬ Nat.Coprime k 6) :
    ∃ q a : ℕ,
      0 < q ∧ ((a = 8 ∧ k = 2 * q) ∨ (a = 4 ∧ k = 3 * q)) ∧
        ∀ X Y : ℤ, Y ^ q - (a : ℤ) * X ^ q ∣ Y ^ k - 64 * X ^ k := by
  have hk23 := two_or_three_dvd_of_not_coprime_six hk
  rcases hk23 with ⟨q, hkq⟩ | ⟨q, hkq⟩
  · refine ⟨q, 8, ?_, Or.inl ⟨rfl, hkq⟩, ?_⟩
    · omega
    · intro X Y
      rw [hkq]
      exact branch_factor_eight_value_dvd_leading_value q X Y
  · refine ⟨q, 4, ?_, Or.inr ⟨rfl, hkq⟩, ?_⟩
    · omega
    · intro X Y
      rw [hkq]
      exact branch_factor_four_value_dvd_leading_value q X Y

lemma two_factorization_sixtyfour : ((64 : ℕ).factorization 2) = 6 := by
  rw [Nat.factorization_def (64 : ℕ) (by norm_num : Nat.Prime 2)]
  change padicValNat 2 (2 ^ 6) = 6
  exact padicValNat_base_pow (by norm_num : 1 < 2) 6

lemma exponent_dvd_six_of_power_eq_64 {p a : ℕ} (h : a ^ p = 64) :
    p ∣ 6 := by
  have hfac := congrArg (fun n : ℕ => n.factorization 2) h
  simp [Nat.factorization_pow, two_factorization_sixtyfour] at hfac
  exact ⟨a.factorization 2, by omega⟩

lemma no_prime_power_eq_64_of_coprime_six {k p a : ℕ}
    (hp : p.Prime) (hpk : p ∣ k) (hk : Nat.Coprime k 6) :
    a ^ p ≠ 64 := by
  intro h
  have hp6 : p ∣ 6 := exponent_dvd_six_of_power_eq_64 h
  have hcp6 : Nat.Coprime p 6 := hk.coprime_dvd_left hpk
  have hp1 : p = 1 := Nat.eq_one_of_dvd_coprimes hcp6 dvd_rfl hp6
  exact hp.ne_one hp1

lemma odd_of_coprime_six (k : ℕ) (hk : Nat.Coprime k 6) : Odd k := by
  rw [← Nat.not_even_iff_odd, even_iff_two_dvd]
  intro h2
  have h26 : 2 ∣ 6 := by norm_num
  have h21 : 2 ∣ 1 := by
    rw [← hk]
    exact Nat.dvd_gcd h2 h26
  norm_num at h21

private lemma int_multiplicity_two_sixtyfour : multiplicity (2 : ℤ) (64 : ℤ) = 6 := by
  apply multiplicity_eq_of_emultiplicity_eq_some
  rw [emultiplicity_eq_coe]
  constructor <;> norm_num

private lemma six_mod_prime_ne_zero_of_not_dvd {p : ℕ} (_hp : p.Prime) (hp6 : ¬ p ∣ 6) :
    6 % p ≠ 0 := by
  intro hmod
  exact hp6 (Nat.dvd_of_mod_eq_zero hmod)

lemma rat_no_prime_power_eq_64_of_coprime_six {k p : ℕ}
    (hp : p.Prime) (hpk : p ∣ k) (hk : Nat.Coprime k 6) :
    ∀ b : ℚ, b ^ p ≠ (64 : ℚ) := by
  intro b hb
  have hp6 : ¬ p ∣ 6 := by
    intro hp6
    have hcp6 : Nat.Coprime p 6 := hk.coprime_dvd_left hpk
    have hp1 : p = 1 := Nat.eq_one_of_dvd_coprimes hcp6 dvd_rfl hp6
    exact hp.ne_one hp1
  haveI : Fact (Nat.Prime 2) := ⟨by norm_num⟩
  have hbr : ((b : ℝ) ^ p) = (64 : ℤ) := by
    norm_num at hb ⊢
    exact_mod_cast hb
  have hmod : multiplicity (2 : ℤ) (64 : ℤ) % p ≠ 0 := by
    rw [int_multiplicity_two_sixtyfour]
    exact six_mod_prime_ne_zero_of_not_dvd hp hp6
  have hirr : Irrational (b : ℝ) :=
    irrational_nrt_of_n_not_dvd_multiplicity p (by norm_num) 2 hbr hmod
  exact hirr ⟨b, rfl⟩

theorem X_pow_sub_C_sixtyfour_irreducible_of_coprime_six
    (k : ℕ) (hk : Nat.Coprime k 6) :
    Irreducible ((Polynomial.X ^ k - Polynomial.C (64 : ℚ)) : Polynomial ℚ) := by
  exact X_pow_sub_C_irreducible_of_odd (K := ℚ) (a := (64 : ℚ))
    (odd_of_coprime_six k hk)
    (fun p hp hpk => rat_no_prime_power_eq_64_of_coprime_six hp hpk hk)

/--
Every `k=3` quotient representation of a square `a^2` gives an admissible
even integral point on `x(x^2-4) = a^2 y(y^2-4)`, with
`x = 2m+4`, `y = 2n+4`, `y ≥ 4`, and `x ≥ y+6`.
-/
theorem k_three_square_quotient_solution_to_admissible_cubic_point
    (a n m : ℕ) (hgap : m ≥ n + 3)
    (hq : (((a ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 3, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 3, (((n + i : ℕ) : ℚ)))) :
    ∃ x y : ℕ,
      Even x ∧ Even y ∧ 4 ≤ y ∧ x ≥ y + 6 ∧
      x * (x ^ 2 - 4) = a ^ 2 * (y * (y ^ 2 - 4)) := by
  let x := 2 * m + 4
  let y := 2 * n + 4
  refine ⟨x, y, ?_, ?_, ?_, ?_, ?_⟩
  · use m + 2
    dsimp [x]
    ring
  · use n + 2
    dsimp [y]
    ring
  · dsimp [y]
    omega
  · dsimp [x, y]
    omega
  · have hblock := (quotient_eq_iff_blockProduct_eq (a ^ 2) 3 n m).mp hq
    have hx : x * (x ^ 2 - 4) = 8 * blockProduct 3 m := by
      simpa [x] using k_three_even_cubic_eq_eight_blockProduct m
    have hy : y * (y ^ 2 - 4) = 8 * blockProduct 3 n := by
      simpa [y] using k_three_even_cubic_eq_eight_blockProduct n
    rw [hx, hy, hblock]
    ring

/--
Quotient-form `k=6` reduction: every length-six quotient solution gives a
cubic equation in the paired quadratic values `(x+1)(x+6)`.
-/
theorem k_six_pair_cubic_of_quotient_solution (N n m : ℕ)
    (hq : (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 6, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 6, (((n + i : ℕ) : ℚ)))) :
    sixPairCubic (sixBlockPair m) =
      N * sixPairCubic (sixBlockPair n) := by
  exact k_six_pair_cubic_of_blockProduct_eq N n m
    ((quotient_eq_iff_blockProduct_eq N 6 n m).mp hq)

def eightBlockPair (x : ℕ) : ℕ :=
  (x + 1) * (x + 8)

def eightMain (x : ℕ) : ℕ :=
  eightBlockPair x ^ 2 + 14 * eightBlockPair x + 28

def eightEdge (x : ℕ) : ℕ :=
  4 * (2 * x + 9)

/--
The length-eight block splits as a difference of squares after pairing
opposite factors:
`P_8(x) = A(x)^2 - B(x)^2`, where `A = u^2 + 14u + 28`,
`B = 4(2x+9)`, and `u = (x+1)(x+8)`.
-/
lemma blockProduct_eight_eq_main_sq_sub_edge_sq (x : ℕ) :
    ((blockProduct 8 x : ℕ) : ℤ) =
      (eightMain x : ℤ)^2 - (eightEdge x : ℤ)^2 := by
  simp [blockProduct, eightBlockPair, eightMain, eightEdge,
    Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton,
    Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
  ring

lemma four_quotient_eq_iff_blockProduct_eq (k n m : ℕ) :
    (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) ↔
      blockProduct k m = 4 * blockProduct k n := by
  exact quotient_eq_iff_blockProduct_eq 4 k n m

theorem four_quotient_implies_oddBlock_eq
    {k n m : ℕ}
    (hq : (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    oddBlock k m = oddBlock k n := by
  exact four_blockProduct_eq_implies_oddBlock_eq
    ((four_quotient_eq_iff_blockProduct_eq k n m).mp hq)

theorem two_pow_quotient_implies_oddBlock_eq
    (r : ℕ) {k n m : ℕ}
    (hq : (((2 ^ r : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    oddBlock k m = oddBlock k n := by
  exact two_pow_blockProduct_eq_implies_oddBlock_eq
    ((quotient_eq_iff_blockProduct_eq (2 ^ r) k n m).mp hq)

theorem sixtyfour_quotient_implies_oddBlock_eq
    {k n m : ℕ}
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    oddBlock k m = oddBlock k n := by
  simpa using two_pow_quotient_implies_oddBlock_eq
    (r := 6) (k := k) (n := n) (m := m) hq

private lemma reflect_Icc_mem {k i : ℕ} (hi : i ∈ Finset.Icc 1 k) :
    k + 1 - i ∈ Finset.Icc 1 k := by
  have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
  rw [Finset.mem_Icc]
  constructor <;> omega

private lemma reflect_Icc_invol {k i : ℕ} (hi : i ∈ Finset.Icc 1 k) :
    k + 1 - (k + 1 - i) = i := by
  have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
  omega

lemma reflected_blockProduct_eq (k n : ℕ) :
    (∏ i ∈ Finset.Icc 1 k, (n + (k + 1 - i))) = blockProduct k n := by
  unfold blockProduct
  refine Finset.prod_bij'
    (fun i hi => k + 1 - i) (fun j hj => k + 1 - j) ?hi ?hj ?left ?right ?h
  · intro i hi
    exact reflect_Icc_mem hi
  · intro j hj
    exact reflect_Icc_mem hj
  · intro i hi
    exact reflect_Icc_invol hi
  · intro j hj
    exact reflect_Icc_invol hj
  · intro i hi
    rfl

lemma upper_factor_reflection_zmod {k n d i : ℕ}
    (hi : i ∈ Finset.Icc 1 k) :
    (((n + d + i : ℕ) : ZMod (2 * n + d + k + 1)) =
      -(((n + (k + 1 - i) : ℕ) : ZMod (2 * n + d + k + 1)))) := by
  have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
  have hsum : (n + d + i) + (n + (k + 1 - i)) = 2 * n + d + k + 1 := by
    omega
  have hz : (((n + d + i) + (n + (k + 1 - i)) : ℕ) :
      ZMod (2 * n + d + k + 1)) = 0 := by
    rw [hsum]
    exact ZMod.natCast_self (2 * n + d + k + 1)
  rw [Nat.cast_add] at hz
  exact eq_neg_of_add_eq_zero_left hz

/--
Reflection of the shifted block modulo `S = 2n+d+k+1`: the shifted block
is congruent to `(-1)^k` times the original block.
-/
lemma blockProduct_shift_reflection_zmod (k n d : ℕ) :
    ((blockProduct k (n + d) : ℕ) : ZMod (2 * n + d + k + 1)) =
      (-1 : ZMod (2 * n + d + k + 1)) ^ k *
        ((blockProduct k n : ℕ) : ZMod (2 * n + d + k + 1)) := by
  change ((∏ x ∈ Finset.Icc 1 k, ((n + d) + x) : ℕ) :
      ZMod (2 * n + d + k + 1)) =
      (-1 : ZMod (2 * n + d + k + 1)) ^ k *
        ((blockProduct k n : ℕ) : ZMod (2 * n + d + k + 1))
  simp only [Nat.cast_prod]
  calc
    (∏ x ∈ Finset.Icc 1 k, (((n + d) + x : ℕ) :
        ZMod (2 * n + d + k + 1)))
        = ∏ x ∈ Finset.Icc 1 k,
            -(((n + (k + 1 - x) : ℕ) : ZMod (2 * n + d + k + 1))) := by
          refine Finset.prod_congr rfl ?_
          intro x hx
          simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
            upper_factor_reflection_zmod (k := k) (n := n) (d := d) (i := x) hx
    _ = (-1 : ZMod (2 * n + d + k + 1)) ^ (Finset.Icc 1 k).card *
          ∏ x ∈ Finset.Icc 1 k,
            (((n + (k + 1 - x) : ℕ) : ZMod (2 * n + d + k + 1))) := by
          exact Finset.prod_neg
            (fun x => (((n + (k + 1 - x) : ℕ) : ZMod (2 * n + d + k + 1))))
    _ = (-1 : ZMod (2 * n + d + k + 1)) ^ k *
          ((∏ x ∈ Finset.Icc 1 k, (n + (k + 1 - x)) : ℕ) :
            ZMod (2 * n + d + k + 1)) := by
          rw [Nat.card_Icc]
          simp [Nat.cast_prod]
    _ = (-1 : ZMod (2 * n + d + k + 1)) ^ k *
          ((blockProduct k n : ℕ) : ZMod (2 * n + d + k + 1)) := by
          rw [reflected_blockProduct_eq]

/-- The reflection coefficient `4 - (-1)^k`, split into natural parity cases. -/
def reflectionCoeff (k : ℕ) : ℕ :=
  if Even k then 3 else 5

/-- The reflected difference product `(d+k-1)(d+k-3)...(d-k+1)`. -/
def reflectionProduct (k d : ℕ) : ℕ :=
  ∏ i ∈ Finset.Icc 1 k, (d + k + 1 - 2 * i)

/--
For an even block length, an `N=4` shifted block equality forces the reflected
center `S = 2n+d+k+1` to divide `3 * blockProduct k n`.
-/
theorem reflection_even {k n d : ℕ} (hk : Even k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    2 * n + d + k + 1 ∣ 3 * blockProduct k n := by
  let S := 2 * n + d + k + 1
  let P : ZMod S := (blockProduct k n : ℕ)
  have href := blockProduct_shift_reflection_zmod k n d
  have heqz : ((blockProduct k (n + d) : ℕ) : ZMod S) = (4 : ZMod S) * P := by
    rw [heq]
    simp [S, P, Nat.cast_mul]
  have hpow : (-1 : ZMod S) ^ k = 1 := Even.neg_one_pow hk
  have hfour : (4 : ZMod S) * P = P := by
    calc
      (4 : ZMod S) * P = ((blockProduct k (n + d) : ℕ) : ZMod S) := by rw [heqz]
      _ = (-1 : ZMod S) ^ k * P := href
      _ = P := by rw [hpow, one_mul]
  have hz' : (3 : ZMod S) * P = 0 := by
    calc
      (3 : ZMod S) * P = (4 : ZMod S) * P - P := by ring
      _ = P - P := by rw [hfour]
      _ = 0 := by ring
  have hz : ((3 * blockProduct k n : ℕ) : ZMod S) = 0 := by
    simpa [P, Nat.cast_mul] using hz'
  exact (ZMod.natCast_eq_zero_iff (3 * blockProduct k n) S).mp hz

/--
For an odd block length, an `N=4` shifted block equality forces the reflected
center `S = 2n+d+k+1` to divide `5 * blockProduct k n`.
-/
theorem reflection_odd {k n d : ℕ} (hk : Odd k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    2 * n + d + k + 1 ∣ 5 * blockProduct k n := by
  let S := 2 * n + d + k + 1
  let P : ZMod S := (blockProduct k n : ℕ)
  have href := blockProduct_shift_reflection_zmod k n d
  have heqz : ((blockProduct k (n + d) : ℕ) : ZMod S) = (4 : ZMod S) * P := by
    rw [heq]
    simp [S, P, Nat.cast_mul]
  have hpow : (-1 : ZMod S) ^ k = -1 := Odd.neg_one_pow hk
  have hfour : (4 : ZMod S) * P = -P := by
    calc
      (4 : ZMod S) * P = ((blockProduct k (n + d) : ℕ) : ZMod S) := by rw [heqz]
      _ = (-1 : ZMod S) ^ k * P := href
      _ = -P := by rw [hpow, neg_one_mul]
  have hz' : (5 : ZMod S) * P = 0 := by
    calc
      (5 : ZMod S) * P = (4 : ZMod S) * P + P := by ring
      _ = -P + P := by rw [hfour]
      _ = 0 := by ring
  have hz : ((5 * blockProduct k n : ℕ) : ZMod S) = 0 := by
    simpa [P, Nat.cast_mul] using hz'
  exact (ZMod.natCast_eq_zero_iff (5 * blockProduct k n) S).mp hz

/--
Uniform parity form of the reflection congruence:
`S = 2n+d+k+1` divides `(4 - (-1)^k) * P_k(n)`.
-/
theorem reflection_congruence {k n d : ℕ}
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    2 * n + d + k + 1 ∣ reflectionCoeff k * blockProduct k n := by
  unfold reflectionCoeff
  by_cases hk : Even k
  · simpa [hk] using reflection_even hk heq
  · have hkodd : Odd k := Nat.not_even_iff_odd.mp hk
    simpa [hk] using reflection_odd hkodd heq

/--
Each lower-block term has reflected gcd controlled by the corresponding
centered difference.
-/
lemma reflection_gcd_bound (k n d i : ℕ) :
    Nat.gcd (2 * n + d + k + 1) (n + i) ∣ d + k + 1 - 2 * i := by
  let S := 2 * n + d + k + 1
  let g := Nat.gcd S (n + i)
  have hgS : g ∣ S := Nat.gcd_dvd_left S (n + i)
  have hgni : g ∣ n + i := Nat.gcd_dvd_right S (n + i)
  have hg2ni : g ∣ 2 * (n + i) := dvd_mul_of_dvd_right hgni 2
  have hraw : g ∣ S - 2 * (n + i) := Nat.dvd_sub hgS hg2ni
  convert hraw using 1
  simp [S]
  omega

/--
Polynomial congruence family around a hypothetical `N=4` solution:
`n+a` divides `H_{k,d}(a) = P_k(d-a)-4P_k(-a)` for every natural `a`.
For `a=1,...,k` this specializes to the individual divisor skeleton.
-/
theorem polynomial_congruence_family_four {k n d a : ℕ}
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a := by
  let q := n + a
  have hna0 : ((n : ℕ) : ZMod q) + ((a : ℕ) : ZMod q) = 0 := by
    rw [← Nat.cast_add]
    exact ZMod.natCast_self q
  have hn_eq : ((n : ℕ) : ZMod q) = -((a : ℕ) : ZMod q) :=
    eq_neg_of_add_eq_zero_left hna0
  have hfirst :
      ((intBlockProduct k ((d : ℤ) - (a : ℤ)) : ℤ) : ZMod q) =
        ((blockProduct k (n + d) : ℕ) : ZMod q) := by
    unfold intBlockProduct blockProduct
    simp only [Int.cast_prod, Nat.cast_prod]
    refine Finset.prod_congr rfl ?_
    intro i hi
    calc
      (((d : ℤ) - (a : ℤ) + (i : ℤ) : ℤ) : ZMod q)
          = ((d : ℕ) : ZMod q) - ((a : ℕ) : ZMod q) + ((i : ℕ) : ZMod q) := by
            simp [Int.cast_sub, Int.cast_add, Int.cast_natCast]
      _ = ((d : ℕ) : ZMod q) + ((n : ℕ) : ZMod q) + ((i : ℕ) : ZMod q) := by
            rw [hn_eq]
            ring
      _ = ((n + d + i : ℕ) : ZMod q) := by
            simp [Nat.cast_add, add_assoc, add_comm, add_left_comm]
  have hsecond :
      ((intBlockProduct k (-(a : ℤ)) : ℤ) : ZMod q) =
        ((blockProduct k n : ℕ) : ZMod q) := by
    unfold intBlockProduct blockProduct
    simp only [Int.cast_prod, Nat.cast_prod]
    refine Finset.prod_congr rfl ?_
    intro i hi
    calc
      ((-(a : ℤ) + (i : ℤ) : ℤ) : ZMod q)
          = -((a : ℕ) : ZMod q) + ((i : ℕ) : ZMod q) := by
            simp [Int.cast_neg, Int.cast_add, Int.cast_natCast]
      _ = ((n : ℕ) : ZMod q) + ((i : ℕ) : ZMod q) := by
            rw [hn_eq]
      _ = ((n + i : ℕ) : ZMod q) := by
            simp [Nat.cast_add]
  have hz : ((fourCongruencePolynomial k d a : ℤ) : ZMod q) = 0 := by
    unfold fourCongruencePolynomial
    rw [Int.cast_sub, Int.cast_mul, hfirst, hsecond]
    rw [heq]
    simp [Nat.cast_mul]
  exact (ZMod.intCast_zmod_eq_zero_iff_dvd (fourCongruencePolynomial k d a) q).mp hz

/--
The `a=0` member of the polynomial congruence family:
`n` divides `P_k(d)-4k!`.
-/
theorem polynomial_congruence_zero_four {k n d : ℕ}
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ((n : ℕ) : ℤ) ∣ fourCongruencePolynomial k d 0 := by
  simpa using
    (polynomial_congruence_family_four
      (k := k) (n := n) (d := d) (a := 0) heq)

/--
The `a=k+1` member of the polynomial congruence family, one step beyond the
lower-block divisor skeleton.
-/
theorem polynomial_congruence_upper_end_four {k n d : ℕ}
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (((n + k + 1 : ℕ) : ℤ)) ∣ fourCongruencePolynomial k d (k + 1) := by
  have h :=
    polynomial_congruence_family_four
      (k := k) (n := n) (d := d) (a := k + 1) heq
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using h

/--
For `1≤j≤k`, the polynomial congruence value `H_{k,d}(j)` is exactly the
localized lower-row product.  The second block `P_k(-j)` vanishes at these
integer points.
-/
lemma fourCongruencePolynomial_eq_shiftedDiffProductAt
    {k d j : ℕ} (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k) :
    fourCongruencePolynomial k d j = (shiftedDiffProductAt k d j : ℤ) := by
  unfold fourCongruencePolynomial shiftedDiffProductAt intBlockProduct
  have hfirst :
      (∏ i ∈ Finset.Icc 1 k, ((d : ℤ) - (j : ℤ) + (i : ℤ))) =
        (∏ i ∈ Finset.Icc 1 k, ((d + i - j : ℕ) : ℤ)) := by
    refine Finset.prod_congr rfl ?_
    intro i hi
    have hjle : j ≤ k := (Finset.mem_Icc.mp hj).2
    have hile : i ≤ k := (Finset.mem_Icc.mp hi).2
    omega
  have hsecond : (∏ i ∈ Finset.Icc 1 k, (-(j : ℤ) + (i : ℤ))) = 0 := by
    refine Finset.prod_eq_zero hj ?_
    ring
  rw [hfirst, hsecond]
  rw [← Nat.cast_prod]
  ring

/--
Existential finite-difference certificate for a hypothetical gap-form `N=4`
solution: the congruence quotients `q_a = H_{k,d}(a)/(n+a)` exist as integers
for `a=0,...,k`, and their alternating `k`th finite difference is zero.
-/
theorem exists_finite_difference_quotients_of_four_gap_solution
    {k n d : ℕ} (hk : 1 ≤ k) (hn : 0 < n)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    ∃ q : ℕ → ℤ,
      (∀ a, a ∈ Finset.range (k + 1) →
        ((n + a : ℕ) : ℤ) * q a = fourCongruencePolynomial k d a) ∧
      (∑ a ∈ Finset.range (k + 1),
        ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * q a) = 0 := by
  classical
  let q : ℕ → ℤ := fun a => Classical.choose (polynomial_congruence_family_four
    (k := k) (n := n) (d := d) (a := a) heq)
  have hq : ∀ a, a ∈ Finset.range (k + 1) →
      ((n + a : ℕ) : ℤ) * q a = fourCongruencePolynomial k d a := by
    intro a ha
    dsimp [q]
    have hspec := Classical.choose_spec (polynomial_congruence_family_four
      (k := k) (n := n) (d := d) (a := a) heq)
    simpa [mul_comm] using hspec.symm
  exact ⟨q, hq, finite_difference_vanishes_of_four_gap_solution hk hn heq q hq⟩

/--
In a cleared `N=4` equality, each lower-block factor divides the shifted
upper block.
-/
lemma lower_factor_dvd_shifted_block_four {k n d j : ℕ}
    (hj : j ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    n + j ∣ blockProduct k (n + d) := by
  have hterm : n + j ∣ blockProduct k n := by
    simpa [blockProduct] using Finset.dvd_prod_of_mem (fun i => n + i) hj
  have hmul : n + j ∣ 4 * blockProduct k n := dvd_mul_of_dvd_right hterm 4
  simpa [heq] using hmul

lemma upper_factor_mod_lower_factor_zmod {k n d j i : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k) :
    (((n + d + i : ℕ) : ZMod (n + j)) =
      ((d + i - j : ℕ) : ZMod (n + j))) := by
  have hjle : j ≤ k := (Finset.mem_Icc.mp hj).2
  have hsum : n + d + i = (n + j) + (d + i - j) := by
    omega
  rw [hsum, Nat.cast_add, ZMod.natCast_self, zero_add]

/--
Modulo `n+j`, the shifted upper block reduces to the short product
`∏ i, d+i-j`.
-/
lemma upper_product_mod_lower_factor_zmod {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k) :
    ((blockProduct k (n + d) : ℕ) : ZMod (n + j)) =
      ((shiftedDiffProductAt k d j : ℕ) : ZMod (n + j)) := by
  change ((∏ i ∈ Finset.Icc 1 k, ((n + d) + i) : ℕ) : ZMod (n + j)) =
      ((∏ i ∈ Finset.Icc 1 k, (d + i - j) : ℕ) : ZMod (n + j))
  simp only [Nat.cast_prod]
  refine Finset.prod_congr rfl ?_
  intro i hi
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
    upper_factor_mod_lower_factor_zmod
      (k := k) (n := n) (d := d) (j := j) (i := i) hd hj

lemma lower_oddPart_dvd_shifted_block_of_oddBlock_eq {k n d j : ℕ}
    (hj : j ∈ Finset.Icc 1 k)
    (hodd : oddBlock k (n + d) = oddBlock k n) :
    oddPart (n + j) ∣ blockProduct k (n + d) := by
  have hterm : oddPart (n + j) ∣ oddBlock k n := by
    unfold oddBlock
    exact Finset.dvd_prod_of_mem (fun i => oddPart (n + i)) hj
  have hterm_upper : oddPart (n + j) ∣ oddBlock k (n + d) := by
    rwa [hodd]
  exact dvd_trans hterm_upper (oddBlock_dvd_blockProduct k (n + d))

lemma upper_factor_mod_lower_divisor_zmod {a k n d j i : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k) (ha : a ∣ n + j) :
    (((n + d + i : ℕ) : ZMod a) =
      ((d + i - j : ℕ) : ZMod a)) := by
  have hsum : n + d + i = (n + j) + (d + i - j) := by
    have hjle : j ≤ k := (Finset.mem_Icc.mp hj).2
    omega
  rw [hsum, Nat.cast_add]
  have hz : (((n + j : ℕ) : ZMod a)) = 0 :=
    (ZMod.natCast_eq_zero_iff (n + j) a).mpr ha
  rw [hz, zero_add]

lemma upper_product_mod_lower_divisor_zmod {a k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k) (ha : a ∣ n + j) :
    ((blockProduct k (n + d) : ℕ) : ZMod a) =
      ((shiftedDiffProductAt k d j : ℕ) : ZMod a) := by
  change ((∏ i ∈ Finset.Icc 1 k, ((n + d) + i) : ℕ) : ZMod a) =
      ((∏ i ∈ Finset.Icc 1 k, (d + i - j) : ℕ) : ZMod a)
  simp only [Nat.cast_prod]
  refine Finset.prod_congr rfl ?_
  intro i hi
  simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
    upper_factor_mod_lower_divisor_zmod
      (a := a) (k := k) (n := n) (d := d) (j := j) (i := i) hd hj ha

theorem oddPart_lower_dvd_shiftedDiffProductAt_of_oddBlock_eq
    {k n d j : ℕ} (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (hodd : oddBlock k (n + d) = oddBlock k n) :
    oddPart (n + j) ∣ shiftedDiffProductAt k d j := by
  have hnj : oddPart (n + j) ∣ n + j := oddPart_dvd (n + j)
  have hupper := lower_oddPart_dvd_shifted_block_of_oddBlock_eq hj hodd
  have hzupper :
      ((blockProduct k (n + d) : ℕ) : ZMod (oddPart (n + j))) = 0 :=
    (ZMod.natCast_eq_zero_iff (blockProduct k (n + d)) (oddPart (n + j))).mpr hupper
  have hmod :=
    upper_product_mod_lower_divisor_zmod
      (a := oddPart (n + j)) (k := k) (n := n) (d := d) (j := j) hd hj hnj
  have hz : ((shiftedDiffProductAt k d j : ℕ) : ZMod (oddPart (n + j))) = 0 := by
    rwa [hmod] at hzupper
  exact (ZMod.natCast_eq_zero_iff (shiftedDiffProductAt k d j) (oddPart (n + j))).mp hz

theorem oddBlock_dvd_shiftedDiffProductRows_of_oddBlock_eq
    {k n d : ℕ} (hd : k ≤ d)
    (hodd : oddBlock k (n + d) = oddBlock k n) :
    oddBlock k n ∣ shiftedDiffProductRows k d := by
  unfold oddBlock shiftedDiffProductRows
  exact Finset.prod_dvd_prod_of_dvd _ _ (fun j hj =>
    oddPart_lower_dvd_shiftedDiffProductAt_of_oddBlock_eq hd hj hodd)

theorem oddBlock_ne_of_shiftedDiffProductRows_lt
    {k n d : ℕ} (hd : k ≤ d)
    (hlt : shiftedDiffProductRows k d < oddBlock k n) :
    oddBlock k (n + d) ≠ oddBlock k n := by
  intro hodd
  have hdvd := oddBlock_dvd_shiftedDiffProductRows_of_oddBlock_eq hd hodd
  have hrows_pos : 0 < shiftedDiffProductRows k d := by
    unfold shiftedDiffProductRows shiftedDiffProductAt
    refine Finset.prod_pos ?_
    intro j hj
    refine Finset.prod_pos ?_
    intro i hi
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    have hjk : j ≤ k := (Finset.mem_Icc.mp hj).2
    omega
  exact not_le_of_gt hlt (Nat.le_of_dvd hrows_pos hdvd)

theorem oddBlock_ne_of_shiftedDiffProductAt_lt_oddPart
    {k n d j : ℕ} (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (hlt : shiftedDiffProductAt k d j < oddPart (n + j)) :
    oddBlock k (n + d) ≠ oddBlock k n := by
  intro hodd
  have hdvd := oddPart_lower_dvd_shiftedDiffProductAt_of_oddBlock_eq hd hj hodd
  have hrow_pos : 0 < shiftedDiffProductAt k d j := by
    unfold shiftedDiffProductAt
    refine Finset.prod_pos ?_
    intro i hi
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    have hjk : j ≤ k := (Finset.mem_Icc.mp hj).2
    omega
  exact not_le_of_gt hlt (Nat.le_of_dvd hrow_pos hdvd)

/--
The individual lower-block divisor skeleton: a hypothetical cleared `N=4`
solution forces every `n+j` to divide a product depending only on `d,k,j`.
-/
theorem individual_divisor_skeleton_four {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    n + j ∣ shiftedDiffProductAt k d j := by
  have hupper :=
    lower_factor_dvd_shifted_block_four (k := k) (n := n) (d := d) (j := j) hj heq
  have hzupper : ((blockProduct k (n + d) : ℕ) : ZMod (n + j)) = 0 :=
    (ZMod.natCast_eq_zero_iff (blockProduct k (n + d)) (n + j)).mpr hupper
  have hmod :=
    upper_product_mod_lower_factor_zmod (k := k) (n := n) (d := d) (j := j) hd hj
  have hz : ((shiftedDiffProductAt k d j : ℕ) : ZMod (n + j)) = 0 := by
    rwa [hmod] at hzupper
  exact (ZMod.natCast_eq_zero_iff (shiftedDiffProductAt k d j) (n + j)).mp hz

/--
Under an exact gap-form `N=4` equality, the quotient polynomial
`H_{k,d}(X)/(X+n)` takes the localized skeleton quotient values at
`j=1,...,k`.
-/
lemma fourGapQuotientPolynomial_eval_skeletonQuotient
    {k n d j : ℕ} (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (fourGapQuotientPolynomial k n d).eval (j : ℤ) =
      (skeletonQuotient k n d j : ℤ) := by
  have hroot : (fourCongruencePolynomialPoly k d).eval (-(n : ℤ)) = 0 := by
    rw [fourCongruencePolynomialPoly_eval]
    unfold fourCongruencePolynomial
    have hfirst : intBlockProduct k ((d : ℤ) - (-(n : ℤ))) =
        (blockProduct k (n + d) : ℤ) := by
      have hx : (d : ℤ) - (-(n : ℤ)) = ((n + d : ℕ) : ℤ) := by
        simp [Nat.cast_add, add_comm]
      rw [hx]
      exact intBlockProduct_natCast k (n + d)
    have hsecond : intBlockProduct k (-(-(n : ℤ))) = (blockProduct k n : ℤ) := by
      have hx : -(-(n : ℤ)) = (n : ℤ) := by ring
      rw [hx]
      exact intBlockProduct_natCast k n
    rw [hfirst, hsecond]
    have hcast : ((blockProduct k (n + d) : ℕ) : ℤ) =
        4 * ((blockProduct k n : ℕ) : ℤ) := by
      exact_mod_cast heq
    rw [hcast]
    ring
  have hmul_poly :
      (Polynomial.X - Polynomial.C (-(n : ℤ))) * fourGapQuotientPolynomial k n d =
        fourCongruencePolynomialPoly k d := by
    unfold fourGapQuotientPolynomial
    exact (Polynomial.mul_divByMonic_eq_iff_isRoot.mpr hroot)
  have heval := congrArg (fun P : Polynomial ℤ => P.eval (j : ℤ)) hmul_poly
  have heval_norm :
      ((n + j : ℕ) : ℤ) * (fourGapQuotientPolynomial k n d).eval (j : ℤ) =
        (fourCongruencePolynomialPoly k d).eval (j : ℤ) := by
    simpa [fourGapQuotientPolynomial, Polynomial.eval_mul, Nat.cast_add, add_comm] using heval
  have hHj : (fourCongruencePolynomialPoly k d).eval (j : ℤ) =
      (shiftedDiffProductAt k d j : ℤ) := by
    rw [fourCongruencePolynomialPoly_eval]
    exact fourCongruencePolynomial_eq_shiftedDiffProductAt hd hj
  have hmulQ :
      ((n + j : ℕ) : ℤ) * (fourGapQuotientPolynomial k n d).eval (j : ℤ) =
        (shiftedDiffProductAt k d j : ℤ) := by
    rw [heval_norm, hHj]
  have hdiv : n + j ∣ shiftedDiffProductAt k d j :=
    individual_divisor_skeleton_four hd hj heq
  have hmulS :
      ((n + j : ℕ) : ℤ) * (skeletonQuotient k n d j : ℤ) =
        (shiftedDiffProductAt k d j : ℤ) := by
    unfold skeletonQuotient
    rw [mul_comm]
    exact_mod_cast (Nat.div_mul_cancel hdiv)
  have hden_ne : ((n + j : ℕ) : ℤ) ≠ 0 := by
    exact_mod_cast (by
      have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
      omega : n + j ≠ 0)
  exact (mul_left_cancel₀ hden_ne (by rw [hmulQ, hmulS]))

/--
Power-preserving lower-block skeleton: the lcm of the whole lower block divides
the product of the short row products forced by the individual skeleton.
-/
theorem lower_lcm_dvd_shiftedDiffProductRows_four {k n d : ℕ}
    (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    lowerBlockLcm k n ∣ shiftedDiffProductRows k d := by
  unfold lowerBlockLcm shiftedDiffProductRows
  refine Finset.lcm_dvd ?_
  intro j hj
  have hrow : n + j ∣ shiftedDiffProductAt k d j :=
    individual_divisor_skeleton_four hd hj heq
  have hrow_dvd : shiftedDiffProductAt k d j ∣
      ∏ j ∈ Finset.Icc 1 k, shiftedDiffProductAt k d j := by
    exact Finset.dvd_prod_of_mem (fun j => shiftedDiffProductAt k d j) hj
  exact dvd_trans hrow hrow_dvd

/-- Each row product `∏ i, d+i-j` is a subproduct of the centered difference product. -/
lemma shiftedDiffProductAt_dvd_centeredDiffProduct {k d j : ℕ}
    (hj : j ∈ Finset.Icc 1 k) :
    shiftedDiffProductAt k d j ∣ centeredDiffProduct k d := by
  let g : ℕ → ℕ := fun i => k + i - j - 1
  have hinj : Set.InjOn g ↑(Finset.Icc 1 k) := by
    intro a ha b hb h
    have ha1 : 1 ≤ a := (Finset.mem_Icc.mp ha).1
    have hb1 : 1 ≤ b := (Finset.mem_Icc.mp hb).1
    have hjle : j ≤ k := (Finset.mem_Icc.mp hj).2
    dsimp [g] at h
    omega
  have hsubset : Finset.image g (Finset.Icc 1 k) ⊆ Finset.Icc 0 (2 * k - 2) := by
    intro h hh
    rw [Finset.mem_image] at hh
    obtain ⟨i, hi, hgi⟩ := hh
    rw [← hgi]
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    have hjk : j ≤ k := (Finset.mem_Icc.mp hj).2
    rw [Finset.mem_Icc]
    constructor <;> dsimp [g] <;> omega
  have hdiv := Finset.prod_dvd_prod_of_subset (Finset.image g (Finset.Icc 1 k))
    (Finset.Icc 0 (2 * k - 2)) (fun h => d + h - (k - 1)) hsubset
  have hrow_eq : shiftedDiffProductAt k d j =
      ∏ h ∈ Finset.image g (Finset.Icc 1 k), (d + h - (k - 1)) := by
    unfold shiftedDiffProductAt
    rw [Finset.prod_image hinj]
    refine Finset.prod_congr rfl ?_
    intro i hi
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    have hjk : j ≤ k := (Finset.mem_Icc.mp hj).2
    dsimp [g]
    omega
  simpa [centeredDiffProduct, hrow_eq] using hdiv

/--
Sharper power-preserving lower-block skeleton: the lcm of the lower block
divides the single centered difference product `(d-k+1)...(d+k-1)`.
-/
theorem lower_lcm_dvd_centeredDiffProduct_four {k n d : ℕ}
    (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  unfold lowerBlockLcm
  refine Finset.lcm_dvd ?_
  intro j hj
  exact dvd_trans (individual_divisor_skeleton_four hd hj heq)
    (shiftedDiffProductAt_dvd_centeredDiffProduct hj)

/--
Pure divisor-skeleton form of the centered-lcm reduction: if every lower-block
term divides its localized shifted row, then the lower-block lcm divides the
single centered difference product.
-/
theorem lower_lcm_dvd_centeredDiffProduct_of_individual_skeleton {k n d : ℕ}
    (hall : ∀ j, j ∈ Finset.Icc 1 k → n + j ∣ shiftedDiffProductAt k d j) :
    lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  unfold lowerBlockLcm
  refine Finset.lcm_dvd ?_
  intro j hj
  exact dvd_trans (hall j hj) (shiftedDiffProductAt_dvd_centeredDiffProduct hj)

lemma lower_block_term_dvd_lowerBlockLcm {k n j : ℕ}
    (hj : j ∈ Finset.Icc 1 k) :
    n + j ∣ lowerBlockLcm k n := by
  unfold lowerBlockLcm
  exact Finset.dvd_lcm hj

lemma lowerBlockLcm_ne_zero (k n : ℕ) : lowerBlockLcm k n ≠ 0 := by
  intro hzero
  unfold lowerBlockLcm at hzero
  rw [Finset.lcm_eq_zero_iff] at hzero
  rcases hzero with ⟨j, hj, hzeroj⟩
  have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
  omega

lemma centeredDiffProduct_pos {k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    0 < centeredDiffProduct k d := by
  unfold centeredDiffProduct
  refine Finset.prod_pos ?_
  intro h hh
  rw [Finset.mem_Icc] at hh
  have hle : h ≤ 2 * k - 2 := hh.2
  omega

/--
Every prime divisor of the centered difference product is bounded by the top
centered factor `d+k-1`.
-/
lemma centeredDiffProduct_prime_le_bound
    {p k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d)
    (hp : p.Prime) (hdiv : p ∣ centeredDiffProduct k d) :
    p ≤ d + k - 1 := by
  unfold centeredDiffProduct at hdiv
  obtain ⟨h, hh, hph⟩ :=
    (hp.prime.dvd_finset_prod_iff
      (S := Finset.Icc 0 (2 * k - 2))
      (g := fun h => d + h - (k - 1))).mp hdiv
  have hle : h ≤ 2 * k - 2 := (Finset.mem_Icc.mp hh).2
  have hfactor_pos : 0 < d + h - (k - 1) := by omega
  have hfactor_le : d + h - (k - 1) ≤ d + k - 1 := by omega
  exact le_trans (Nat.le_of_dvd hfactor_pos hph) hfactor_le

lemma prime_dvd_centeredDiffProduct_iff
    {p k d : ℕ} (hp : p.Prime) :
    p ∣ centeredDiffProduct k d ↔
      ∃ h, h ∈ Finset.Icc 0 (2 * k - 2) ∧ p ∣ d + h - (k - 1) := by
  unfold centeredDiffProduct
  simpa using
    (hp.prime.dvd_finset_prod_iff
      (S := Finset.Icc 0 (2 * k - 2))
      (g := fun h => d + h - (k - 1)))

lemma centeredDiffProduct_factorization
    {k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    (centeredDiffProduct k d).factorization =
      ∑ h ∈ Finset.Icc 0 (2 * k - 2), (d + h - (k - 1)).factorization := by
  unfold centeredDiffProduct
  have hnonzero : ∀ h ∈ Finset.Icc 0 (2 * k - 2), d + h - (k - 1) ≠ 0 := by
    intro h hh
    exact ne_of_gt (by
      rw [Finset.mem_Icc] at hh
      omega)
  simpa using
    (Nat.factorization_prod
      (S := Finset.Icc 0 (2 * k - 2))
      (g := fun h => d + h - (k - 1)) hnonzero)

lemma centeredDiffProduct_factorization_apply
    {k d p : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    (centeredDiffProduct k d).factorization p =
      ∑ h ∈ Finset.Icc 0 (2 * k - 2), (d + h - (k - 1)).factorization p := by
  have h := congrArg (fun f : ℕ →₀ ℕ => f p)
    (centeredDiffProduct_factorization (k := k) (d := d) hk hd)
  simpa using h

lemma prime_gt_centered_bound_not_dvd_centeredDiffProduct
    {p k d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d)
    (hp : p.Prime) (hgt : d + k - 1 < p) :
    ¬ p ∣ centeredDiffProduct k d := by
  intro hdiv
  have hle := centeredDiffProduct_prime_le_bound hk hd hp hdiv
  omega

/--
A prime divisor of the lower-block lcm that does not divide the centered
difference product is an immediate obstruction to the centered-lcm target.
-/
lemma prime_absent_from_centered_obstructs_lower_lcm
    {k n d p : ℕ} (hpL : p ∣ lowerBlockLcm k n)
    (hpD : ¬ p ∣ centeredDiffProduct k d) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  intro h
  exact hpD (dvd_trans hpL h)

lemma prime_absent_from_centered_lower_term_obstructs_lower_lcm
    {k n d j p : ℕ} (hj : j ∈ Finset.Icc 1 k)
    (hpterm : p ∣ n + j)
    (hpD : ¬ p ∣ centeredDiffProduct k d) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  exact prime_absent_from_centered_obstructs_lower_lcm
    (dvd_trans hpterm (lower_block_term_dvd_lowerBlockLcm hj)) hpD

lemma lower_term_prime_absent_from_centered_factors_obstructs_lower_lcm
    {k n d j p : ℕ}
    (hj : j ∈ Finset.Icc 1 k)
    (hp : p.Prime) (hpterm : p ∣ n + j)
    (habsent : ∀ h, h ∈ Finset.Icc 0 (2 * k - 2) →
      ¬ p ∣ d + h - (k - 1)) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  apply prime_absent_from_centered_lower_term_obstructs_lower_lcm hj hpterm
  intro hpcenter
  obtain ⟨h, hh, hdiv⟩ := (prime_dvd_centeredDiffProduct_iff hp).mp hpcenter
  exact habsent h hh hdiv

lemma lower_term_prime_gt_difference_bound_obstructs_lower_lcm
    {k n d j p : ℕ} (hk : 1 ≤ k) (hd : k ≤ d)
    (hj : j ∈ Finset.Icc 1 k)
    (hp : p.Prime) (hpterm : p ∣ n + j)
    (hgt : d + k - 1 < p) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  exact prime_absent_from_centered_lower_term_obstructs_lower_lcm hj hpterm
    (prime_gt_centered_bound_not_dvd_centeredDiffProduct hk hd hp hgt)

theorem lower_lcm_centered_escape_of_large_prime_in_lower_block
    {k n d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d)
    (hlarge : ∃ j p, j ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ∣ n + j ∧ d + k - 1 < p) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  obtain ⟨j, p, hj, hp, hpterm, hgt⟩ := hlarge
  exact lower_term_prime_gt_difference_bound_obstructs_lower_lcm hk hd hj hp hpterm hgt

/--
P-adic form of the same obstruction: if the centered product has too little
`p`-adic valuation to cover the lower-block lcm, divisibility is impossible.
-/
lemma factorization_obstructs_lower_lcm
    {k n d p : ℕ}
    (hL0 : lowerBlockLcm k n ≠ 0)
    (hD0 : centeredDiffProduct k d ≠ 0)
    (hval : (centeredDiffProduct k d).factorization p <
      (lowerBlockLcm k n).factorization p) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  intro hdiv
  have hle := (Nat.factorization_le_iff_dvd hL0 hD0).mpr hdiv
  have hp_le := hle p
  omega

lemma factorization_obstructs_lower_lcm_of_gap
    {k n d p : ℕ} (hk : 1 ≤ k) (hd : k ≤ d)
    (hval : (centeredDiffProduct k d).factorization p <
      (lowerBlockLcm k n).factorization p) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  exact factorization_obstructs_lower_lcm (lowerBlockLcm_ne_zero k n)
    (ne_of_gt (centeredDiffProduct_pos hk hd)) hval

lemma lower_term_factorization_obstructs_lower_lcm
    {k n d j p : ℕ} (hj : j ∈ Finset.Icc 1 k)
    (hD0 : centeredDiffProduct k d ≠ 0)
    (hval : (centeredDiffProduct k d).factorization p <
      (n + j).factorization p) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  have hterm_dvd : n + j ∣ lowerBlockLcm k n :=
    lower_block_term_dvd_lowerBlockLcm hj
  have hterm0 : n + j ≠ 0 := by
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    omega
  have hL0 : lowerBlockLcm k n ≠ 0 := lowerBlockLcm_ne_zero k n
  have hle := (Nat.factorization_le_iff_dvd hterm0 hL0).mpr hterm_dvd
  exact factorization_obstructs_lower_lcm hL0 hD0 (lt_of_lt_of_le hval (hle p))

lemma lower_term_factorization_obstructs_lower_lcm_of_gap
    {k n d j p : ℕ} (hk : 1 ≤ k) (hd : k ≤ d)
    (hj : j ∈ Finset.Icc 1 k)
    (hval : (centeredDiffProduct k d).factorization p <
      (n + j).factorization p) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  exact lower_term_factorization_obstructs_lower_lcm hj
    (ne_of_gt (centeredDiffProduct_pos hk hd)) hval

/--
For a prime `p ≥ 2k-1`, at most one centered factor can be divisible by `p`.
The proof only uses the centered window width; primality is not needed.
-/
lemma unique_p_divisible_centered_factor
    {k d p : ℕ} (hd : k ≤ d) (hpk : 2 * k - 1 ≤ p)
    {h h' : ℕ} (hh : h ∈ Finset.Icc 0 (2 * k - 2))
    (hh' : h' ∈ Finset.Icc 0 (2 * k - 2))
    (h1 : p ∣ d + h - (k - 1)) (h2 : p ∣ d + h' - (k - 1)) :
    h = h' := by
  rcases le_total h' h with hle | hle
  · have hf_le : d + h' - (k - 1) ≤ d + h - (k - 1) := by omega
    have hsub : (d + h - (k - 1)) - (d + h' - (k - 1)) = h - h' := by omega
    have hh_le : h ≤ 2 * k - 2 := (Finset.mem_Icc.mp hh).2
    have hh'_le : h' ≤ 2 * k - 2 := (Finset.mem_Icc.mp hh').2
    have hmod : d + h - (k - 1) ≡ d + h' - (k - 1) [MOD p] :=
      (Dvd.dvd.modEq_zero_nat h1).trans (Dvd.dvd.zero_modEq_nat h2)
    have hdvd : p ∣ h - h' := by
      have hx := (Nat.modEq_iff_dvd' hf_le).mp hmod.symm
      rwa [hsub] at hx
    rcases Nat.eq_zero_or_pos (h - h') with h0 | hpos
    · omega
    · have hp_le := Nat.le_of_dvd hpos hdvd
      have hdiff_le : h - h' ≤ 2 * k - 2 := by omega
      have hpk' : 2 * k - 2 < p := by omega
      have hdiff_lt : h - h' < p := lt_of_le_of_lt hdiff_le hpk'
      omega
  · have hf_le : d + h - (k - 1) ≤ d + h' - (k - 1) := by omega
    have hsub : (d + h' - (k - 1)) - (d + h - (k - 1)) = h' - h := by omega
    have hh_le : h ≤ 2 * k - 2 := (Finset.mem_Icc.mp hh).2
    have hh'_le : h' ≤ 2 * k - 2 := (Finset.mem_Icc.mp hh').2
    have hmod : d + h' - (k - 1) ≡ d + h - (k - 1) [MOD p] :=
      (Dvd.dvd.modEq_zero_nat h2).trans (Dvd.dvd.zero_modEq_nat h1)
    have hdvd : p ∣ h' - h := by
      have hx := (Nat.modEq_iff_dvd' hf_le).mp hmod.symm
      rwa [hsub] at hx
    rcases Nat.eq_zero_or_pos (h' - h) with h0 | hpos
    · omega
    · have hp_le := Nat.le_of_dvd hpos hdvd
      have hdiff_le : h' - h ≤ 2 * k - 2 := by omega
      have hpk' : 2 * k - 2 < p := by omega
      have hdiff_lt : h' - h < p := lt_of_le_of_lt hdiff_le hpk'
      omega

/--
Residual-bound valuation gap: if every centered residual has nonzero absolute
value below `p^e`, then the centered product has strictly less than `e`
`p`-adic valuation.
-/
lemma centered_factorization_lt_of_large_prime_power_residual_bound
    {k n d : ℕ} {q : ℤ} {j p e : ℕ}
    (hd : k ≤ d) (hj1 : 1 ≤ j) (hjk : j ≤ k)
    (hp : p.Prime) (hpk : 2 * k - 1 ≤ p) (_he : 1 ≤ e)
    (hdvd : p ^ e ∣ n + j)
    (hres : ∀ i : ℤ, 1 - (k : ℤ) ≤ i → i ≤ (k : ℤ) - 1 →
        (n + j : ℤ) - q * ((d : ℤ) + i) ≠ 0 ∧
        |(n + j : ℤ) - q * ((d : ℤ) + i)| < (p : ℤ) ^ e) :
    (centeredDiffProduct k d).factorization p < e := by
  have hk1 : 1 ≤ k := le_trans hj1 hjk
  have hprod := centeredDiffProduct_factorization_apply (k := k) (d := d) (p := p) hk1 hd
  have hkey : ∀ h, h ∈ Finset.Icc 0 (2 * k - 2) → ¬ p ^ e ∣ d + h - (k - 1) := by
    intro h hh hdiv
    let i : ℤ := (h : ℤ) - ((k : ℤ) - 1)
    have hi1 : 1 - (k : ℤ) ≤ i := by dsimp [i]; omega
    have hi2 : i ≤ (k : ℤ) - 1 := by
      have hh2 : h ≤ 2 * k - 2 := (Finset.mem_Icc.mp hh).2
      dsimp [i]
      omega
    have hcast : ((d + h - (k - 1) : ℕ) : ℤ) = (d : ℤ) + i := by
      have hle : k - 1 ≤ d + h := by omega
      rw [Nat.cast_sub hle, Nat.cast_sub (by omega : 1 ≤ k)]
      dsimp [i]
      ring
    have hd1 : (p : ℤ) ^ e ∣ (d : ℤ) + i := by
      have hx : ((p ^ e : ℕ) : ℤ) ∣ ((d + h - (k - 1) : ℕ) : ℤ) := by
        exact_mod_cast hdiv
      simpa [hcast, Nat.cast_pow] using hx
    have hd2 : (p : ℤ) ^ e ∣ (n : ℤ) + (j : ℤ) := by
      have hx : ((p ^ e : ℕ) : ℤ) ∣ ((n + j : ℕ) : ℤ) := by
        exact_mod_cast hdvd
      simpa [Nat.cast_pow, Nat.cast_add] using hx
    have hd3 : (p : ℤ) ^ e ∣ (n : ℤ) + (j : ℤ) - q * ((d : ℤ) + i) := by
      exact dvd_sub hd2 (dvd_mul_of_dvd_right hd1 q)
    obtain ⟨hne, hlt⟩ := hres i hi1 hi2
    have habs : (p : ℤ) ^ e ∣ |(n : ℤ) + (j : ℤ) - q * ((d : ℤ) + i)| :=
      (dvd_abs _ _).mpr hd3
    have hpos_abs : 0 < |(n : ℤ) + (j : ℤ) - q * ((d : ℤ) + i)| :=
      abs_pos.mpr hne
    have hpow_le : (p : ℤ) ^ e ≤ |(n : ℤ) + (j : ℤ) - q * ((d : ℤ) + i)| :=
      Int.le_of_dvd hpos_abs habs
    linarith
  by_cases hex : ∃ h₀ ∈ Finset.Icc 0 (2 * k - 2), p ∣ d + h₀ - (k - 1)
  · obtain ⟨h₀, hh₀, hph₀⟩ := hex
    have hcollapse :
        (∑ h ∈ Finset.Icc 0 (2 * k - 2), (d + h - (k - 1)).factorization p)
          = (d + h₀ - (k - 1)).factorization p := by
      refine Finset.sum_eq_single_of_mem h₀ hh₀ (fun h hh hne => ?_)
      refine Nat.factorization_eq_zero_of_not_dvd (fun hph => hne ?_)
      exact unique_p_divisible_centered_factor hd hpk hh hh₀ hph hph₀
    rw [hprod, hcollapse]
    have hne0 : d + h₀ - (k - 1) ≠ 0 := by omega
    by_contra hge
    push Not at hge
    exact hkey h₀ hh₀ ((Nat.Prime.pow_dvd_iff_le_factorization hp hne0).mpr hge)
  · push Not at hex
    rw [hprod]
    have hsum0 :
        (∑ h ∈ Finset.Icc 0 (2 * k - 2), (d + h - (k - 1)).factorization p) = 0 := by
      refine Finset.sum_eq_zero (fun h hh => ?_)
      exact Nat.factorization_eq_zero_of_not_dvd (hex h hh)
    rw [hsum0]
    omega

/--
Large-prime-power residual escape. If some lower-block term `n+j` carries a
prime power `p^e`, with `p ≥ 2k-1`, and every centered residual
`(n+j) - q(d+i)` for `1-k ≤ i ≤ k-1` is nonzero with absolute value below
`p^e`, then the lower-block lcm cannot divide the centered difference product.

The integer `q` is arbitrary; this theorem is a local factorization obstruction
that can be instantiated later by ratio-window estimates.
-/
theorem lower_lcm_escape_of_large_prime_power_residual_bound
    (k n d : ℕ) (q : ℤ) (hk : 6 ≤ k) (hd : k ≤ d)
    (j : ℕ) (hj : j ∈ Finset.Icc 1 k)
    (p : ℕ) (hp : p.Prime) (hpk : 2 * k - 1 ≤ p)
    (e : ℕ) (he : 1 ≤ e) (hdvd : p ^ e ∣ n + j)
    (hres : ∀ i : ℤ, 1 - (k : ℤ) ≤ i → i ≤ (k : ℤ) - 1 →
        (n + j : ℤ) - q * ((d : ℤ) + i) ≠ 0 ∧
        |(n + j : ℤ) - q * ((d : ℤ) + i)| < (p : ℤ) ^ e) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  obtain ⟨hj1, hjk⟩ := Finset.mem_Icc.mp hj
  have hvalC : (centeredDiffProduct k d).factorization p < e :=
    centered_factorization_lt_of_large_prime_power_residual_bound hd hj1 hjk hp hpk he hdvd hres
  have hterm0 : n + j ≠ 0 := by omega
  have he_le_term : e ≤ (n + j).factorization p :=
    (Nat.Prime.pow_dvd_iff_le_factorization hp hterm0).mp hdvd
  have hval : (centeredDiffProduct k d).factorization p < (n + j).factorization p :=
    lt_of_lt_of_le hvalC he_le_term
  exact lower_term_factorization_obstructs_lower_lcm_of_gap (by omega : 1 ≤ k) hd hj hval

/--
Instantiation of `lower_lcm_escape_of_large_prime_power_residual_bound` from a
global bound `B` on `|n - q*d|`. The non-degeneracy hypothesis rules out zero
centered residuals; the cap bounds their absolute values by `p^e`.
-/
theorem lower_lcm_escape_of_rough_power_gt_cap
    (k n d : ℕ) (q B : ℤ) (hk : 6 ≤ k) (hd : k ≤ d) (hq : 0 ≤ q)
    (hB : |(n : ℤ) - q * (d : ℤ)| ≤ B)
    (hndeg : q * ((k : ℤ) - 1) + (k : ℤ) < |(n : ℤ) - q * (d : ℤ)|)
    (j : ℕ) (hj : j ∈ Finset.Icc 1 k)
    (p : ℕ) (hp : p.Prime) (hpk : 2 * k - 1 ≤ p)
    (e : ℕ) (he : 1 ≤ e) (hdvd : p ^ e ∣ n + j)
    (hcap : B + (k : ℤ) + q * ((k : ℤ) - 1) < (p : ℤ) ^ e) :
    ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d := by
  apply lower_lcm_escape_of_large_prime_power_residual_bound
    k n d q hk hd j hj p hp hpk e he hdvd
  intro i hi1 hi2
  obtain ⟨_hj1, hjk⟩ := Finset.mem_Icc.mp hj
  set t : ℤ := (n : ℤ) - q * (d : ℤ) with htdef
  have hB_t : |t| ≤ B := by
    rw [htdef]
    exact hB
  have hndeg_t : q * ((k : ℤ) - 1) + (k : ℤ) < |t| := by
    rw [htdef]
    exact hndeg
  have hrw : (n + j : ℤ) - q * ((d : ℤ) + i) = t + (j : ℤ) - q * i := by
    rw [htdef]
    ring
  have hiabs : |i| ≤ (k : ℤ) - 1 := abs_le.mpr ⟨by linarith, hi2⟩
  have hqi : |q * i| ≤ q * ((k : ℤ) - 1) := by
    rw [abs_mul, abs_of_nonneg hq]
    exact mul_le_mul_of_nonneg_left hiabs hq
  have hjabs : |(j : ℤ)| ≤ (k : ℤ) := by
    rw [abs_of_nonneg (by positivity)]
    exact_mod_cast hjk
  constructor
  · rw [hrw]
    intro h0
    have ht0 : t = q * i - (j : ℤ) := by linarith
    have ht_bound : |t| ≤ q * ((k : ℤ) - 1) + (k : ℤ) := by
      rw [ht0]
      calc
        |q * i - (j : ℤ)| ≤ |q * i| + |(j : ℤ)| := abs_sub _ _
        _ ≤ q * ((k : ℤ) - 1) + (k : ℤ) := add_le_add hqi hjabs
    exact (not_le.mpr hndeg_t) ht_bound
  · rw [hrw]
    have h1 : |t + (j : ℤ) - q * i| ≤ |t + (j : ℤ)| + |q * i| := abs_sub _ _
    have h2 : |t + (j : ℤ)| ≤ |t| + |(j : ℤ)| := abs_add_le _ _
    calc
      |t + (j : ℤ) - q * i| ≤ |t| + |(j : ℤ)| + |q * i| := by linarith
      _ ≤ B + (k : ℤ) + q * ((k : ℤ) - 1) := by linarith
      _ < (p : ℤ) ^ e := hcap

lemma lower_lcm_not_dvd_centered_iff_exists_lower_term_factorization_gap
    {k n d : ℕ} (hD0 : centeredDiffProduct k d ≠ 0) :
    (¬ lowerBlockLcm k n ∣ centeredDiffProduct k d) ↔
      ∃ j p, j ∈ Finset.Icc 1 k ∧
        (centeredDiffProduct k d).factorization p < (n + j).factorization p := by
  constructor
  · intro hnot
    unfold lowerBlockLcm at hnot
    rw [Finset.lcm_dvd_iff] at hnot
    push Not at hnot
    obtain ⟨j, hj, hterm_not_dvd⟩ := hnot
    have hterm0 : n + j ≠ 0 := by
      have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
      omega
    have hnotforall :
        ¬ ∀ p, (n + j).factorization p ≤ (centeredDiffProduct k d).factorization p := by
      intro hforall
      have hle : (n + j).factorization ≤ (centeredDiffProduct k d).factorization := by
        intro p
        exact hforall p
      exact hterm_not_dvd ((Nat.factorization_le_iff_dvd hterm0 hD0).mp hle)
    push Not at hnotforall
    obtain ⟨p, hp⟩ := hnotforall
    exact ⟨j, p, hj, hp⟩
  · rintro ⟨j, p, hj, hval⟩ hdiv
    have hterm_dvd : n + j ∣ centeredDiffProduct k d := by
      unfold lowerBlockLcm at hdiv
      exact (Finset.lcm_dvd_iff.mp hdiv) j hj
    have hterm0 : n + j ≠ 0 := by
      have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
      omega
    have hle := (Nat.factorization_le_iff_dvd hterm0 hD0).mpr hterm_dvd
    have hp_le := hle p
    omega

lemma lower_lcm_not_dvd_centered_iff_exists_lower_term_factorization_gap_of_gap
    {k n d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d) :
    (¬ lowerBlockLcm k n ∣ centeredDiffProduct k d) ↔
      ∃ j p, j ∈ Finset.Icc 1 k ∧
        (centeredDiffProduct k d).factorization p < (n + j).factorization p := by
  exact lower_lcm_not_dvd_centered_iff_exists_lower_term_factorization_gap
    (ne_of_gt (centeredDiffProduct_pos hk hd))

private lemma div_gcd_dvd_of_dvd_mul {a c b : ℕ} (ha : 0 < a) (h : a ∣ c * b) :
    a / Nat.gcd a c ∣ b := by
  let g := Nat.gcd a c
  have hgpos : 0 < g := Nat.gcd_pos_of_pos_left c ha
  have hgdvda : g ∣ a := Nat.gcd_dvd_left a c
  have hgdvdc : g ∣ c := Nat.gcd_dvd_right a c
  have ha_rewrite : g * (a / g) = a := by
    rw [mul_comm]
    exact Nat.div_mul_cancel hgdvda
  have hc_rewrite : g * (c / g) = c := by
    rw [mul_comm]
    exact Nat.div_mul_cancel hgdvdc
  have hright : g * ((c / g) * b) = c * b := by
    rw [← mul_assoc, hc_rewrite]
  have hmul : g * (a / g) ∣ g * ((c / g) * b) := by
    rw [ha_rewrite, hright]
    exact h
  have hdiv : a / g ∣ (c / g) * b :=
    Nat.dvd_of_mul_dvd_mul_left hgpos hmul
  have hcop : (a / g).Coprime (c / g) := by
    simpa [g] using Nat.coprime_div_gcd_div_gcd (m := a) (n := c) hgpos
  exact hcop.dvd_of_dvd_mul_left hdiv

private lemma dvd_mul_of_div_gcd_dvd {a c b : ℕ}
    (h : a / Nat.gcd a c ∣ b) : a ∣ c * b := by
  let g := Nat.gcd a c
  have hgdvda : g ∣ a := Nat.gcd_dvd_left a c
  have hgdvdc : g ∣ c := Nat.gcd_dvd_right a c
  obtain ⟨t, ht⟩ := h
  obtain ⟨u, hu⟩ := hgdvdc
  refine ⟨u * t, ?_⟩
  have ha_rewrite : g * (a / g) = a := by
    rw [mul_comm]
    exact Nat.div_mul_cancel hgdvda
  calc
    c * b = (g * u) * ((a / g) * t) := by rw [hu, ht]
    _ = (g * (a / g)) * (u * t) := by ring
    _ = a * (u * t) := by rw [ha_rewrite]

private lemma prime_dvd_div_gcd_of_dvd_left_not_dvd_right {a b p : ℕ}
    (hp : p.Prime) (hpa : p ∣ a) (hpb : ¬ p ∣ b) :
    p ∣ a / Nat.gcd a b := by
  let g := Nat.gcd a b
  have hg_dvd_a : g ∣ a := Nat.gcd_dvd_left a b
  have hg_dvd_b : g ∣ b := Nat.gcd_dvd_right a b
  have hnot_pg : ¬ p ∣ g := by
    intro hpg
    exact hpb (dvd_trans hpg hg_dvd_b)
  have hmul : p ∣ g * (a / g) := by
    rw [Nat.mul_div_cancel' hg_dvd_a]
    exact hpa
  exact (Nat.Prime.dvd_mul hp).mp hmul |>.resolve_left hnot_pg

private lemma prime_not_dvd_of_dvd_succ {a p : ℕ}
    (hp : p.Prime) (hpsucc : p ∣ a + 1) :
    ¬ p ∣ a := by
  intro hpa
  have hp1 : p ∣ 1 := by
    have hsub : (a + 1) - a = 1 := by omega
    rw [← hsub]
    exact Nat.dvd_sub hpsucc hpa
  exact hp.not_dvd_one hp1

private lemma not_dvd_of_pos_lt {a p : ℕ} (ha0 : 0 < a) (hap : a < p) :
    ¬ p ∣ a := by
  intro hpa
  have hle : p ≤ a := Nat.le_of_dvd ha0 hpa
  omega

private lemma missing_lcm_cofactor_dvd_overlap_of_dvd_mul {a c b : ℕ}
    (ha : 0 < a) (h : a ∣ c * b) :
    a / Nat.lcm (Nat.gcd a c) (Nat.gcd a b) ∣
      Nat.gcd (Nat.gcd a c) (Nat.gcd a b) := by
  let G := Nat.gcd a c
  let H := Nat.gcd a b
  let L := Nat.lcm G H
  let S := Nat.gcd G H
  have hGdvd_a : G ∣ a := Nat.gcd_dvd_left a c
  have hHdvd_a : H ∣ a := Nat.gcd_dvd_left a b
  have hLdvd_a : L ∣ a := Nat.lcm_dvd hGdvd_a hHdvd_a
  have hLpos : 0 < L := Nat.pos_of_dvd_of_pos hLdvd_a ha
  have hA_b : a / G ∣ b := by
    exact div_gcd_dvd_of_dvd_mul ha h
  have hA_a : a / G ∣ a := Nat.div_dvd_of_dvd hGdvd_a
  have hA_H : a / G ∣ H := Nat.dvd_gcd hA_a hA_b
  have ha_dvd_GH : a ∣ G * H := by
    rcases hA_H with ⟨r, hr⟩
    refine ⟨r, ?_⟩
    calc
      G * H = G * ((a / G) * r) := by rw [hr]
      _ = (G * (a / G)) * r := by ring
      _ = a * r := by rw [Nat.mul_div_cancel' hGdvd_a]
  have ha_dvd_LS : a ∣ L * S := by
    have hSL : S * L = G * H := by
      simp [S, L, G, H, Nat.gcd_mul_lcm]
    have hLS : L * S = G * H := by
      rw [mul_comm L S]
      exact hSL
    simpa [hLS] using ha_dvd_GH
  exact (Nat.div_dvd_iff_dvd_mul hLdvd_a hLpos).mpr ha_dvd_LS

private lemma dvd_mul_iff_missing_lcm_dvd_overlap {a c b : ℕ} (ha : 0 < a) :
    a ∣ c * b ↔
      a / Nat.lcm (Nat.gcd a c) (Nat.gcd a b) ∣
        Nat.gcd (Nat.gcd a c) (Nat.gcd a b) := by
  constructor
  · exact missing_lcm_cofactor_dvd_overlap_of_dvd_mul ha
  · intro hmissing
    let G := Nat.gcd a c
    let H := Nat.gcd a b
    let L := Nat.lcm G H
    let S := Nat.gcd G H
    have hGdvd_a : G ∣ a := Nat.gcd_dvd_left a c
    have hHdvd_a : H ∣ a := Nat.gcd_dvd_left a b
    have hLdvd_a : L ∣ a := Nat.lcm_dvd hGdvd_a hHdvd_a
    have ha_eq : L * (a / L) = a := Nat.mul_div_cancel' hLdvd_a
    have hLM_dvd_LS : L * (a / L) ∣ L * S := Nat.mul_dvd_mul_left L hmissing
    have hSL : S * L = G * H := by
      simp [S, L, G, H, Nat.gcd_mul_lcm]
    have hLS : L * S = G * H := by
      rw [mul_comm L S]
      exact hSL
    have hGH_dvd_cb : G * H ∣ c * b :=
      Nat.mul_dvd_mul (Nat.gcd_dvd_right a c) (Nat.gcd_dvd_right a b)
    rw [← ha_eq]
    exact dvd_trans hLM_dvd_LS (by simpa [hLS] using hGH_dvd_cb)

/--
In a cleared `N=4` equality, each upper-block factor divided by its common
factor with `4` divides the lower block.
-/
lemma upper_factor_div_gcd_dvd_lower_block_four {k n d j : ℕ}
    (hj : j ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (n + d + j) / Nat.gcd (n + d + j) 4 ∣ blockProduct k n := by
  have hterm : n + d + j ∣ blockProduct k (n + d) := by
    simpa [blockProduct, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
      Finset.dvd_prod_of_mem (fun i => n + d + i) hj
  have hprod : n + d + j ∣ 4 * blockProduct k n := by
    simpa [heq] using hterm
  have hpos : 0 < n + d + j := by
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    omega
  exact div_gcd_dvd_of_dvd_mul hpos hprod

lemma lower_factor_mod_upper_divisor_zmod {k n d j i : ℕ}
    (hd : k ≤ d) (hi : i ∈ Finset.Icc 1 k) :
    (((n + i : ℕ) : ZMod ((n + d + j) / Nat.gcd (n + d + j) 4)) =
      -((d + j - i : ℕ) : ZMod ((n + d + j) / Nat.gcd (n + d + j) 4))) := by
  let a := n + d + j
  let q := a / Nat.gcd a 4
  have hg : Nat.gcd a 4 ∣ a := Nat.gcd_dvd_left a 4
  have hqdiva : q ∣ a := Nat.div_dvd_of_dvd hg
  have ha_zero : ((a : ℕ) : ZMod q) = 0 :=
    (ZMod.natCast_eq_zero_iff a q).mpr hqdiva
  have hsum : (n + i) + (d + j - i) = a := by
    have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
    omega
  have hz : (((n + i) + (d + j - i) : ℕ) : ZMod q) = 0 := by
    rw [hsum]
    exact ha_zero
  rw [Nat.cast_add] at hz
  exact eq_neg_of_add_eq_zero_left hz

/--
Modulo the essential upper-block factor, the lower block is a signed short
difference product.
-/
lemma lower_product_mod_upper_divisor_zmod {k n d j : ℕ}
    (hd : k ≤ d) :
    ((blockProduct k n : ℕ) : ZMod ((n + d + j) / Nat.gcd (n + d + j) 4)) =
      (-1 : ZMod ((n + d + j) / Nat.gcd (n + d + j) 4)) ^ k *
        ((shiftedDiffProductUpperAt k d j : ℕ) :
          ZMod ((n + d + j) / Nat.gcd (n + d + j) 4)) := by
  let q := (n + d + j) / Nat.gcd (n + d + j) 4
  change ((∏ i ∈ Finset.Icc 1 k, (n + i) : ℕ) : ZMod q) =
      (-1 : ZMod q) ^ k *
        ((∏ i ∈ Finset.Icc 1 k, (d + j - i) : ℕ) : ZMod q)
  simp only [Nat.cast_prod]
  calc
    (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ZMod q)))
        = ∏ i ∈ Finset.Icc 1 k, -(((d + j - i : ℕ) : ZMod q)) := by
          refine Finset.prod_congr rfl ?_
          intro i hi
          exact lower_factor_mod_upper_divisor_zmod
            (k := k) (n := n) (d := d) (j := j) (i := i) hd hi
    _ = (-1 : ZMod q) ^ (Finset.Icc 1 k).card *
          ∏ i ∈ Finset.Icc 1 k, (((d + j - i : ℕ) : ZMod q)) := by
          exact Finset.prod_neg (fun i => (((d + j - i : ℕ) : ZMod q)))
    _ = (-1 : ZMod q) ^ k *
          ∏ i ∈ Finset.Icc 1 k, (((d + j - i : ℕ) : ZMod q)) := by
          have hcard : (Finset.Icc 1 k).card = k := by
            rw [Nat.card_Icc]
            omega
          rw [hcard]

/--
The individual upper-block divisor skeleton: after removing the possible
factor shared with `4`, every `n+d+j` divides a short difference product.
-/
theorem upper_individual_divisor_skeleton_four {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (n + d + j) / Nat.gcd (n + d + j) 4 ∣ shiftedDiffProductUpperAt k d j := by
  let q := (n + d + j) / Nat.gcd (n + d + j) 4
  have hqP : q ∣ blockProduct k n :=
    upper_factor_div_gcd_dvd_lower_block_four
      (k := k) (n := n) (d := d) (j := j) hj heq
  have hzP : ((blockProduct k n : ℕ) : ZMod q) = 0 :=
    (ZMod.natCast_eq_zero_iff (blockProduct k n) q).mpr hqP
  have hmod := lower_product_mod_upper_divisor_zmod (k := k) (n := n) (d := d) (j := j) hd
  have hzero_signed :
      (-1 : ZMod q) ^ k * ((shiftedDiffProductUpperAt k d j : ℕ) : ZMod q) = 0 := by
    rw [← hmod]
    exact hzP
  have hzE : ((shiftedDiffProductUpperAt k d j : ℕ) : ZMod q) = 0 := by
    rcases Nat.even_or_odd k with hk | hk
    · rw [Even.neg_one_pow hk, one_mul] at hzero_signed
      exact hzero_signed
    · rw [Odd.neg_one_pow hk, neg_one_mul] at hzero_signed
      exact neg_eq_zero.mp hzero_signed
  exact (ZMod.natCast_eq_zero_iff (shiftedDiffProductUpperAt k d j) q).mp hzE

/--
Power-preserving upper-block skeleton after removing the possible common
factor with `4` from each upper-block term.
-/
theorem upper_lcm_dvd_shiftedDiffProductUpperRows_four {k n d : ℕ}
    (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    upperBlockEssentialLcm k n d ∣ shiftedDiffProductUpperRows k d := by
  unfold upperBlockEssentialLcm shiftedDiffProductUpperRows
  refine Finset.lcm_dvd ?_
  intro j hj
  have hrow :
      (n + d + j) / Nat.gcd (n + d + j) 4 ∣ shiftedDiffProductUpperAt k d j :=
    upper_individual_divisor_skeleton_four hd hj heq
  have hrow_dvd : shiftedDiffProductUpperAt k d j ∣
      ∏ j ∈ Finset.Icc 1 k, shiftedDiffProductUpperAt k d j := by
    exact Finset.dvd_prod_of_mem (fun j => shiftedDiffProductUpperAt k d j) hj
  exact dvd_trans hrow hrow_dvd

/-- Each upper row product `∏ i, d+j-i` is a subproduct of the centered difference product. -/
lemma shiftedDiffProductUpperAt_dvd_centeredDiffProduct {k d j : ℕ}
    (hj : j ∈ Finset.Icc 1 k) :
    shiftedDiffProductUpperAt k d j ∣ centeredDiffProduct k d := by
  let g : ℕ → ℕ := fun i => k + j - i - 1
  have hinj : Set.InjOn g ↑(Finset.Icc 1 k) := by
    intro a ha b hb h
    have ha1 : 1 ≤ a := (Finset.mem_Icc.mp ha).1
    have hb1 : 1 ≤ b := (Finset.mem_Icc.mp hb).1
    have hak : a ≤ k := (Finset.mem_Icc.mp ha).2
    have hbk : b ≤ k := (Finset.mem_Icc.mp hb).2
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    dsimp [g] at h
    omega
  have hsubset : Finset.image g (Finset.Icc 1 k) ⊆ Finset.Icc 0 (2 * k - 2) := by
    intro h hh
    rw [Finset.mem_image] at hh
    obtain ⟨i, hi, hgi⟩ := hh
    rw [← hgi]
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    have hjk : j ≤ k := (Finset.mem_Icc.mp hj).2
    rw [Finset.mem_Icc]
    constructor <;> dsimp [g] <;> omega
  have hdiv := Finset.prod_dvd_prod_of_subset (Finset.image g (Finset.Icc 1 k))
    (Finset.Icc 0 (2 * k - 2)) (fun h => d + h - (k - 1)) hsubset
  have hrow_eq : shiftedDiffProductUpperAt k d j =
      ∏ h ∈ Finset.image g (Finset.Icc 1 k), (d + h - (k - 1)) := by
    unfold shiftedDiffProductUpperAt
    rw [Finset.prod_image hinj]
    refine Finset.prod_congr rfl ?_
    intro i hi
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    have hjk : j ≤ k := (Finset.mem_Icc.mp hj).2
    dsimp [g]
    omega
  simpa [centeredDiffProduct, hrow_eq] using hdiv

/--
Sharper upper-block skeleton: after removing common factors with `4`, the lcm
of the upper block also divides the single centered difference product.
-/
theorem upper_lcm_dvd_centeredDiffProduct_four {k n d : ℕ}
    (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    upperBlockEssentialLcm k n d ∣ centeredDiffProduct k d := by
  unfold upperBlockEssentialLcm
  refine Finset.lcm_dvd ?_
  intro j hj
  exact dvd_trans (upper_individual_divisor_skeleton_four hd hj heq)
    (shiftedDiffProductUpperAt_dvd_centeredDiffProduct hj)

lemma blockProduct_succ (k x : ℕ) :
    blockProduct (k + 1) x = blockProduct k x * (x + k + 1) := by
  unfold blockProduct
  rw [Finset.prod_Icc_succ_top]
  · ring
  · omega

lemma blockProduct_pred_mul (k x : ℕ) (hx : 0 < x) :
    blockProduct k (x - 1) * (x + k) = blockProduct k x * x := by
  induction k with
  | zero =>
      simp [blockProduct]
  | succ k ih =>
      rw [blockProduct_succ k (x - 1), blockProduct_succ k x]
      have hshift : x - 1 + k + 1 = x + k := by omega
      rw [hshift]
      calc
        (blockProduct k (x - 1) * (x + k)) * (x + (k + 1))
            = (blockProduct k x * x) * (x + (k + 1)) := by rw [ih]
        _ = (blockProduct k x * (x + k + 1)) * x := by ring

lemma shiftedDiffProductAt_eq_blockProduct {k d j : ℕ} (hjd : j ≤ d) :
    shiftedDiffProductAt k d j = blockProduct k (d - j) := by
  unfold shiftedDiffProductAt blockProduct
  refine Finset.prod_congr rfl ?_
  intro i hi
  omega

lemma shiftedDiffProductAt_pos {k d j : ℕ} (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k) :
    0 < shiftedDiffProductAt k d j := by
  unfold shiftedDiffProductAt
  refine Finset.prod_pos ?_
  intro i hi
  have hi_ge : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hj_le : j ≤ k := (Finset.mem_Icc.mp hj).2
  omega

/-- Consecutive skeleton row products differ by replacing the top factor with the bottom factor. -/
lemma shiftedDiffProductAt_succ_mul {k d j : ℕ} (hd : k ≤ d)
    (hj : j ∈ Finset.Icc 1 (k - 1)) :
    shiftedDiffProductAt k d (j + 1) * (d + k - j) =
      shiftedDiffProductAt k d j * (d - j) := by
  have hj_ge : 1 ≤ j := (Finset.mem_Icc.mp hj).1
  have hj_le : j ≤ k - 1 := (Finset.mem_Icc.mp hj).2
  have hj_le_d : j ≤ d := by omega
  have hj1_le_d : j + 1 ≤ d := by omega
  rw [shiftedDiffProductAt_eq_blockProduct (k := k) (d := d) (j := j) hj_le_d]
  rw [shiftedDiffProductAt_eq_blockProduct (k := k) (d := d) (j := j + 1) hj1_le_d]
  have hx : 0 < d - j := by omega
  have hpred := blockProduct_pred_mul k (d - j) hx
  have harg1 : d - (j + 1) = d - j - 1 := by omega
  have harg2 : d - j + k = d + k - j := by omega
  simpa [harg1, harg2] using hpred

/--
Consecutive skeleton quotients satisfy the exact multiplicative relation
behind the strictly decreasing quotient chain.
-/
theorem skeletonQuotient_succ_relation_four {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 (k - 1))
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    skeletonQuotient k n d (j + 1) * (n + j + 1) * (d + k - j) =
      skeletonQuotient k n d j * (n + j) * (d - j) := by
  have hj_ge : 1 ≤ j := (Finset.mem_Icc.mp hj).1
  have hj_le : j ≤ k - 1 := (Finset.mem_Icc.mp hj).2
  have hj_mem : j ∈ Finset.Icc 1 k := by
    rw [Finset.mem_Icc]
    constructor <;> omega
  have hj1_mem : j + 1 ∈ Finset.Icc 1 k := by
    rw [Finset.mem_Icc]
    constructor <;> omega
  have hdivj : n + j ∣ shiftedDiffProductAt k d j :=
    individual_divisor_skeleton_four hd hj_mem heq
  have hdivj1 : n + (j + 1) ∣ shiftedDiffProductAt k d (j + 1) :=
    individual_divisor_skeleton_four hd hj1_mem heq
  have hrow := shiftedDiffProductAt_succ_mul (k := k) (d := d) (j := j) hd hj
  unfold skeletonQuotient
  have hcancelj : shiftedDiffProductAt k d j / (n + j) * (n + j) =
      shiftedDiffProductAt k d j :=
    Nat.div_mul_cancel hdivj
  have hcancelj1 : shiftedDiffProductAt k d (j + 1) / (n + (j + 1)) * (n + (j + 1)) =
      shiftedDiffProductAt k d (j + 1) :=
    Nat.div_mul_cancel hdivj1
  calc
    (shiftedDiffProductAt k d (j + 1) / (n + (j + 1)) * (n + j + 1)) *
        (d + k - j)
        = shiftedDiffProductAt k d (j + 1) * (d + k - j) := by
          rw [show n + j + 1 = n + (j + 1) by omega, hcancelj1]
    _ = shiftedDiffProductAt k d j * (d - j) := hrow
    _ = (shiftedDiffProductAt k d j / (n + j) * (n + j)) * (d - j) := by
          rw [hcancelj]

/--
Row-only version of the consecutive quotient relation.  It needs only the two
adjacent row divisibilities, not the full `N=4` block equality.
-/
theorem skeletonQuotient_succ_relation_of_row_divisibilities {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 (k - 1))
    (hdivj : n + j ∣ shiftedDiffProductAt k d j)
    (hdivj1 : n + (j + 1) ∣ shiftedDiffProductAt k d (j + 1)) :
    skeletonQuotient k n d (j + 1) * (n + j + 1) * (d + k - j) =
      skeletonQuotient k n d j * (n + j) * (d - j) := by
  have hrow := shiftedDiffProductAt_succ_mul (k := k) (d := d) (j := j) hd hj
  unfold skeletonQuotient
  have hcancelj : shiftedDiffProductAt k d j / (n + j) * (n + j) =
      shiftedDiffProductAt k d j :=
    Nat.div_mul_cancel hdivj
  have hcancelj1 : shiftedDiffProductAt k d (j + 1) / (n + (j + 1)) * (n + (j + 1)) =
      shiftedDiffProductAt k d (j + 1) :=
    Nat.div_mul_cancel hdivj1
  calc
    (shiftedDiffProductAt k d (j + 1) / (n + (j + 1)) * (n + j + 1)) *
        (d + k - j)
        = shiftedDiffProductAt k d (j + 1) * (d + k - j) := by
          rw [show n + j + 1 = n + (j + 1) by omega, hcancelj1]
    _ = shiftedDiffProductAt k d j * (d - j) := hrow
    _ = (shiftedDiffProductAt k d j / (n + j) * (n + j)) * (d - j) := by
          rw [hcancelj]

/--
Adjacent surviving rows force the transition denominator to divide the current
row quotient.
-/
theorem transitionDenom_dvd_skeletonQuotient_of_adjacent_rows {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 (k - 1))
    (hdivj : n + j ∣ shiftedDiffProductAt k d j)
    (hdivj1 : n + (j + 1) ∣ shiftedDiffProductAt k d (j + 1)) :
    transitionDenom k n d j ∣ skeletonQuotient k n d j := by
  let A := (n + j + 1) * (d + k - j)
  let B := (n + j) * (d - j)
  have hrel :=
    skeletonQuotient_succ_relation_of_row_divisibilities
      (k := k) (n := n) (d := d) (j := j) hd hj hdivj hdivj1
  have hApos : 0 < A := by
    have hj_bounds := Finset.mem_Icc.mp hj
    have hright : 0 < d + k - j := by
      have hj_lt_k : j < k := by omega
      exact Nat.sub_pos_of_lt (lt_of_lt_of_le hj_lt_k (Nat.le_add_left k d))
    have hleft : 0 < n + j + 1 := by
      exact Nat.succ_pos (n + j)
    dsimp [A]
    exact Nat.mul_pos hleft hright
  have hA_dvd : A ∣ B * skeletonQuotient k n d j := by
    refine ⟨skeletonQuotient k n d (j + 1), ?_⟩
    dsimp [A, B]
    simpa [mul_assoc, mul_comm, mul_left_comm] using hrel.symm
  have hden := div_gcd_dvd_of_dvd_mul (a := A) (c := B)
    (b := skeletonQuotient k n d j) hApos hA_dvd
  simpa [transitionDenom, A, B, Nat.add_assoc] using hden

/--
If the current row divides, transition-denominator divisibility forces the next
row to divide.  Thus the transition denominator is exactly the next-row
obstruction.
-/
theorem row_succ_dvd_of_transitionDenom_dvd_skeletonQuotient {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 (k - 1))
    (hdivj : n + j ∣ shiftedDiffProductAt k d j)
    (htrans : transitionDenom k n d j ∣ skeletonQuotient k n d j) :
    n + (j + 1) ∣ shiftedDiffProductAt k d (j + 1) := by
  let A := (n + j + 1) * (d + k - j)
  let B := (n + j) * (d - j)
  let C := d + k - j
  have hrow := shiftedDiffProductAt_succ_mul (k := k) (d := d) (j := j) hd hj
  have hcancelj : skeletonQuotient k n d j * (n + j) =
      shiftedDiffProductAt k d j := by
    unfold skeletonQuotient
    exact Nat.div_mul_cancel hdivj
  have hCpos : 0 < C := by
    have hj_bounds := Finset.mem_Icc.mp hj
    have hj_lt_k : j < k := by omega
    dsimp [C]
    exact Nat.sub_pos_of_lt (lt_of_lt_of_le hj_lt_k (Nat.le_add_left k d))
  have hA_dvd_QB : A ∣ B * skeletonQuotient k n d j := by
    have h := dvd_mul_of_div_gcd_dvd (a := A) (c := B)
      (b := skeletonQuotient k n d j) ?_
    · simpa [transitionDenom, A, B, Nat.add_assoc] using h
    · simpa [transitionDenom, A, B, Nat.add_assoc] using htrans
  have hrowQ : shiftedDiffProductAt k d (j + 1) * C =
      skeletonQuotient k n d j * B := by
    dsimp [B, C]
    calc
      shiftedDiffProductAt k d (j + 1) * (d + k - j)
          = shiftedDiffProductAt k d j * (d - j) := hrow
      _ = (skeletonQuotient k n d j * (n + j)) * (d - j) := by
            rw [← hcancelj]
      _ = skeletonQuotient k n d j * ((n + j) * (d - j)) := by ring
  have hA_dvd_row : (n + j + 1) * C ∣
      shiftedDiffProductAt k d (j + 1) * C := by
    rw [hrowQ]
    simpa [A, B, mul_comm, mul_left_comm, mul_assoc] using hA_dvd_QB
  have hnext : n + j + 1 ∣ shiftedDiffProductAt k d (j + 1) := by
    exact Nat.dvd_of_mul_dvd_mul_right hCpos hA_dvd_row
  simpa [Nat.add_assoc] using hnext

theorem transitionDenom_dvd_skeletonQuotient_iff_row_succ_dvd {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 (k - 1))
    (hdivj : n + j ∣ shiftedDiffProductAt k d j) :
    transitionDenom k n d j ∣ skeletonQuotient k n d j ↔
      n + (j + 1) ∣ shiftedDiffProductAt k d (j + 1) := by
  constructor
  · exact row_succ_dvd_of_transitionDenom_dvd_skeletonQuotient hd hj hdivj
  · intro hdivj1
    exact transitionDenom_dvd_skeletonQuotient_of_adjacent_rows hd hj hdivj hdivj1

/--
A transition-denominator escape theorem implies the row-prefix-sixteen escape
target. If one of rows `1,...,min 15 k` already fails, we are done; otherwise
the transition escape converts, by the local iff, into failure of the next row.
-/
theorem row_prefix_sixteen_escape_of_transition_denominator_escape
    (htrans : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      (∀ j, j ∈ Finset.Icc 1 (min 15 k) →
        n + j ∣ shiftedDiffProductAt k d j) →
      ∃ j, j ∈ Finset.Icc 1 (min 15 (k - 1)) ∧
        ¬ transitionDenom k n d j ∣ skeletonQuotient k n d j) :
    ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ n + j ∣ shiftedDiffProductAt k d j := by
  intro k n d hk hd hup hlo
  classical
  by_cases hrows15 : ∀ j, j ∈ Finset.Icc 1 (min 15 k) →
      n + j ∣ shiftedDiffProductAt k d j
  · obtain ⟨j, hj, hnottrans⟩ := htrans k n d hk hd hup hlo hrows15
    have hj_bounds := Finset.mem_Icc.mp hj
    have hj_le_15 : j ≤ 15 := le_trans hj_bounds.2 (Nat.min_le_left 15 (k - 1))
    have hj_le_km1 : j ≤ k - 1 := le_trans hj_bounds.2 (Nat.min_le_right 15 (k - 1))
    have hj_prefix : j ∈ Finset.Icc 1 (min 15 k) := by
      exact Finset.mem_Icc.mpr ⟨hj_bounds.1, le_min hj_le_15 (by omega)⟩
    have hj_row : j ∈ Finset.Icc 1 (k - 1) := by
      exact Finset.mem_Icc.mpr ⟨hj_bounds.1, hj_le_km1⟩
    have hdivj : n + j ∣ shiftedDiffProductAt k d j := hrows15 j hj_prefix
    have hfail_next : ¬ n + (j + 1) ∣ shiftedDiffProductAt k d (j + 1) := by
      intro hnext
      have htdvd : transitionDenom k n d j ∣ skeletonQuotient k n d j :=
        (transitionDenom_dvd_skeletonQuotient_iff_row_succ_dvd hd hj_row hdivj).mpr hnext
      exact hnottrans htdvd
    refine ⟨j + 1, ?_, ?_, ?_⟩
    · exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
    · omega
    · simpa [Nat.add_assoc] using hfail_next
  · simp only [not_forall] at hrows15
    obtain ⟨j, hj, hfail⟩ := hrows15
    have hj_bounds := Finset.mem_Icc.mp hj
    refine ⟨j, ?_, ?_, hfail⟩
    · exact Finset.mem_Icc.mpr ⟨hj_bounds.1, le_trans hj_bounds.2 (Nat.min_le_right 15 k)⟩
    · have hj_le_15 : j ≤ 15 := le_trans hj_bounds.2 (Nat.min_le_left 15 k)
      omega

/--
Splits the row-prefix-sixteen target into the two remaining mathematical
obligations: the boundary row-sixteen failure after rows `1,...,15` for
`k >= 16`, and full-row escape for the finite range `5 <= k <= 15`.
-/
theorem row_prefix_sixteen_escape_of_boundary_and_small_k_escape
    (hboundary : ∀ k n d : ℕ, 16 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      (∀ j, j ∈ Finset.Icc 1 15 → n + j ∣ shiftedDiffProductAt k d j) →
      ¬ n + 16 ∣ shiftedDiffProductAt k d 16)
    (hsmall : ∀ k n d : ℕ, 5 ≤ k → k ≤ 15 → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ ¬ n + j ∣ shiftedDiffProductAt k d j) :
    ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ n + j ∣ shiftedDiffProductAt k d j := by
  intro k n d hk hd hup hlo
  by_cases hk16 : 16 ≤ k
  · by_cases hrows15 : ∀ j, j ∈ Finset.Icc 1 15 →
        n + j ∣ shiftedDiffProductAt k d j
    · refine ⟨16, ?_, le_rfl, ?_⟩
      · exact Finset.mem_Icc.mpr ⟨by norm_num, hk16⟩
      · exact hboundary k n d hk16 hd hup hlo hrows15
    · classical
      simp only [not_forall] at hrows15
      obtain ⟨j, hj, hfail⟩ := hrows15
      have hj_bounds := Finset.mem_Icc.mp hj
      refine ⟨j, ?_, ?_, hfail⟩
      · exact Finset.mem_Icc.mpr ⟨hj_bounds.1, by omega⟩
      · omega
  · have hk15 : k ≤ 15 := by omega
    obtain ⟨j, hj, hfail⟩ := hsmall k n d hk hk15 hd hup hlo
    have hj_bounds := Finset.mem_Icc.mp hj
    refine ⟨j, hj, ?_, hfail⟩
    omega

/--
For the `k >= 16` boundary, once rows `1,...,15` divide, row-sixteen escape is
equivalent to failure of the single transition denominator at `j=15`.
-/
theorem row_sixteen_escape_after_rows_fifteen_iff_transition_fifteen_escape
    {k n d : ℕ} (hk : 16 ≤ k) (hd : k ≤ d)
    (hrows15 : ∀ j, j ∈ Finset.Icc 1 15 →
      n + j ∣ shiftedDiffProductAt k d j) :
    (¬ transitionDenom k n d 15 ∣ skeletonQuotient k n d 15) ↔
      ¬ n + 16 ∣ shiftedDiffProductAt k d 16 := by
  have hj : 15 ∈ Finset.Icc 1 (k - 1) := by
    exact Finset.mem_Icc.mpr ⟨by norm_num, by omega⟩
  have hdiv15 : n + 15 ∣ shiftedDiffProductAt k d 15 := by
    exact hrows15 15 (by norm_num)
  have hiff := transitionDenom_dvd_skeletonQuotient_iff_row_succ_dvd
    (k := k) (n := n) (d := d) (j := 15) hd hj hdiv15
  simpa [Nat.add_assoc] using not_congr hiff

/--
The row-prefix-sixteen target follows from the exact boundary valuation-defect
form at `j=15`, plus the separate full-row escape theorem for `5 <= k <= 15`.
-/
theorem row_prefix_sixteen_escape_of_transition_fifteen_and_small_k_escape
    (hboundary : ∀ k n d : ℕ, 16 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      (∀ j, j ∈ Finset.Icc 1 15 →
        n + j ∣ shiftedDiffProductAt k d j) →
      ¬ transitionDenom k n d 15 ∣ skeletonQuotient k n d 15)
    (hsmall : ∀ k n d : ℕ, 5 ≤ k → k ≤ 15 → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ ¬ n + j ∣ shiftedDiffProductAt k d j) :
    ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ n + j ∣ shiftedDiffProductAt k d j := by
  apply row_prefix_sixteen_escape_of_boundary_and_small_k_escape
  · intro k n d hk hd hup hlo hrows15
    exact (row_sixteen_escape_after_rows_fifteen_iff_transition_fifteen_escape
      (k := k) (n := n) (d := d) hk hd hrows15).mp
      (hboundary k n d hk hd hup hlo hrows15)
  · exact hsmall

theorem skeletonQuotient_pos_four {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    0 < skeletonQuotient k n d j := by
  have hdiv : n + j ∣ shiftedDiffProductAt k d j :=
    individual_divisor_skeleton_four hd hj heq
  have hFpos : 0 < shiftedDiffProductAt k d j := shiftedDiffProductAt_pos hd hj
  have hden : 0 < n + j := by
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    omega
  unfold skeletonQuotient
  exact Nat.div_pos (Nat.le_of_dvd hFpos hdiv) hden

/--
Under a hypothetical `N=4` solution, the skeleton quotients form a strictly
decreasing chain.
-/
theorem skeletonQuotient_strict_decreasing_four {k n d j : ℕ}
    (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 (k - 1))
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    skeletonQuotient k n d (j + 1) < skeletonQuotient k n d j := by
  have hj_ge : 1 ≤ j := (Finset.mem_Icc.mp hj).1
  have hj_le : j ≤ k - 1 := (Finset.mem_Icc.mp hj).2
  have hj_mem : j ∈ Finset.Icc 1 k := by
    rw [Finset.mem_Icc]
    constructor <;> omega
  have hdivj : n + j ∣ shiftedDiffProductAt k d j :=
    individual_divisor_skeleton_four hd hj_mem heq
  have hFj_pos : 0 < shiftedDiffProductAt k d j := shiftedDiffProductAt_pos hd hj_mem
  have hden_pos : 0 < n + j := by omega
  have hqj_pos : 0 < skeletonQuotient k n d j := by
    unfold skeletonQuotient
    exact Nat.div_pos (Nat.le_of_dvd hFj_pos hdivj) hden_pos
  have hrel :=
    skeletonQuotient_succ_relation_four (k := k) (n := n) (d := d) (j := j) hd hj heq
  let A := skeletonQuotient k n d (j + 1)
  let B := skeletonQuotient k n d j
  let big := (n + j + 1) * (d + k - j)
  let small := (n + j) * (d - j)
  have hbig : small < big := by
    dsimp [big, small]
    have hnpos : 0 < n + j := by omega
    have hright_pos : 0 < d + k - j := by omega
    have hfactor_lt : d - j < d + k - j := by omega
    have hleft_lt : n + j < n + j + 1 := by omega
    exact lt_trans ((Nat.mul_lt_mul_left hnpos).mpr hfactor_lt)
      ((Nat.mul_lt_mul_right hright_pos).mpr hleft_lt)
  have hrel' : A * big = B * small := by
    dsimp [A, B, big, small]
    simpa [mul_assoc] using hrel
  by_contra hnot
  have hge : B ≤ A := Nat.le_of_not_gt hnot
  have hle_big : B * big ≤ A * big := Nat.mul_le_mul_right big hge
  have hlt_small_big : B * small < B * big := (Nat.mul_lt_mul_left hqj_pos).mpr hbig
  omega

/--
Package form of the decreasing skeleton quotient chain forced by a hypothetical
cleared `N=4` gap solution.
-/
theorem skeletonQuotient_chain_four {k n d : ℕ}
    (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (∀ j, j ∈ Finset.Icc 1 k → 0 < skeletonQuotient k n d j) ∧
      (∀ j, j ∈ Finset.Icc 1 (k - 1) →
        skeletonQuotient k n d (j + 1) < skeletonQuotient k n d j) := by
  constructor
  · intro j hj
    exact skeletonQuotient_pos_four hd hj heq
  · intro j hj
    exact skeletonQuotient_strict_decreasing_four hd hj heq

lemma fourGapQuotientPolynomial_natDegree_le_pred
    {k n d : ℕ} (hk : 1 ≤ k) :
    (fourGapQuotientPolynomial k n d).natDegree ≤ k - 1 := by
  unfold fourGapQuotientPolynomial
  rw [Polynomial.natDegree_divByMonic
    (fourCongruencePolynomialPoly k d) (Polynomial.monic_X_sub_C (-(n : ℤ)))]
  have hlin :
      (Polynomial.X - Polynomial.C (-(n : ℤ)) : Polynomial ℤ).natDegree = 1 :=
    Polynomial.natDegree_X_sub_C (-(n : ℤ))
  have hHdeg := fourCongruencePolynomialPoly_natDegree_le k d
  rw [hlin]
  omega

/--
Corrected finite-difference package for the skeleton quotients: under an exact
gap-form `N=4` equality, the top alternating finite difference of
`Q_j = F_j/(n+j)` is the top coefficient of the quotient polynomial
`H_{k,d}(X)/(X+n)` times `(k-1)!`.

This is coefficient bookkeeping for the exact quotient equation, not an
independent escape theorem.
-/
theorem finite_difference_skeletonQuotient_eq_coeff_four_gap_solution
    {k n d : ℕ} (hk : 1 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (∑ a ∈ Finset.range k,
      ((-1 : ℤ) ^ (k - 1 - a) * (Nat.choose (k - 1) a : ℤ)) *
        (skeletonQuotient k n d (a + 1) : ℤ)) =
      (fourGapQuotientPolynomial k n d).coeff (k - 1) *
        (Nat.factorial (k - 1) : ℤ) := by
  have hfd :=
    finite_difference_values_coeff_at_one
      (k := k - 1) (P := fourGapQuotientPolynomial k n d)
      (q := fun j => (skeletonQuotient k n d j : ℤ))
      (fourGapQuotientPolynomial_natDegree_le_pred hk)
      (by
        intro a ha
        have ha_lt : a < k := by
          have hlt : a < k - 1 + 1 := by simpa using ha
          omega
        have hj : a + 1 ∈ Finset.Icc 1 k := by
          rw [Finset.mem_Icc]
          constructor <;> omega
        exact (fourGapQuotientPolynomial_eval_skeletonQuotient hd hj heq).symm)
  simpa [Nat.sub_add_cancel hk] using hfd

/--
The original existential quotient formulation is equivalent to the cleared
natural block-product formulation.
-/
lemma exists_quotient_solution_iff_exists_blockProduct_solution (N : ℕ) :
    (∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) ↔
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧ blockProduct k m = N * blockProduct k n := by
  constructor
  · rintro ⟨k, n, m, hk, hm, hq⟩
    exact ⟨k, n, m, hk, hm, (quotient_eq_iff_blockProduct_eq N k n m).mp hq⟩
  · rintro ⟨k, n, m, hk, hm, heq⟩
    exact ⟨k, n, m, hk, hm, (quotient_eq_iff_blockProduct_eq N k n m).mpr heq⟩

/--
Pell-shape reconstruction for square `k=2` cases.  For fixed `n`, if
`2m+3` and `a` solve
`(2m+3)^2 - ((2n+3)^2-1)a^2 = 1`, then the cleared `k=2`
equation for `a^2` follows.
-/
lemma square_k_two_cleared_of_pell_shape
    (a n m : ℕ)
    (hpell : (2 * m + 3) ^ 2 = (((2 * n + 3) ^ 2 - 1) * a ^ 2 + 1)) :
    (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2)) := by
  have hpellz : ((2 * m + 3 : ℕ) : ℤ) ^ 2 =
      (((2 * n + 3 : ℕ) ^ 2 - 1) * a ^ 2 + 1 : ℕ) := by
    exact_mod_cast hpell
  norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow] at hpellz ⊢
  nlinarith

/--
Conversely, the cleared `k=2` equation for `a^2` is exactly the Pell-shape
identity after completing squares.
-/
lemma square_k_two_pell_shape_of_cleared
    (a n m : ℕ)
    (heq : (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2))) :
    (2 * m + 3) ^ 2 = (((2 * n + 3) ^ 2 - 1) * a ^ 2 + 1) := by
  have hsq := square_k_two_completed_square_int a n m heq
  have hcast : (((2 * m + 3) ^ 2 : ℕ) : ℤ) =
      ((((2 * n + 3) ^ 2 - 1) * a ^ 2 + 1 : ℕ) : ℤ) := by
    norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow] at hsq ⊢
    nlinarith
  exact_mod_cast hcast

/--
A Pell-shape identity gives the actual `k=2` quotient representation of
`a^2`, provided the non-overlap gap `m≥n+2` holds.
-/
lemma square_k_two_representable_of_pell_shape
    (a n m : ℕ) (hgap : m ≥ n + 2)
    (hpell : (2 * m + 3) ^ 2 = (((2 * n + 3) ^ 2 - 1) * a ^ 2 + 1)) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  refine ⟨n, m, hgap, ?_⟩
  apply (quotient_eq_iff_blockProduct_eq (a ^ 2) 2 n m).mpr
  have hcleared := square_k_two_cleared_of_pell_shape a n m hpell
  simpa [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    using hcleared

/--
The same Pell-shape construction, stated directly in the original Erdős 686
existential form.
-/
theorem square_original_representable_of_pell_shape
    (a n m : ℕ) (hgap : m ≥ n + 2)
    (hpell : (2 * m + 3) ^ 2 = (((2 * n + 3) ^ 2 - 1) * a ^ 2 + 1)) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨n, m, hgap, hq⟩ := square_k_two_representable_of_pell_shape a n m hgap hpell
  exact ⟨2, n, m, by norm_num, hgap, by simpa using hq⟩

/--
Odd-`x` Pell-shape construction: if an odd `x` satisfies
`x^2 = (((2n+3)^2-1)a^2+1)` and is large enough to give a non-overlapping
block, then `a^2` has an Erdős 686 representation already with `k=2`.
-/
theorem square_original_representable_of_odd_pell_shape
    (a n x : ℕ) (hodd : Odd x) (hx : 2 * n + 7 ≤ x)
    (hpell : x ^ 2 = (((2 * n + 3) ^ 2 - 1) * a ^ 2 + 1)) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨r, hr⟩ := hodd
  let m := r - 1
  have hr_ge : n + 3 ≤ r := by omega
  have hgap : m ≥ n + 2 := by
    dsimp [m]
    omega
  have hx_m : 2 * m + 3 = x := by
    dsimp [m]
    omega
  apply square_original_representable_of_pell_shape a n m hgap
  simpa [hx_m] using hpell

/--
Natural-value Pell identity from Mathlib's integer `Pell.Solution₁` API for
the square `k=2` construction.
-/
lemma pell_solution_natAbs_square_shape
    (n : ℕ)
    (s : Pell.Solution₁ ((((2 * n + 3) ^ 2 - 1 : ℕ) : ℤ))) :
    s.x.natAbs ^ 2 = (((2 * n + 3) ^ 2 - 1) * s.y.natAbs ^ 2 + 1) := by
  apply Nat.cast_injective (R := ℤ)
  simp only [Nat.cast_pow, Nat.cast_mul, Nat.cast_add]
  rw [Int.natAbs_sq s.x, Int.natAbs_sq s.y]
  rw [s.prop_x]
  ring

/--
Mathlib-Pell bridge for square `k=2` cases: a `Pell.Solution₁` for
`d = (2n+3)^2-1` whose `x`-coordinate is odd and large enough gives an
Erdős 686 representation of the square `(s.y.natAbs)^2`.
-/
theorem square_original_representable_of_pell_solution_natAbs
    (n : ℕ)
    (s : Pell.Solution₁ ((((2 * n + 3) ^ 2 - 1 : ℕ) : ℤ)))
    (hodd : Odd s.x.natAbs) (hx : 2 * n + 7 ≤ s.x.natAbs) :
    ∃ k n' m : ℕ,
      2 ≤ k ∧ m ≥ n' + k ∧
      ((s.y.natAbs ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n' + i : ℕ) : ℚ))) := by
  exact square_original_representable_of_odd_pell_shape
    s.y.natAbs n s.x.natAbs hodd hx (pell_solution_natAbs_square_shape n s)

def twoBlockPellD (n : ℕ) : ℤ :=
  (((2 * n + 3) ^ 2 - 1 : ℕ) : ℤ)

def twoBlockPellUnit (n : ℕ) : Pell.Solution₁ (twoBlockPellD n) :=
  Pell.Solution₁.mk ((2 * n + 3 : ℕ) : ℤ) 1 (by
    unfold twoBlockPellD
    have hsq_one : 1 ≤ (2 * n + 3) ^ 2 := by
      have hpos : 0 < (2 * n + 3) ^ 2 := pow_pos (by omega : 0 < 2 * n + 3) 2
      omega
    rw [Nat.cast_sub hsq_one]
    norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow])

lemma twoBlockPellD_even (n : ℕ) : Even (twoBlockPellD n) := by
  unfold twoBlockPellD
  have hsq_one : 1 ≤ (2 * n + 3) ^ 2 := by
    have hpos : 0 < (2 * n + 3) ^ 2 := pow_pos (by omega : 0 < 2 * n + 3) 2
    omega
  rw [Nat.cast_sub hsq_one]
  norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
  use 2 * (n : ℤ) ^ 2 + 6 * (n : ℤ) + 4
  ring

lemma twoBlockPellUnit_x_odd (n e : ℕ) : Odd ((twoBlockPellUnit n) ^ e).x := by
  induction e with
  | zero =>
      simp [twoBlockPellUnit]
  | succ e ih =>
      rw [pow_succ, Pell.Solution₁.x_mul]
      exact Odd.add_even
        (Odd.mul ih (by
          have hodd_nat : Odd (2 * n + 3) := by
            use n + 1
            ring
          simpa [twoBlockPellUnit] using
            (show Odd (((2 * n + 3 : ℕ) : ℤ)) by exact_mod_cast hodd_nat)))
        (Even.mul_right (twoBlockPellD_even n) _)

lemma twoBlockPellUnit_y_nonneg (n e : ℕ) :
    0 ≤ ((twoBlockPellUnit n) ^ e).y := by
  cases e with
  | zero =>
      simp [twoBlockPellUnit]
  | succ e =>
      exact (Pell.Solution₁.y_pow_succ_pos
        (a := twoBlockPellUnit n)
        (by simp [twoBlockPellUnit]; omega)
        (by simp [twoBlockPellUnit])
        e).le

lemma twoBlockPellUnit_x_ge_square (n e : ℕ) (he : 2 ≤ e) :
    (2 * (n : ℤ) + 7) ≤ ((twoBlockPellUnit n) ^ e).x := by
  obtain ⟨r, rfl⟩ : ∃ r, e = r + 2 := ⟨e - 2, by omega⟩
  rw [pow_add, pow_two]
  rw [Pell.Solution₁.x_mul]
  have hxr_pos : 0 < ((twoBlockPellUnit n) ^ r).x :=
    Pell.Solution₁.x_pow_pos (a := twoBlockPellUnit n) (by simp [twoBlockPellUnit]; omega) r
  have hyr_nonneg : 0 ≤ ((twoBlockPellUnit n) ^ r).y :=
    twoBlockPellUnit_y_nonneg n r
  have hd_nonneg : 0 ≤ twoBlockPellD n := by
    unfold twoBlockPellD
    positivity
  have hbase_x : ((twoBlockPellUnit n) * (twoBlockPellUnit n)).x =
      2 * ((2 * n + 3 : ℕ) : ℤ) ^ 2 - 1 := by
    rw [Pell.Solution₁.x_mul]
    change (((2 * n + 3 : ℕ) : ℤ) * ((2 * n + 3 : ℕ) : ℤ) +
        twoBlockPellD n * (1 * 1) =
      2 * ((2 * n + 3 : ℕ) : ℤ) ^ 2 - 1)
    unfold twoBlockPellD
    have hsq_one : 1 ≤ (2 * n + 3) ^ 2 := by
      have hpos : 0 < (2 * n + 3) ^ 2 := pow_pos (by omega : 0 < 2 * n + 3) 2
      omega
    rw [Nat.cast_sub hsq_one]
    norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
    ring_nf
  have hbase_y : 0 ≤ ((twoBlockPellUnit n) * (twoBlockPellUnit n)).y := by
    simp [twoBlockPellUnit]
    omega
  rw [hbase_x]
  have hmain :
      ((twoBlockPellUnit n) ^ r).x * (2 * ((2 * n + 3 : ℕ) : ℤ) ^ 2 - 1) +
          twoBlockPellD n *
            (((twoBlockPellUnit n) ^ r).y * ((twoBlockPellUnit n) * (twoBlockPellUnit n)).y)
        ≥ 2 * ((2 * n + 3 : ℕ) : ℤ) ^ 2 - 1 := by
    have hbase_pos : 0 < 2 * ((2 * n + 3 : ℕ) : ℤ) ^ 2 - 1 := by
      let w : ℤ := ((2 * n + 3 : ℕ) : ℤ)
      have hw : 1 ≤ w := by
        dsimp [w]
        exact_mod_cast (by omega : 1 ≤ 2 * n + 3)
      have hw2 : 1 ≤ w ^ 2 := by nlinarith [sq_nonneg (w - 1)]
      dsimp [w] at hw2
      nlinarith
    have hfirst : 2 * ((2 * n + 3 : ℕ) : ℤ) ^ 2 - 1 ≤
        ((twoBlockPellUnit n) ^ r).x * (2 * ((2 * n + 3 : ℕ) : ℤ) ^ 2 - 1) := by
      nlinarith
    have hsecond :
        0 ≤ twoBlockPellD n *
          (((twoBlockPellUnit n) ^ r).y * ((twoBlockPellUnit n) * (twoBlockPellUnit n)).y) := by
      positivity
    nlinarith
  have hlower : (2 * (n : ℤ) + 7) ≤ 2 * ((2 * n + 3 : ℕ) : ℤ) ^ 2 - 1 := by
    norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
    nlinarith [sq_nonneg (n : ℤ)]
  nlinarith

/--
Every nontrivial power of the fundamental `k=2` Pell unit gives a represented
square.  The earlier polynomial square-root families are the small powers of
this single construction.
-/
theorem square_pell_power_family_representable (n e : ℕ) (he : 2 ≤ e) :
    ∃ k n' m : ℕ,
      2 ≤ k ∧ m ≥ n' + k ∧
      (((((twoBlockPellUnit n) ^ e).y.natAbs) ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n' + i : ℕ) : ℚ))) := by
  exact square_original_representable_of_pell_solution_natAbs n ((twoBlockPellUnit n) ^ e)
    (Int.natAbs_odd.mpr (twoBlockPellUnit_x_odd n e))
    (by
      have hxz := twoBlockPellUnit_x_ge_square n e he
      have hxpos : 0 ≤ ((twoBlockPellUnit n) ^ e).x :=
        le_trans (by omega : (0 : ℤ) ≤ 2 * (n : ℤ) + 7) hxz
      have hcast : (((((twoBlockPellUnit n) ^ e).x.natAbs : ℕ) : ℤ)) =
          ((twoBlockPellUnit n) ^ e).x := by
        exact Int.natAbs_of_nonneg hxpos
      apply (Nat.cast_le (α := ℤ)).mp
      change (((2 * n + 7 : ℕ) : ℤ) ≤ (((twoBlockPellUnit n) ^ e).x.natAbs : ℤ))
      rw [hcast]
      norm_num [Nat.cast_mul, Nat.cast_add]
      exact hxz)

lemma square_pell_power_family_blockProduct (n e : ℕ) (he : 2 ≤ e) :
    ∃ m : ℕ,
      m ≥ n + 2 ∧
      blockProduct 2 m =
        (((twoBlockPellUnit n) ^ e).y.natAbs ^ 2) * blockProduct 2 n := by
  let s : Pell.Solution₁ (twoBlockPellD n) := (twoBlockPellUnit n) ^ e
  have hodd : Odd s.x.natAbs := Int.natAbs_odd.mpr (by
    simpa [s] using twoBlockPellUnit_x_odd n e)
  have hx : 2 * n + 7 ≤ s.x.natAbs := by
    have hxz := twoBlockPellUnit_x_ge_square n e he
    have hxpos : 0 ≤ ((twoBlockPellUnit n) ^ e).x :=
      le_trans (by omega : (0 : ℤ) ≤ 2 * (n : ℤ) + 7) hxz
    have hcast : (((((twoBlockPellUnit n) ^ e).x.natAbs : ℕ) : ℤ)) =
        ((twoBlockPellUnit n) ^ e).x := by
      exact Int.natAbs_of_nonneg hxpos
    apply (Nat.cast_le (α := ℤ)).mp
    change (((2 * n + 7 : ℕ) : ℤ) ≤ ((((twoBlockPellUnit n) ^ e).x.natAbs) : ℤ))
    rw [hcast]
    norm_num [Nat.cast_mul, Nat.cast_add]
    exact hxz
  obtain ⟨r, hr⟩ := hodd
  let m := r - 1
  have hr_ge : n + 3 ≤ r := by omega
  have hgap : m ≥ n + 2 := by
    dsimp [m]
    omega
  have hx_m : 2 * m + 3 = s.x.natAbs := by
    dsimp [m]
    omega
  refine ⟨m, hgap, ?_⟩
  have hpell := pell_solution_natAbs_square_shape n s
  have hcleared := square_k_two_cleared_of_pell_shape s.y.natAbs n m (by
    simpa [hx_m] using hpell)
  simpa [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    using hcleared

/--
Closure operation for the `k=2` square construction: composing an existing
`k=2` square ratio with a nontrivial power of the numerator block's fundamental
Pell unit produces another `k=2` square ratio over the same denominator.
-/
theorem square_k_two_blockProduct_closure_of_pell_power
    {a n m e : ℕ}
    (hgap : m ≥ n + 2)
    (hblock : blockProduct 2 m = a ^ 2 * blockProduct 2 n)
    (he : 2 ≤ e) :
    ∃ m' : ℕ,
      m' ≥ n + 2 ∧
      blockProduct 2 m' =
        (a * ((twoBlockPellUnit m) ^ e).y.natAbs) ^ 2 * blockProduct 2 n := by
  obtain ⟨m', hm', hpow⟩ := square_pell_power_family_blockProduct m e he
  refine ⟨m', by omega, ?_⟩
  rw [hpow, hblock]
  ring

/--
Quotient-form closure operation for represented square roots in the `k=2`
Pell/Chebyshev family.
-/
theorem square_k_two_quotient_closure_of_pell_power
    {a n m e : ℕ}
    (hgap : m ≥ n + 2)
    (hq : ((a ^ 2 : ℕ) : ℚ) =
      (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
        (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))))
    (he : 2 ≤ e) :
    ∃ m' : ℕ,
      m' ≥ n + 2 ∧
      ((((a * ((twoBlockPellUnit m) ^ e).y.natAbs) ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 2, (((m' + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  have hblock := (quotient_eq_iff_blockProduct_eq (a ^ 2) 2 n m).mp hq
  obtain ⟨m', hm', hnew⟩ :=
    square_k_two_blockProduct_closure_of_pell_power hgap hblock he
  refine ⟨m', hm', ?_⟩
  exact (quotient_eq_iff_blockProduct_eq
    ((a * ((twoBlockPellUnit m) ^ e).y.natAbs) ^ 2) 2 n m').mpr hnew

/--
The `k=2` quotient representation of a square `a^2` is equivalent to solving
the Pell-shape equation
`(2m+3)^2 = (((2n+3)^2-1)a^2+1)` with the same non-overlap gap.
-/
lemma square_k_two_representable_iff_pell_shape (a : ℕ) :
    (∃ n m : ℕ,
      m ≥ n + 2 ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ)))) ↔
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (2 * m + 3) ^ 2 = (((2 * n + 3) ^ 2 - 1) * a ^ 2 + 1) := by
  constructor
  · rintro ⟨n, m, hgap, hq⟩
    have hblock := (quotient_eq_iff_blockProduct_eq (a ^ 2) 2 n m).mp hq
    have hcleared :
        (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2)) := by
      simpa [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
        using hblock
    exact ⟨n, m, hgap, square_k_two_pell_shape_of_cleared a n m hcleared⟩
  · rintro ⟨n, m, hgap, hpell⟩
    exact square_k_two_representable_of_pell_shape a n m hgap hpell

/--
Factor-pair data satisfying the `k=2` square reconstruction equations gives
an actual Erdős 686 quotient representation of `a^2`, provided the non-overlap
gap `m≥n+2` holds.
-/
lemma square_k_two_representable_of_factor_pair_data
    (a n m u v : ℕ) (ha : 2 ≤ a) (hgap : m ≥ n + 2)
    (hprod : u * v = a ^ 2 - 1)
    (hsum : u + v = 2 * (a * (2 * n + 3)))
    (hdiff : v - u = 2 * (2 * m + 3)) :
    ∃ n m : ℕ,
      m ≥ n + 2 ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  refine ⟨n, m, hgap, ?_⟩
  apply (quotient_eq_iff_blockProduct_eq (a ^ 2) 2 n m).mpr
  have hcleared := square_k_two_cleared_of_factor_pair_data a n m u v ha hprod hsum hdiff
  simpa [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    using hcleared

/--
The same factor-pair construction, stated directly in the original Erdős 686
existential form.
-/
theorem square_original_representable_of_factor_pair_data
    (a n m u v : ℕ) (ha : 2 ≤ a) (hgap : m ≥ n + 2)
    (hprod : u * v = a ^ 2 - 1)
    (hsum : u + v = 2 * (a * (2 * n + 3)))
    (hdiff : v - u = 2 * (2 * m + 3)) :
    ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  obtain ⟨n, m, hgap, hq⟩ :=
    square_k_two_representable_of_factor_pair_data a n m u v ha hgap hprod hsum hdiff
  exact ⟨2, n, m, by norm_num, hgap, by simpa using hq⟩

/--
The `k=2` quotient representation of a square `a^2` is equivalent to the
explicit factor-pair data coming from the completed-square factorization.
-/
lemma square_k_two_representable_iff_factor_pair_data (a : ℕ) (ha : 2 ≤ a) :
    (∃ n m : ℕ,
      m ≥ n + 2 ∧
      ((a ^ 2 : ℕ) : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ)))) ↔
    ∃ n m u v : ℕ,
      m ≥ n + 2 ∧
      0 < u ∧ u < v ∧ u * v = a ^ 2 - 1 ∧
      u + v = 2 * (a * (2 * n + 3)) ∧
      v - u = 2 * (2 * m + 3) := by
  constructor
  · rintro ⟨n, m, hgap, hq⟩
    have hblock := (quotient_eq_iff_blockProduct_eq (a ^ 2) 2 n m).mp hq
    have hcleared :
        (m + 1) * (m + 2) = a ^ 2 * ((n + 1) * (n + 2)) := by
      simpa [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
        using hblock
    obtain ⟨u, v, hu_pos, huv, hprod, _, _, hsum, hdiff⟩ :=
      square_k_two_factor_pair_data a n m ha hcleared
    exact ⟨n, m, u, v, hgap, hu_pos, huv, hprod, hsum, hdiff⟩
  · rintro ⟨n, m, u, v, hgap, _, _, hprod, hsum, hdiff⟩
    exact square_k_two_representable_of_factor_pair_data a n m u v ha hgap hprod hsum hdiff

/--
Rewrites an original `N=4` quotient solution into a gap variable `d=m-n`
and the corresponding natural product equality.
-/
lemma four_solution_with_gap_of_solution
    {k n m : ℕ} (hm : m ≥ n + k)
    (hq : (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    ∃ d : ℕ, k ≤ d ∧ m = n + d ∧ blockProduct k (n + d) = 4 * blockProduct k n := by
  refine ⟨m - n, by omega, by omega, ?_⟩
  have heq := (four_quotient_eq_iff_blockProduct_eq k n m).mp hq
  rwa [show n + (m - n) = m by omega]

/--
Rewrites an original quotient solution for an arbitrary natural `N` into a
gap variable `d=m-n` and the corresponding natural product equality.
-/
lemma quotient_solution_with_gap_of_solution
    (N : ℕ) {k n m : ℕ} (hm : m ≥ n + k)
    (hq : (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    ∃ d : ℕ, k ≤ d ∧ m = n + d ∧ blockProduct k (n + d) = N * blockProduct k n := by
  refine ⟨m - n, by omega, by omega, ?_⟩
  have heq := (quotient_eq_iff_blockProduct_eq N k n m).mp hq
  rwa [show n + (m - n) = m by omega]

lemma blockProduct_lower_window_mul (k n d : ℕ) :
    (n + d + k) ^ k * blockProduct k n ≤ (n + k) ^ k * blockProduct k (n + d) := by
  have hpoint : ∀ i ∈ Finset.Icc 1 k,
      (n + i) * (n + d + k) ≤ (n + d + i) * (n + k) := by
    intro i hi
    have hik : i ≤ k := (Finset.mem_Icc.mp hi).2
    nlinarith
  have hprod := Finset.prod_le_prod' (s := Finset.Icc 1 k) hpoint
  rw [Finset.prod_mul_distrib, Finset.prod_mul_distrib] at hprod
  rw [Finset.prod_const, Finset.prod_const, Nat.card_Icc] at hprod
  simpa [blockProduct, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm, mul_comm, mul_left_comm,
    mul_assoc] using hprod

lemma blockProduct_upper_window_mul (k n d : ℕ) :
    (n + 1) ^ k * blockProduct k (n + d) ≤ (n + d + 1) ^ k * blockProduct k n := by
  have hpoint : ∀ i ∈ Finset.Icc 1 k,
      (n + d + i) * (n + 1) ≤ (n + i) * (n + d + 1) := by
    intro i hi
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    nlinarith
  have hprod := Finset.prod_le_prod' (s := Finset.Icc 1 k) hpoint
  rw [Finset.prod_mul_distrib, Finset.prod_mul_distrib] at hprod
  rw [Finset.prod_const, Finset.prod_const, Nat.card_Icc] at hprod
  simpa [blockProduct, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm, mul_comm, mul_left_comm,
    mul_assoc] using hprod

/--
Exact natural-arithmetic ratio window forced by a hypothetical quotient
solution in gap form, for arbitrary natural `N`.
-/
lemma ratio_window_nat
    {N k n d : ℕ} (heq : blockProduct k (n + d) = N * blockProduct k n) :
    (n + d + k) ^ k ≤ N * (n + k) ^ k ∧
      N * (n + 1) ^ k ≤ (n + d + 1) ^ k := by
  constructor
  · have hineq := blockProduct_lower_window_mul k n d
    rw [heq] at hineq
    have hineq' : (n + d + k) ^ k * blockProduct k n ≤
        (N * (n + k) ^ k) * blockProduct k n := by
      nlinarith
    exact Nat.le_of_mul_le_mul_right hineq' (blockProduct_pos k n)
  · have hineq := blockProduct_upper_window_mul k n d
    rw [heq] at hineq
    have hineq' : (N * (n + 1) ^ k) * blockProduct k n ≤
        (n + d + 1) ^ k * blockProduct k n := by
      nlinarith
    exact Nat.le_of_mul_le_mul_right hineq' (blockProduct_pos k n)

/--
Exact natural-arithmetic ratio window forced by a hypothetical `N=4`
solution in gap form.
-/
lemma ratio_window_four_nat
    {k n d : ℕ} (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    (n + d + k) ^ k ≤ 4 * (n + k) ^ k ∧
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k := by
  exact ratio_window_nat heq

/--
Exact natural-arithmetic ratio window forced by a hypothetical `N=64`
solution in gap form.
-/
lemma ratio_window_sixtyfour_nat
    {k n d : ℕ} (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    (n + d + k) ^ k ≤ 64 * (n + k) ^ k ∧
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k := by
  exact ratio_window_nat heq

private lemma sixtyfour_lt_two_pow {k : ℕ} (hk : 7 ≤ k) : 64 < 2 ^ k := by
  refine Nat.le_induction ?base ?step k hk
  · norm_num
  · intro n hn ih
    calc
      64 < 2 ^ n := ih
      _ < 2 ^ (n + 1) := by
        rw [pow_succ]
        nlinarith [Nat.pow_pos (by norm_num : 0 < 2) (n := n)]

lemma shift_lt_two_mul_base_of_sixtyfour_window
    {k n d : ℕ} (hk : 7 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    n + d + k < 2 * (n + k) := by
  by_contra hnot
  have hge : 2 * (n + k) ≤ n + d + k := by omega
  have hpowge := Nat.pow_le_pow_left hge k
  have hpowge' : 2 ^ k * (n + k) ^ k ≤ (n + d + k) ^ k := by
    simpa [Nat.mul_pow, mul_comm, mul_left_comm, mul_assoc] using hpowge
  have hcomb : 2 ^ k * (n + k) ^ k ≤ 64 * (n + k) ^ k := le_trans hpowge' hwin
  have hbase_pos : 0 < (n + k) ^ k := Nat.pow_pos (by omega)
  have hle : 2 ^ k ≤ 64 := Nat.le_of_mul_le_mul_right hcomb hbase_pos
  exact not_le_of_gt (sixtyfour_lt_two_pow hk) hle

lemma gap_lt_n_add_k_of_sixtyfour_window
    {k n d : ℕ} (hk : 7 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    d < n + k := by
  have hlinear := shift_lt_two_mul_base_of_sixtyfour_window hk hwin
  omega

lemma gap_lt_n_add_k_of_sixtyfour_gap_solution
    {k n d : ℕ} (hk : 7 ≤ k)
    (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    d < n + k := by
  have hwin := ratio_window_sixtyfour_nat heq
  exact gap_lt_n_add_k_of_sixtyfour_window hk hwin.1

lemma ratio_window_linearize_of_pow_bracket
    {N A B k n d : ℕ} (hk : 1 ≤ k)
    (hbracket : N * B ^ k < A ^ k)
    (hwin : (n + d + k) ^ k ≤ N * (n + k) ^ k) :
    B * (n + d + k) < A * (n + k) := by
  by_contra hnot
  have hge : A * (n + k) ≤ B * (n + d + k) := by omega
  have hpowge := Nat.pow_le_pow_left hge k
  have hpowge' : A ^ k * (n + k) ^ k ≤ B ^ k * (n + d + k) ^ k := by
    simpa [Nat.mul_pow, mul_comm, mul_left_comm, mul_assoc] using hpowge
  have hupper :
      B ^ k * (n + d + k) ^ k ≤ B ^ k * (N * (n + k) ^ k) :=
    Nat.mul_le_mul_left (B ^ k) hwin
  have hcomb : A ^ k * (n + k) ^ k ≤ (N * B ^ k) * (n + k) ^ k := by
    calc
      A ^ k * (n + k) ^ k ≤ B ^ k * (n + d + k) ^ k := hpowge'
      _ ≤ B ^ k * (N * (n + k) ^ k) := hupper
      _ = (N * B ^ k) * (n + k) ^ k := by ring
  have hbase_pos : 0 < (n + k) ^ k := Nat.pow_pos (by omega)
  have hle : A ^ k ≤ N * B ^ k := Nat.le_of_mul_le_mul_right hcomb hbase_pos
  exact not_le_of_gt hbracket hle

lemma ratio_window_gap_bound_of_pow_bracket
    {N A B k n d : ℕ} (hk : 1 ≤ k) (hBA : B ≤ A)
    (hbracket : N * B ^ k < A ^ k)
    (hwin : (n + d + k) ^ k ≤ N * (n + k) ^ k) :
    B * d < (A - B) * (n + k) := by
  have hlinear :=
    ratio_window_linearize_of_pow_bracket
      (N := N) (A := A) (B := B) (k := k) (n := n) (d := d)
      hk hbracket hwin
  have hsplit_left : B * (n + d + k) = B * (n + k) + B * d := by
    ring
  have hsplit_right : A * (n + k) = B * (n + k) + (A - B) * (n + k) := by
    have hA : A = B + (A - B) := by omega
    calc
      A * (n + k) = (B + (A - B)) * (n + k) :=
        congrArg (fun x => x * (n + k)) hA
      _ = B * (n + k) + (A - B) * (n + k) := by
        rw [Nat.add_mul]
  rw [hsplit_left, hsplit_right] at hlinear
  exact Nat.add_lt_add_iff_left.mp hlinear

lemma ratio_window_succ_gap_bound_of_pow_bracket
    {N R k n d : ℕ} (hk : 1 ≤ k)
    (hbracket : N * R ^ k < (R + 1) ^ k)
    (hwin : (n + d + k) ^ k ≤ N * (n + k) ^ k) :
    R * d < n + k := by
  have hgap :=
    ratio_window_gap_bound_of_pow_bracket
      (N := N) (A := R + 1) (B := R) (k := k) (n := n) (d := d)
      hk (by omega) hbracket hwin
  simpa using hgap

lemma ratio_window_upper_linearize_of_pow_bracket
    {N A B k n d : ℕ} (_hk : 1 ≤ k)
    (hbracket : A ^ k < N * B ^ k)
    (hwin : N * (n + 1) ^ k ≤ (n + d + 1) ^ k) :
    A * (n + 1) < B * (n + d + 1) := by
  by_contra hnot
  have hge : B * (n + d + 1) ≤ A * (n + 1) := by omega
  have hpowge := Nat.pow_le_pow_left hge k
  have hpowge' : B ^ k * (n + d + 1) ^ k ≤ A ^ k * (n + 1) ^ k := by
    simpa [Nat.mul_pow, mul_comm, mul_left_comm, mul_assoc] using hpowge
  have hlower : (N * B ^ k) * (n + 1) ^ k ≤ B ^ k * (n + d + 1) ^ k := by
    calc
      (N * B ^ k) * (n + 1) ^ k = B ^ k * (N * (n + 1) ^ k) := by ring
      _ ≤ B ^ k * (n + d + 1) ^ k := Nat.mul_le_mul_left (B ^ k) hwin
  have hcomb : (N * B ^ k) * (n + 1) ^ k ≤ A ^ k * (n + 1) ^ k :=
    le_trans hlower hpowge'
  have hbase_pos : 0 < (n + 1) ^ k := Nat.pow_pos (by simp)
  have hle : N * B ^ k ≤ A ^ k := Nat.le_of_mul_le_mul_right hcomb hbase_pos
  exact not_le_of_gt hbracket hle

lemma ratio_window_upper_gap_bound_of_pow_bracket
    {N A B k n d : ℕ} (hk : 1 ≤ k) (hBA : B ≤ A)
    (hbracket : A ^ k < N * B ^ k)
    (hwin : N * (n + 1) ^ k ≤ (n + d + 1) ^ k) :
    (A - B) * (n + 1) < B * d := by
  have hlinear :=
    ratio_window_upper_linearize_of_pow_bracket
      (N := N) (A := A) (B := B) (k := k) (n := n) (d := d)
      hk hbracket hwin
  have hsplit_left : A * (n + 1) = B * (n + 1) + (A - B) * (n + 1) := by
    have hA : A = B + (A - B) := by omega
    calc
      A * (n + 1) = (B + (A - B)) * (n + 1) :=
        congrArg (fun x => x * (n + 1)) hA
      _ = B * (n + 1) + (A - B) * (n + 1) := by
        rw [Nat.add_mul]
  have hsplit_right : B * (n + d + 1) = B * (n + 1) + B * d := by
    ring
  rw [hsplit_left, hsplit_right] at hlinear
  exact Nat.add_lt_add_iff_left.mp hlinear

lemma ratio_window_upper_succ_gap_bound_of_pow_bracket
    {N R k n d : ℕ} (hk : 1 ≤ k)
    (hbracket : (R + 1) ^ k < N * R ^ k)
    (hwin : N * (n + 1) ^ k ≤ (n + d + 1) ^ k) :
    n + 1 < R * d := by
  have hgap :=
    ratio_window_upper_gap_bound_of_pow_bracket
      (N := N) (A := R + 1) (B := R) (k := k) (n := n) (d := d)
      hk (by omega) hbracket hwin
  simpa using hgap

lemma succ_gap_lt_n_add_k_of_sixtyfour_window
    {R k n d : ℕ} (hk : 1 ≤ k)
    (hbracket : 64 * R ^ k < (R + 1) ^ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    R * d < n + k := by
  exact ratio_window_succ_gap_bound_of_pow_bracket
    (N := 64) (R := R) (k := k) (n := n) (d := d) hk hbracket hwin

lemma succ_gap_lt_n_add_k_of_sixtyfour_gap_solution
    {R k n d : ℕ} (hk : 1 ≤ k)
    (hbracket : 64 * R ^ k < (R + 1) ^ k)
    (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    R * d < n + k := by
  have hwin := ratio_window_sixtyfour_nat heq
  exact succ_gap_lt_n_add_k_of_sixtyfour_window hk hbracket hwin.1

lemma upper_succ_n_add_one_lt_mul_gap_of_sixtyfour_window
    {R k n d : ℕ} (hk : 1 ≤ k)
    (hbracket : (R + 1) ^ k < 64 * R ^ k)
    (hwin : 64 * (n + 1) ^ k ≤ (n + d + 1) ^ k) :
    n + 1 < R * d := by
  exact ratio_window_upper_succ_gap_bound_of_pow_bracket
    (N := 64) (R := R) (k := k) (n := n) (d := d) hk hbracket hwin

lemma upper_succ_n_add_one_lt_mul_gap_of_sixtyfour_gap_solution
    {R k n d : ℕ} (hk : 1 ≤ k)
    (hbracket : (R + 1) ^ k < 64 * R ^ k)
    (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    n + 1 < R * d := by
  have hwin := ratio_window_sixtyfour_nat heq
  exact upper_succ_n_add_one_lt_mul_gap_of_sixtyfour_window hk hbracket hwin.2

private lemma sixtyfour_mul_two_pow_lt_three_pow {k : ℕ} (hk : 11 ≤ k) :
    64 * 2 ^ k < 3 ^ k := by
  refine Nat.le_induction ?base ?step k hk
  · norm_num
  · intro n _ ih
    calc
      64 * 2 ^ (n + 1) = 2 * (64 * 2 ^ n) := by
        rw [pow_succ]
        ring
      _ < 2 * 3 ^ n := Nat.mul_lt_mul_of_pos_left ih (by norm_num)
      _ < 3 * 3 ^ n :=
          Nat.mul_lt_mul_of_pos_right
            (by norm_num : 2 < 3) (Nat.pow_pos (by norm_num : 0 < 3) (n := n))
      _ = 3 ^ (n + 1) := by
        rw [pow_succ]
        ring

lemma two_mul_shift_lt_three_mul_base_of_sixtyfour_window
    {k n d : ℕ} (hk : 11 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    2 * (n + d + k) < 3 * (n + k) :=
  ratio_window_linearize_of_pow_bracket
    (N := 64) (A := 3) (B := 2) (k := k) (n := n) (d := d)
    (by omega) (sixtyfour_mul_two_pow_lt_three_pow hk) hwin

lemma twice_gap_lt_n_add_k_of_sixtyfour_window
    {k n d : ℕ} (hk : 11 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    2 * d < n + k := by
  have hlinear := two_mul_shift_lt_three_mul_base_of_sixtyfour_window hk hwin
  omega

lemma twice_gap_lt_n_add_k_of_sixtyfour_gap_solution
    {k n d : ℕ} (hk : 11 ≤ k)
    (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    2 * d < n + k := by
  have hwin := ratio_window_sixtyfour_nat heq
  exact twice_gap_lt_n_add_k_of_sixtyfour_window hk hwin.1

private lemma sixtyfour_mul_three_pow_lt_four_pow {k : ℕ} (hk : 15 ≤ k) :
    64 * 3 ^ k < 4 ^ k := by
  refine Nat.le_induction ?base ?step k hk
  · norm_num
  · intro n _ ih
    calc
      64 * 3 ^ (n + 1) = 3 * (64 * 3 ^ n) := by
        rw [pow_succ]
        ring
      _ < 3 * 4 ^ n := Nat.mul_lt_mul_of_pos_left ih (by norm_num)
      _ < 4 * 4 ^ n :=
          Nat.mul_lt_mul_of_pos_right
            (by norm_num : 3 < 4) (Nat.pow_pos (by norm_num : 0 < 4) (n := n))
      _ = 4 ^ (n + 1) := by
        rw [pow_succ]
        ring

lemma three_mul_shift_lt_four_mul_base_of_sixtyfour_window
    {k n d : ℕ} (hk : 15 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    3 * (n + d + k) < 4 * (n + k) :=
  ratio_window_linearize_of_pow_bracket
    (N := 64) (A := 4) (B := 3) (k := k) (n := n) (d := d)
    (by omega) (sixtyfour_mul_three_pow_lt_four_pow hk) hwin

lemma three_mul_gap_lt_n_add_k_of_sixtyfour_window
    {k n d : ℕ} (hk : 15 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    3 * d < n + k := by
  have hlinear := three_mul_shift_lt_four_mul_base_of_sixtyfour_window hk hwin
  omega

lemma three_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution
    {k n d : ℕ} (hk : 15 ≤ k)
    (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    3 * d < n + k := by
  have hwin := ratio_window_sixtyfour_nat heq
  exact three_mul_gap_lt_n_add_k_of_sixtyfour_window hk hwin.1

private lemma sixtyfour_mul_four_pow_lt_five_pow {k : ℕ} (hk : 19 ≤ k) :
    64 * 4 ^ k < 5 ^ k := by
  refine Nat.le_induction ?base ?step k hk
  · norm_num
  · intro n _ ih
    calc
      64 * 4 ^ (n + 1) = 4 * (64 * 4 ^ n) := by
        rw [pow_succ]
        ring
      _ < 4 * 5 ^ n := Nat.mul_lt_mul_of_pos_left ih (by norm_num)
      _ < 5 * 5 ^ n :=
          Nat.mul_lt_mul_of_pos_right
            (by norm_num : 4 < 5) (Nat.pow_pos (by norm_num : 0 < 5) (n := n))
      _ = 5 ^ (n + 1) := by
        rw [pow_succ]
        ring

lemma four_mul_shift_lt_five_mul_base_of_sixtyfour_window
    {k n d : ℕ} (hk : 19 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    4 * (n + d + k) < 5 * (n + k) :=
  ratio_window_linearize_of_pow_bracket
    (N := 64) (A := 5) (B := 4) (k := k) (n := n) (d := d)
    (by omega) (sixtyfour_mul_four_pow_lt_five_pow hk) hwin

lemma four_mul_gap_lt_n_add_k_of_sixtyfour_window
    {k n d : ℕ} (hk : 19 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    4 * d < n + k := by
  have hlinear := four_mul_shift_lt_five_mul_base_of_sixtyfour_window hk hwin
  omega

lemma four_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution
    {k n d : ℕ} (hk : 19 ≤ k)
    (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    4 * d < n + k := by
  have hwin := ratio_window_sixtyfour_nat heq
  exact four_mul_gap_lt_n_add_k_of_sixtyfour_window hk hwin.1

private lemma sixtyfour_mul_five_pow_lt_six_pow {k : ℕ} (hk : 23 ≤ k) :
    64 * 5 ^ k < 6 ^ k := by
  refine Nat.le_induction ?base ?step k hk
  · norm_num
  · intro n _ ih
    calc
      64 * 5 ^ (n + 1) = 5 * (64 * 5 ^ n) := by
        rw [pow_succ]
        ring
      _ < 5 * 6 ^ n := Nat.mul_lt_mul_of_pos_left ih (by norm_num)
      _ < 6 * 6 ^ n :=
          Nat.mul_lt_mul_of_pos_right
            (by norm_num : 5 < 6) (Nat.pow_pos (by norm_num : 0 < 6) (n := n))
      _ = 6 ^ (n + 1) := by
        rw [pow_succ]
        ring

lemma five_mul_shift_lt_six_mul_base_of_sixtyfour_window
    {k n d : ℕ} (hk : 23 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    5 * (n + d + k) < 6 * (n + k) :=
  ratio_window_linearize_of_pow_bracket
    (N := 64) (A := 6) (B := 5) (k := k) (n := n) (d := d)
    (by omega) (sixtyfour_mul_five_pow_lt_six_pow hk) hwin

lemma five_mul_gap_lt_n_add_k_of_sixtyfour_window
    {k n d : ℕ} (hk : 23 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    5 * d < n + k := by
  have hgap :=
    ratio_window_gap_bound_of_pow_bracket
      (N := 64) (A := 6) (B := 5) (k := k) (n := n) (d := d)
      (by omega) (by norm_num) (sixtyfour_mul_five_pow_lt_six_pow hk) hwin
  simpa using hgap

lemma five_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution
    {k n d : ℕ} (hk : 23 ≤ k)
    (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    5 * d < n + k := by
  have hwin := ratio_window_sixtyfour_nat heq
  exact five_mul_gap_lt_n_add_k_of_sixtyfour_window hk hwin.1

private lemma sixtyfour_mul_six_pow_lt_seven_pow {k : ℕ} (hk : 27 ≤ k) :
    64 * 6 ^ k < 7 ^ k := by
  refine Nat.le_induction ?base ?step k hk
  · norm_num
  · intro n _ ih
    calc
      64 * 6 ^ (n + 1) = 6 * (64 * 6 ^ n) := by
        rw [pow_succ]
        ring
      _ < 6 * 7 ^ n := Nat.mul_lt_mul_of_pos_left ih (by norm_num)
      _ < 7 * 7 ^ n :=
          Nat.mul_lt_mul_of_pos_right
            (by norm_num : 6 < 7) (Nat.pow_pos (by norm_num : 0 < 7) (n := n))
      _ = 7 ^ (n + 1) := by
        rw [pow_succ]
        ring

lemma six_mul_shift_lt_seven_mul_base_of_sixtyfour_window
    {k n d : ℕ} (hk : 27 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    6 * (n + d + k) < 7 * (n + k) :=
  ratio_window_linearize_of_pow_bracket
    (N := 64) (A := 7) (B := 6) (k := k) (n := n) (d := d)
    (by omega) (sixtyfour_mul_six_pow_lt_seven_pow hk) hwin

lemma six_mul_gap_lt_n_add_k_of_sixtyfour_window
    {k n d : ℕ} (hk : 27 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    6 * d < n + k := by
  exact ratio_window_succ_gap_bound_of_pow_bracket
    (N := 64) (R := 6) (k := k) (n := n) (d := d)
    (by omega) (sixtyfour_mul_six_pow_lt_seven_pow hk) hwin

lemma six_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution
    {k n d : ℕ} (hk : 27 ≤ k)
    (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    6 * d < n + k := by
  have hwin := ratio_window_sixtyfour_nat heq
  exact six_mul_gap_lt_n_add_k_of_sixtyfour_window hk hwin.1

private lemma sixtyfour_mul_seven_pow_lt_eight_pow {k : ℕ} (hk : 32 ≤ k) :
    64 * 7 ^ k < 8 ^ k := by
  refine Nat.le_induction ?base ?step k hk
  · norm_num
  · intro n _ ih
    calc
      64 * 7 ^ (n + 1) = 7 * (64 * 7 ^ n) := by
        rw [pow_succ]
        ring
      _ < 7 * 8 ^ n := Nat.mul_lt_mul_of_pos_left ih (by norm_num)
      _ < 8 * 8 ^ n :=
          Nat.mul_lt_mul_of_pos_right
            (by norm_num : 7 < 8) (Nat.pow_pos (by norm_num : 0 < 8) (n := n))
      _ = 8 ^ (n + 1) := by
        rw [pow_succ]
        ring

lemma seven_mul_shift_lt_eight_mul_base_of_sixtyfour_window
    {k n d : ℕ} (hk : 32 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    7 * (n + d + k) < 8 * (n + k) :=
  ratio_window_linearize_of_pow_bracket
    (N := 64) (A := 8) (B := 7) (k := k) (n := n) (d := d)
    (by omega) (sixtyfour_mul_seven_pow_lt_eight_pow hk) hwin

lemma seven_mul_gap_lt_n_add_k_of_sixtyfour_window
    {k n d : ℕ} (hk : 32 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 64 * (n + k) ^ k) :
    7 * d < n + k := by
  exact succ_gap_lt_n_add_k_of_sixtyfour_window
    (R := 7) (k := k) (n := n) (d := d)
    (by omega) (sixtyfour_mul_seven_pow_lt_eight_pow hk) hwin

lemma seven_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution
    {k n d : ℕ} (hk : 32 ≤ k)
    (heq : blockProduct k (n + d) = 64 * blockProduct k n) :
    7 * d < n + k := by
  have hwin := ratio_window_sixtyfour_nat heq
  exact seven_mul_gap_lt_n_add_k_of_sixtyfour_window hk hwin.1

/--
Sharper lower-side linearization of the `k=5` ratio window, using the exact
rational upper bracket `4^(1/5) < 859/651`.
-/
lemma k_five_ratio_window_lower_linear {n d : ℕ}
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5) :
    651 * (n + d + 5) < 859 * (n + 5) := by
  by_contra hnot
  have hge : 859 * (n + 5) ≤ 651 * (n + d + 5) := by omega
  have hpowge := Nat.pow_le_pow_left hge 5
  have hpowge' : 859 ^ 5 * (n + 5) ^ 5 ≤
      651 ^ 5 * (n + d + 5) ^ 5 := by
    simpa [Nat.mul_pow, mul_assoc, mul_comm, mul_left_comm] using hpowge
  have hcomb : 859 ^ 5 * (n + 5) ^ 5 ≤ (4 * 651 ^ 5) * (n + 5) ^ 5 := by
    calc
      859 ^ 5 * (n + 5) ^ 5 ≤ 651 ^ 5 * (n + d + 5) ^ 5 := hpowge'
      _ ≤ 651 ^ 5 * (4 * (n + 5) ^ 5) := Nat.mul_le_mul_left (651 ^ 5) hlo
      _ = (4 * 651 ^ 5) * (n + 5) ^ 5 := by ring
  have hbase_pos : 0 < (n + 5) ^ 5 := Nat.pow_pos (by omega)
  have hcancel : 859 ^ 5 ≤ 4 * 651 ^ 5 :=
    Nat.le_of_mul_le_mul_right hcomb hbase_pos
  have hlt : 4 * 651 ^ 5 < 859 ^ 5 := by norm_num
  omega

/--
Sharper upper-side linearization of the `k=5` ratio window, using the exact
rational lower bracket `1177/892 < 4^(1/5)`.
-/
lemma k_five_ratio_window_upper_linear {n d : ℕ}
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    1177 * (n + 1) < 892 * (n + d + 1) := by
  by_contra hnot
  have hle : 892 * (n + d + 1) ≤ 1177 * (n + 1) := by omega
  have hpowle := Nat.pow_le_pow_left hle 5
  have hpowle' : 892 ^ 5 * (n + d + 1) ^ 5 ≤
      1177 ^ 5 * (n + 1) ^ 5 := by
    simpa [Nat.mul_pow, mul_assoc, mul_comm, mul_left_comm] using hpowle
  have hcomb : (4 * 892 ^ 5) * (n + 1) ^ 5 ≤
      1177 ^ 5 * (n + 1) ^ 5 := by
    calc
      (4 * 892 ^ 5) * (n + 1) ^ 5 = 892 ^ 5 * (4 * (n + 1) ^ 5) := by ring
      _ ≤ 892 ^ 5 * (n + d + 1) ^ 5 := Nat.mul_le_mul_left (892 ^ 5) hup
      _ ≤ 1177 ^ 5 * (n + 1) ^ 5 := hpowle'
  have hbase_pos : 0 < (n + 1) ^ 5 := Nat.pow_pos (by omega)
  have hcancel : 4 * 892 ^ 5 ≤ 1177 ^ 5 :=
    Nat.le_of_mul_le_mul_right hcomb hbase_pos
  have hlt : 1177 ^ 5 < 4 * 892 ^ 5 := by norm_num
  omega

/--
Compact integer bounds for `n` in the `k=5`, `N=4` ratio window.
These are much sharper than the coarse `n < 4B` finite-certificate bound.
-/
lemma k_five_ratio_window_linear_bounds {n d : ℕ}
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    651 * d < 208 * n + 1040 ∧ 285 * (n + 1) < 892 * d := by
  constructor
  · have h := k_five_ratio_window_lower_linear hlo
    omega
  · have h := k_five_ratio_window_upper_linear hup
    omega

/--
Compact integer bounds for `n` in the `k=6`, `N=4` ratio window, using the
exact rational brackets `5/4 < 4^(1/6) < 63/50`.
-/
lemma k_six_ratio_window_linear_bounds {n d : ℕ}
    (hlo : (n + d + 6) ^ 6 ≤ 4 * (n + 6) ^ 6)
    (hup : 4 * (n + 1) ^ 6 ≤ (n + d + 1) ^ 6) :
    50 * d < 13 * (n + 6) ∧ n + 1 < 4 * d := by
  constructor
  · have hgap :=
      ratio_window_gap_bound_of_pow_bracket
        (N := 4) (A := 63) (B := 50) (k := 6) (n := n) (d := d)
        (by norm_num) (by norm_num) (by norm_num) hlo
    simpa using hgap
  · have hgap :=
      ratio_window_upper_gap_bound_of_pow_bracket
        (N := 4) (A := 5) (B := 4) (k := 6) (n := n) (d := d)
        (by norm_num) (by norm_num) (by norm_num) hup
    simpa using hgap

/--
Compact integer bounds for `n` in the `k=7`, `N=4` ratio window, using the
exact rational brackets `39/32 < 4^(1/7) < 50/41`.
-/
lemma k_seven_ratio_window_linear_bounds {n d : ℕ}
    (hlo : (n + d + 7) ^ 7 ≤ 4 * (n + 7) ^ 7)
    (hup : 4 * (n + 1) ^ 7 ≤ (n + d + 1) ^ 7) :
    41 * d < 9 * (n + 7) ∧ 7 * (n + 1) < 32 * d := by
  constructor
  · have hgap :=
      ratio_window_gap_bound_of_pow_bracket
        (N := 4) (A := 50) (B := 41) (k := 7) (n := n) (d := d)
        (by norm_num) (by norm_num) (by norm_num) hlo
    simpa using hgap
  · have hgap :=
      ratio_window_upper_gap_bound_of_pow_bracket
        (N := 4) (A := 39) (B := 32) (k := 7) (n := n) (d := d)
        (by norm_num) (by norm_num) (by norm_num) hup
    simpa using hgap

/--
Uniform `k=5` ratio-window bound used by the finite gap certificates: if
`d < B`, then the upper ratio-window inequality already forces `n < 4B`.
-/
lemma k_five_gap_lt_ratio_window_n_lt_four_mul {n d B : ℕ} (hdB : d < B)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    n < 4 * B := by
  by_contra hnot
  have hn : 4 * B ≤ n := by omega
  have hnd_le : n + d + 1 ≤ n + B := by omega
  have hmain : 4 * (n + 1) ^ 5 ≤ (n + B) ^ 5 := by
    exact le_trans hup (Nat.pow_le_pow_left hnd_le 5)
  have hlin : 4 * (n + B) < 5 * (n + 1) := by omega
  have hpow_lt := Nat.pow_lt_pow_left hlin (by norm_num : 5 ≠ 0)
  have hpow_lt' : 4 ^ 5 * (n + B) ^ 5 < 5 ^ 5 * (n + 1) ^ 5 := by
    simpa [Nat.mul_pow, mul_assoc, mul_comm, mul_left_comm] using hpow_lt
  have hle : 4 ^ 5 * (4 * (n + 1) ^ 5) ≤ 4 ^ 5 * (n + B) ^ 5 := by
    exact Nat.mul_le_mul_left (4 ^ 5) hmain
  have hbad : 4 ^ 6 * (n + 1) ^ 5 < 5 ^ 5 * (n + 1) ^ 5 := by
    calc
      4 ^ 6 * (n + 1) ^ 5 = 4 ^ 5 * (4 * (n + 1) ^ 5) := by ring
      _ ≤ 4 ^ 5 * (n + B) ^ 5 := hle
      _ < 5 ^ 5 * (n + 1) ^ 5 := hpow_lt'
  have hcoef : 4 ^ 6 < 5 ^ 5 := Nat.lt_of_mul_lt_mul_right hbad
  norm_num at hcoef

/--
For the `k=5` ratio window, a gap `d<125` forces `n<500`.  This makes the
small-gap skeleton escape below a genuine finite certificate over
`0≤n<500`, `0≤d<125`, rather than an unbounded search.
-/
lemma k_five_gap_lt_125_ratio_window_n_lt_500 {n d : ℕ} (hd125 : d < 125)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    n < 500 := by
  simpa using
    (k_five_gap_lt_ratio_window_n_lt_four_mul
      (n := n) (d := d) (B := 125) hd125 hup)

set_option maxRecDepth 130000 in
set_option maxHeartbeats 1200000 in
-- Exhaustive kernel-checked certificate over `0≤n<500`, `0≤d<125`.
private theorem k_five_gap_lt_125_divisor_skeleton_escape_cert :
    ∀ (n : Fin 500) (d : Fin 125),
      5 ≤ (d : ℕ) →
      ((n : ℕ) + (d : ℕ) + 5) ^ 5 ≤ 4 * ((n : ℕ) + 5) ^ 5 →
      4 * ((n : ℕ) + 1) ^ 5 ≤ ((n : ℕ) + (d : ℕ) + 1) ^ 5 →
      ∃ j, j ∈ Finset.Icc 1 5 ∧
        ¬ (n : ℕ) + j ∣ shiftedDiffProductAt 5 (d : ℕ) j := by
  decide

/--
Kernel-checked small-gap slice of the remaining localized divisor-skeleton
target: for `k=5`, no `N=4` ratio-window candidate with `d<125` can satisfy
all localized row divisibilities.
-/
theorem k_five_gap_lt_125_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd125 : d < 125)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  have hn500 : n < 500 := k_five_gap_lt_125_ratio_window_n_lt_500 hd125 hup
  exact k_five_gap_lt_125_divisor_skeleton_escape_cert
    ⟨n, hn500⟩ ⟨d, hd125⟩ hd5 hlo hup

/--
Consequently, there is no `N=4`, `k=5` quotient solution whose gap
`m-n` is less than `125`.
-/
theorem no_solution_four_five_gap_lt_125 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 125 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd125 : d < 125 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨j, hj, hnot⟩ :=
    k_five_gap_lt_125_divisor_skeleton_escape hd hd125 hlo hup
  exact hnot (individual_divisor_skeleton_four hd hj heq)

/--
For the `k=5` ratio window, a gap `d<200` forces `n<800`. This supports the
split finite certificate for the next gap band `125≤d<200`.
-/
lemma k_five_gap_lt_200_ratio_window_n_lt_800 {n d : ℕ} (hd200 : d < 200)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    n < 800 := by
  simpa using
    (k_five_gap_lt_ratio_window_n_lt_four_mul
      (n := n) (d := d) (B := 200) hd200 hup)

set_option maxRecDepth 130000 in
set_option maxHeartbeats 1400000 in
-- Exhaustive kernel-checked certificate over `0≤n<800`, `125≤d<200`.
private theorem k_five_gap_range_125_200_divisor_skeleton_escape_cert :
    ∀ (n : Fin 800) (r : Fin 75),
      ((n : ℕ) + (125 + (r : ℕ)) + 5) ^ 5 ≤ 4 * ((n : ℕ) + 5) ^ 5 →
      4 * ((n : ℕ) + 1) ^ 5 ≤ ((n : ℕ) + (125 + (r : ℕ)) + 1) ^ 5 →
      ∃ j, j ∈ Finset.Icc 1 5 ∧
        ¬ (n : ℕ) + j ∣ shiftedDiffProductAt 5 (125 + (r : ℕ)) j := by
  decide

/--
Kernel-checked finite band of the remaining localized divisor-skeleton target:
for `k=5`, no `N=4` ratio-window candidate with `125≤d<200` can satisfy all
localized row divisibilities.
-/
theorem k_five_gap_range_125_200_divisor_skeleton_escape
    {n d : ℕ} (hd125 : 125 ≤ d) (hd200 : d < 200)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  have hn800 : n < 800 := k_five_gap_lt_200_ratio_window_n_lt_800 hd200 hup
  have hr75 : d - 125 < 75 := by omega
  have hd_eq : 125 + (d - 125) = d := by omega
  obtain ⟨j, hj, hnot⟩ :=
    k_five_gap_range_125_200_divisor_skeleton_escape_cert
      ⟨n, hn800⟩ ⟨d - 125, hr75⟩
      (by simpa [hd_eq] using hlo)
      (by simpa [hd_eq] using hup)
  exact ⟨j, hj, by simpa [hd_eq] using hnot⟩

/--
Wider kernel-checked finite slice: there is no `N=4`, `k=5` quotient solution
whose gap `m-n` is less than `200`.
-/
theorem no_solution_four_five_gap_lt_200 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 200 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd200 : d < 200 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  by_cases hd125 : d < 125
  · obtain ⟨j, hj, hnot⟩ :=
      k_five_gap_lt_125_divisor_skeleton_escape hd hd125 hlo hup
    exact hnot (individual_divisor_skeleton_four hd hj heq)
  · have hd125_le : 125 ≤ d := by omega
    obtain ⟨j, hj, hnot⟩ :=
      k_five_gap_range_125_200_divisor_skeleton_escape hd125_le hd200 hlo hup
    exact hnot (individual_divisor_skeleton_four hd hj heq)

/--
For the `k=5` ratio window, a gap `d<300` forces `n<1200`. This supports the
split finite certificate for the next gap band `200≤d<300`.
-/
lemma k_five_gap_lt_300_ratio_window_n_lt_1200 {n d : ℕ} (hd300 : d < 300)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    n < 1200 := by
  simpa using
    (k_five_gap_lt_ratio_window_n_lt_four_mul
      (n := n) (d := d) (B := 300) hd300 hup)

set_option maxRecDepth 160000 in
set_option maxHeartbeats 2200000 in
-- Exhaustive kernel-checked certificate over `0≤n<1200`, `200≤d<300`.
private theorem k_five_gap_range_200_300_divisor_skeleton_escape_cert :
    ∀ (n : Fin 1200) (r : Fin 100),
      ((n : ℕ) + (200 + (r : ℕ)) + 5) ^ 5 ≤ 4 * ((n : ℕ) + 5) ^ 5 →
      4 * ((n : ℕ) + 1) ^ 5 ≤ ((n : ℕ) + (200 + (r : ℕ)) + 1) ^ 5 →
      ∃ j, j ∈ Finset.Icc 1 5 ∧
        ¬ (n : ℕ) + j ∣ shiftedDiffProductAt 5 (200 + (r : ℕ)) j := by
  decide

/--
Kernel-checked finite band of the remaining localized divisor-skeleton target:
for `k=5`, no `N=4` ratio-window candidate with `200≤d<300` can satisfy all
localized row divisibilities.
-/
theorem k_five_gap_range_200_300_divisor_skeleton_escape
    {n d : ℕ} (hd200 : 200 ≤ d) (hd300 : d < 300)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  have hn1200 : n < 1200 := k_five_gap_lt_300_ratio_window_n_lt_1200 hd300 hup
  have hr100 : d - 200 < 100 := by omega
  have hd_eq : 200 + (d - 200) = d := by omega
  obtain ⟨j, hj, hnot⟩ :=
    k_five_gap_range_200_300_divisor_skeleton_escape_cert
      ⟨n, hn1200⟩ ⟨d - 200, hr100⟩
      (by simpa [hd_eq] using hlo)
      (by simpa [hd_eq] using hup)
  exact ⟨j, hj, by simpa [hd_eq] using hnot⟩

/--
Wider kernel-checked finite slice: there is no `N=4`, `k=5` quotient solution
whose gap `m-n` is less than `300`.
-/
theorem no_solution_four_five_gap_lt_300 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 300 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd300 : d < 300 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  by_cases hd200 : d < 200
  · exact no_solution_four_five_gap_lt_200 ⟨n, m, hm, by omega, hq⟩
  · have hd200_le : 200 ≤ d := by omega
    obtain ⟨j, hj, hnot⟩ :=
      k_five_gap_range_200_300_divisor_skeleton_escape hd200_le hd300 hlo hup
    exact hnot (individual_divisor_skeleton_four hd hj heq)

/--
For the `k=5` ratio window, a gap `d<400` forces `n<1600`. This supports the
split finite certificate for the next gap band `300≤d<400`.
-/
lemma k_five_gap_lt_400_ratio_window_n_lt_1600 {n d : ℕ} (hd400 : d < 400)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    n < 1600 := by
  simpa using
    (k_five_gap_lt_ratio_window_n_lt_four_mul
      (n := n) (d := d) (B := 400) hd400 hup)

set_option maxRecDepth 180000 in
set_option maxHeartbeats 3000000 in
-- Exhaustive kernel-checked certificate over `0≤n<1600`, `300≤d<400`.
private theorem k_five_gap_range_300_400_divisor_skeleton_escape_cert :
    ∀ (n : Fin 1600) (r : Fin 100),
      ((n : ℕ) + (300 + (r : ℕ)) + 5) ^ 5 ≤ 4 * ((n : ℕ) + 5) ^ 5 →
      4 * ((n : ℕ) + 1) ^ 5 ≤ ((n : ℕ) + (300 + (r : ℕ)) + 1) ^ 5 →
      ∃ j, j ∈ Finset.Icc 1 5 ∧
        ¬ (n : ℕ) + j ∣ shiftedDiffProductAt 5 (300 + (r : ℕ)) j := by
  decide

/--
Kernel-checked finite band of the remaining localized divisor-skeleton target:
for `k=5`, no `N=4` ratio-window candidate with `300≤d<400` can satisfy all
localized row divisibilities.
-/
theorem k_five_gap_range_300_400_divisor_skeleton_escape
    {n d : ℕ} (hd300 : 300 ≤ d) (hd400 : d < 400)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  have hn1600 : n < 1600 := k_five_gap_lt_400_ratio_window_n_lt_1600 hd400 hup
  have hr100 : d - 300 < 100 := by omega
  have hd_eq : 300 + (d - 300) = d := by omega
  obtain ⟨j, hj, hnot⟩ :=
    k_five_gap_range_300_400_divisor_skeleton_escape_cert
      ⟨n, hn1600⟩ ⟨d - 300, hr100⟩
      (by simpa [hd_eq] using hlo)
      (by simpa [hd_eq] using hup)
  exact ⟨j, hj, by simpa [hd_eq] using hnot⟩

/--
Wider kernel-checked finite slice: there is no `N=4`, `k=5` quotient solution
whose gap `m-n` is less than `400`.
-/
theorem no_solution_four_five_gap_lt_400 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 400 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd400 : d < 400 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  by_cases hd300 : d < 300
  · exact no_solution_four_five_gap_lt_300 ⟨n, m, hm, by omega, hq⟩
  · have hd300_le : 300 ≤ d := by omega
    obtain ⟨j, hj, hnot⟩ :=
      k_five_gap_range_300_400_divisor_skeleton_escape hd300_le hd400 hlo hup
    exact hnot (individual_divisor_skeleton_four hd hj heq)

/--
For the `k=5` ratio window, a gap `d<500` forces `n<1565`, using the sharper
linearized ratio-window bounds instead of the coarser `n<2000` estimate.
-/
lemma k_five_gap_lt_500_ratio_window_n_lt_1565 {n d : ℕ} (hd500 : d < 500)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    n < 1565 := by
  have hlin := k_five_ratio_window_linear_bounds hlo hup
  omega

set_option maxRecDepth 220000 in
set_option maxHeartbeats 5000000 in
-- Exhaustive kernel-checked certificate over `0≤n<1565`, `400≤d<500`.
private theorem k_five_gap_range_400_500_divisor_skeleton_escape_cert :
    ∀ (n : Fin 1565) (r : Fin 100),
      651 * (400 + (r : ℕ)) < 208 * (n : ℕ) + 1040 →
      285 * ((n : ℕ) + 1) < 892 * (400 + (r : ℕ)) →
      ∃ j, j ∈ Finset.Icc 1 5 ∧
        ¬ (n : ℕ) + j ∣ shiftedDiffProductAt 5 (400 + (r : ℕ)) j := by
  decide

/--
Kernel-checked finite band of the remaining localized divisor-skeleton target:
for `k=5`, no `N=4` ratio-window candidate with `400≤d<500` can satisfy all
localized row divisibilities.
-/
theorem k_five_gap_range_400_500_divisor_skeleton_escape
    {n d : ℕ} (hd400 : 400 ≤ d) (hd500 : d < 500)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  have hn1565 : n < 1565 := k_five_gap_lt_500_ratio_window_n_lt_1565 hd500 hlo hup
  have hr100 : d - 400 < 100 := by omega
  have hd_eq : 400 + (d - 400) = d := by omega
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  obtain ⟨j, hj, hnot⟩ :=
    k_five_gap_range_400_500_divisor_skeleton_escape_cert
      ⟨n, hn1565⟩ ⟨d - 400, hr100⟩
      (by simpa [hd_eq] using hlin_lower)
      (by simpa [hd_eq] using hlin_upper)
  exact ⟨j, hj, by simpa [hd_eq] using hnot⟩

/--
Wider kernel-checked finite slice: there is no `N=4`, `k=5` quotient solution
whose gap `m-n` is less than `500`.
-/
theorem no_solution_four_five_gap_lt_500 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 500 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd500 : d < 500 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  by_cases hd400 : d < 400
  · exact no_solution_four_five_gap_lt_400 ⟨n, m, hm, by omega, hq⟩
  · have hd400_le : 400 ≤ d := by omega
    obtain ⟨j, hj, hnot⟩ :=
      k_five_gap_range_400_500_divisor_skeleton_escape hd400_le hd500 hlo hup
    exact hnot (individual_divisor_skeleton_four hd hj heq)

/--
For the `k=5` ratio window, a gap `d<600` forces `n<1874`, using the sharper
linearized ratio-window bounds.
-/
lemma k_five_gap_lt_600_ratio_window_n_lt_1874 {n d : ℕ} (hd600 : d < 600)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    n < 1874 := by
  have hlin := k_five_ratio_window_linear_bounds hlo hup
  omega

set_option maxRecDepth 240000 in
set_option maxHeartbeats 6500000 in
-- Exhaustive kernel-checked certificate over `0≤n<1874`, `500≤d<600`.
private theorem k_five_gap_range_500_600_divisor_skeleton_escape_cert :
    ∀ (n : Fin 1874) (r : Fin 100),
      651 * (500 + (r : ℕ)) < 208 * (n : ℕ) + 1040 →
      285 * ((n : ℕ) + 1) < 892 * (500 + (r : ℕ)) →
      ∃ j, j ∈ Finset.Icc 1 5 ∧
        ¬ (n : ℕ) + j ∣ shiftedDiffProductAt 5 (500 + (r : ℕ)) j := by
  decide

/--
Kernel-checked finite band of the remaining localized divisor-skeleton target:
for `k=5`, no `N=4` ratio-window candidate with `500≤d<600` can satisfy all
localized row divisibilities.
-/
theorem k_five_gap_range_500_600_divisor_skeleton_escape
    {n d : ℕ} (hd500 : 500 ≤ d) (hd600 : d < 600)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  have hn1874 : n < 1874 := k_five_gap_lt_600_ratio_window_n_lt_1874 hd600 hlo hup
  have hr100 : d - 500 < 100 := by omega
  have hd_eq : 500 + (d - 500) = d := by omega
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  obtain ⟨j, hj, hnot⟩ :=
    k_five_gap_range_500_600_divisor_skeleton_escape_cert
      ⟨n, hn1874⟩ ⟨d - 500, hr100⟩
      (by simpa [hd_eq] using hlin_lower)
      (by simpa [hd_eq] using hlin_upper)
  exact ⟨j, hj, by simpa [hd_eq] using hnot⟩

/--
Wider kernel-checked finite slice: there is no `N=4`, `k=5` quotient solution
whose gap `m-n` is less than `600`.
-/
theorem no_solution_four_five_gap_lt_600 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 600 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd600 : d < 600 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  by_cases hd500 : d < 500
  · exact no_solution_four_five_gap_lt_500 ⟨n, m, hm, by omega, hq⟩
  · have hd500_le : 500 ≤ d := by omega
    obtain ⟨j, hj, hnot⟩ :=
      k_five_gap_range_500_600_divisor_skeleton_escape hd500_le hd600 hlo hup
    exact hnot (individual_divisor_skeleton_four hd hj heq)

/--
For the `k=5` ratio window, a gap `d<700` forces `n<2190`, using the sharper
linearized ratio-window bounds.
-/
lemma k_five_gap_lt_700_ratio_window_n_lt_2190 {n d : ℕ} (hd700 : d < 700)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    n < 2190 := by
  have hlin := k_five_ratio_window_linear_bounds hlo hup
  omega

set_option maxRecDepth 260000 in
set_option maxHeartbeats 8000000 in
-- Exhaustive kernel-checked certificate over `0≤n<2190`, `600≤d<700`.
private theorem k_five_gap_range_600_700_divisor_skeleton_escape_cert :
    ∀ (n : Fin 2190) (r : Fin 100),
      651 * (600 + (r : ℕ)) < 208 * (n : ℕ) + 1040 →
      285 * ((n : ℕ) + 1) < 892 * (600 + (r : ℕ)) →
      ∃ j, j ∈ Finset.Icc 1 5 ∧
        ¬ (n : ℕ) + j ∣ shiftedDiffProductAt 5 (600 + (r : ℕ)) j := by
  decide

/--
Kernel-checked finite band of the remaining localized divisor-skeleton target:
for `k=5`, no `N=4` ratio-window candidate with `600≤d<700` can satisfy all
localized row divisibilities.
-/
theorem k_five_gap_range_600_700_divisor_skeleton_escape
    {n d : ℕ} (hd600 : 600 ≤ d) (hd700 : d < 700)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  have hn2190 : n < 2190 := k_five_gap_lt_700_ratio_window_n_lt_2190 hd700 hlo hup
  have hr100 : d - 600 < 100 := by omega
  have hd_eq : 600 + (d - 600) = d := by omega
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  obtain ⟨j, hj, hnot⟩ :=
    k_five_gap_range_600_700_divisor_skeleton_escape_cert
      ⟨n, hn2190⟩ ⟨d - 600, hr100⟩
      (by simpa [hd_eq] using hlin_lower)
      (by simpa [hd_eq] using hlin_upper)
  exact ⟨j, hj, by simpa [hd_eq] using hnot⟩

/--
Wider kernel-checked finite slice: there is no `N=4`, `k=5` quotient solution
whose gap `m-n` is less than `700`.
-/
theorem no_solution_four_five_gap_lt_700 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 700 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd700 : d < 700 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  by_cases hd600 : d < 600
  · exact no_solution_four_five_gap_lt_600 ⟨n, m, hm, by omega, hq⟩
  · have hd600_le : 600 ≤ d := by omega
    obtain ⟨j, hj, hnot⟩ :=
      k_five_gap_range_600_700_divisor_skeleton_escape hd600_le hd700 hlo hup
    exact hnot (individual_divisor_skeleton_four hd hj heq)

/-- First reduced row product after writing `n+1 = 3d+s` in the `k=5` case. -/
def kFiveRowOneReducedProduct (s : ℕ) : ℕ :=
  s * (s - 3) * (s - 6) * (s - 9) * (s - 12)

/-- Second reduced row product after writing `n+1 = 3d+s` in the `k=5` case. -/
def kFiveRowTwoReducedProduct (s : ℕ) : ℕ :=
  (s + 4) * (s + 1) * (s - 2) * (s - 5) * (s - 8)

/--
Exact first row product after reparametrizing by `A = n+1 = 24s+t`.
The candidate gap is `d = (23s+t)/3`.
-/
def kFiveExactRowOneST (s t : ℕ) : ℕ :=
  let d := (23 * s + t) / 3
  d * (d + 1) * (d + 2) * (d + 3) * (d + 4)

/--
Exact second row product after reparametrizing by `A = n+1 = 24s+t`.
The candidate gap is `d = (23s+t)/3`.
-/
def kFiveExactRowTwoST (s t : ℕ) : ℕ :=
  let d := (23 * s + t) / 3
  (d - 1) * d * (d + 1) * (d + 2) * (d + 3)

/-- First exact reduced row converted to a product depending only on `t`. -/
def kFiveExactRowOneTProduct (t : ℕ) : ℕ :=
  t * (t + 72) * (t + 144) * (t + 216) * (t + 288)

/-- Second exact reduced row converted to a product depending only on `t`. -/
def kFiveExactRowTwoTProduct (t : ℕ) : ℕ :=
  (t - 95) * (t - 23) * (t + 49) * (t + 121) * (t + 193)

/-- Shared four-term core in the first two localized `k=5` rows. -/
def kFiveCoreFour (d : ℕ) : ℕ :=
  d * (d + 1) * (d + 2) * (d + 3)

lemma shiftedDiffProductAt_five_one (d : ℕ) :
    shiftedDiffProductAt 5 d 1 = d * (d + 1) * (d + 2) * (d + 3) * (d + 4) := by
  unfold shiftedDiffProductAt
  norm_num [Finset.prod_Icc_succ_top]

lemma shiftedDiffProductAt_five_two (d : ℕ) (hd : 1 ≤ d) :
    shiftedDiffProductAt 5 d 2 = (d - 1) * d * (d + 1) * (d + 2) * (d + 3) := by
  unfold shiftedDiffProductAt
  norm_num [Finset.prod_Icc_succ_top,
    show d + 1 - 2 = d - 1 by omega,
    show d + 2 - 2 = d by omega,
    show d + 3 - 2 = d + 1 by omega,
    show d + 4 - 2 = d + 2 by omega,
    show d + 5 - 2 = d + 3 by omega]

/-- Weak finite-certificate row budget: `139968 = 576 * 3^5`. -/
def kFiveCweak : ℕ := 139968

/-- Sharpened `t`-row budget after using the `3^5` row congruence. -/
def kFiveB576 : ℕ := 576

/-- First shifted row product for `k=5`. -/
def kFiveP0d (d : ℕ) : ℕ :=
  d * (d + 1) * (d + 2) * (d + 3) * (d + 4)

/-- Second shifted row product for `k=5`. -/
def kFiveP1d (d : ℕ) : ℕ :=
  (d - 1) * d * (d + 1) * (d + 2) * (d + 3)

/-- First reduced `t` row product from the weak classifier note. -/
def kFiveA0t (t : ℕ) : ℕ :=
  kFiveRowOneReducedProduct t

/-- Second reduced `t` row product from the weak classifier note. -/
def kFiveA1t (t : ℕ) : ℕ :=
  kFiveRowTwoReducedProduct t

/-- Residual pairs left by the current weak finite classifier target. -/
def kFiveWeakCandidates : List (ℕ × ℕ) :=
  [(696, 87), (751, 96), (778, 97), (1309, 168),
    (1350, 174), (6290, 813), (73371, 9522)]

/--
The weak first-row product divisibility implies the sharper `576` `t`-budget
divisibility.  Modulo `A = 3d+t`, the reduced row product is
`-3^5 * d(d+1)(d+2)(d+3)(d+4)`.
-/
theorem k_five_row0_weak_product_to_tbudget {A d t : ℕ}
    (ht : 13 ≤ t) (hA : A = 3 * d + t)
    (hrow : A ∣ kFiveCweak * kFiveP0d d) :
    A ∣ kFiveB576 * kFiveA0t t := by
  have hzrow :
      (((kFiveCweak * kFiveP0d d : ℕ) : ZMod A)) = 0 := by
    exact (ZMod.natCast_eq_zero_iff (kFiveCweak * kFiveP0d d) A).mpr hrow
  have hzero : (((3 * d + t : ℕ) : ZMod A)) = 0 := by
    rw [← hA]
    exact ZMod.natCast_self A
  have ht_rel : ((t : ℕ) : ZMod A) = -(((3 * d : ℕ) : ZMod A)) := by
    have hzero' : (((3 * d : ℕ) : ZMod A) + ((t : ℕ) : ZMod A)) = 0 := by
      simpa [Nat.cast_add] using hzero
    exact eq_neg_of_add_eq_zero_right hzero'
  have hprod_eq : ((kFiveA0t t : ℕ) : ZMod A) =
      -((3 : ZMod A) ^ 5) * ((kFiveP0d d : ℕ) : ZMod A) := by
    unfold kFiveA0t kFiveP0d kFiveRowOneReducedProduct
    norm_num [Nat.cast_sub (by omega : 3 ≤ t),
      Nat.cast_sub (by omega : 6 ≤ t), Nat.cast_sub (by omega : 9 ≤ t),
      Nat.cast_sub (by omega : 12 ≤ t), Nat.cast_mul, Nat.cast_add]
    rw [ht_rel]
    norm_num [Nat.cast_mul, Nat.cast_add]
    ring
  have hbudget : (((kFiveB576 * kFiveA0t t : ℕ) : ZMod A)) = 0 := by
    rw [Nat.cast_mul, hprod_eq]
    have hC : (kFiveCweak : ZMod A) =
        (kFiveB576 : ZMod A) * (3 : ZMod A) ^ 5 := by
      norm_num [kFiveCweak, kFiveB576]
    rw [← neg_eq_zero]
    rw [neg_mul]
    simpa [Nat.cast_mul, hC, mul_assoc] using hzrow
  exact (ZMod.natCast_eq_zero_iff (kFiveB576 * kFiveA0t t) A).mp hbudget

/--
The weak second-row product divisibility implies the sharper `576` `t`-budget
divisibility.  Modulo `B = 3d+t+1`, the reduced row product is
`-3^5 * (d-1)d(d+1)(d+2)(d+3)`.
-/
theorem k_five_row1_weak_product_to_tbudget {B d t : ℕ}
    (hd : 1 ≤ d) (ht : 13 ≤ t) (hB : B = 3 * d + t + 1)
    (hrow : B ∣ kFiveCweak * kFiveP1d d) :
    B ∣ kFiveB576 * kFiveA1t t := by
  have hzrow :
      (((kFiveCweak * kFiveP1d d : ℕ) : ZMod B)) = 0 := by
    exact (ZMod.natCast_eq_zero_iff (kFiveCweak * kFiveP1d d) B).mpr hrow
  have hzero : (((3 * d + t + 1 : ℕ) : ZMod B)) = 0 := by
    rw [← hB]
    exact ZMod.natCast_self B
  have ht_rel : ((t : ℕ) : ZMod B) =
      -((((3 * d + 1 : ℕ) : ZMod B))) := by
    have hzero' : ((((3 * d + 1 : ℕ) : ZMod B) + ((t : ℕ) : ZMod B))) = 0 := by
      simpa [Nat.cast_add, add_assoc, add_comm, add_left_comm] using hzero
    exact eq_neg_of_add_eq_zero_right hzero'
  have hprod_eq : ((kFiveA1t t : ℕ) : ZMod B) =
      -((3 : ZMod B) ^ 5) * ((kFiveP1d d : ℕ) : ZMod B) := by
    unfold kFiveA1t kFiveP1d kFiveRowTwoReducedProduct
    norm_num [Nat.cast_sub (by omega : 2 ≤ t),
      Nat.cast_sub (by omega : 5 ≤ t), Nat.cast_sub (by omega : 8 ≤ t),
      Nat.cast_mul, Nat.cast_add]
    rw [ht_rel]
    norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_sub (by omega : 1 ≤ d)]
    ring
  have hbudget : (((kFiveB576 * kFiveA1t t : ℕ) : ZMod B)) = 0 := by
    rw [Nat.cast_mul, hprod_eq]
    have hC : (kFiveCweak : ZMod B) =
        (kFiveB576 : ZMod B) * (3 : ZMod B) ^ 5 := by
      norm_num [kFiveCweak, kFiveB576]
    rw [← neg_eq_zero]
    rw [neg_mul]
    simpa [Nat.cast_mul, hC, mul_assoc] using hzrow
  exact (ZMod.natCast_eq_zero_iff (kFiveB576 * kFiveA1t t) B).mp hbudget

theorem k_five_row0_weak_product_to_tbudget_linear {d t : ℕ}
    (ht : 13 ≤ t)
    (hrow : 3 * d + t ∣ kFiveCweak * kFiveP0d d) :
    3 * d + t ∣ kFiveB576 * kFiveA0t t :=
  k_five_row0_weak_product_to_tbudget ht rfl hrow

theorem k_five_row1_weak_product_to_tbudget_linear {d t : ℕ}
    (hd : 1 ≤ d) (ht : 13 ≤ t)
    (hrow : 3 * d + t + 1 ∣ kFiveCweak * kFiveP1d d) :
    3 * d + t + 1 ∣ kFiveB576 * kFiveA1t t :=
  k_five_row1_weak_product_to_tbudget hd ht rfl hrow

/-- Integer form of the first reduced `t` row product. -/
def kFiveA0z (t : ℤ) : ℤ :=
  t * (t - 3) * (t - 6) * (t - 9) * (t - 12)

/-- Integer form of the second reduced `t` row product. -/
def kFiveA1z (t : ℤ) : ℤ :=
  (t + 4) * (t + 1) * (t - 2) * (t - 5) * (t - 8)

/-- First large-certificate product after writing `a = 24t+r`. -/
def kFiveR0z (r : ℤ) : ℤ :=
  r * (r + 72) * (r + 144) * (r + 216) * (r + 288)

/-- Second large-certificate product after writing `a = 24t+r`. -/
def kFiveR1z (r : ℤ) : ℤ :=
  (r - 95) * (r - 23) * (r + 49) * (r + 121) * (r + 193)

/-- Quotient polynomial for the first `a = 24t+r` row identity. -/
def kFiveQ0z (r t : ℤ) : ℤ :=
  r ^ 4 - 24 * r ^ 3 * t + 720 * r ^ 3
    + 576 * r ^ 2 * t ^ 2 - 17280 * r ^ 2 * t + 181440 * r ^ 2
    - 13824 * r * t ^ 3 + 414720 * r * t ^ 2 - 4354560 * r * t
    + 18662400 * r
    + 331776 * t ^ 4 - 9953280 * t ^ 3
    + 104509440 * t ^ 2 - 447897600 * t + 644972544

/-- Quotient polynomial for the second `a = 24t+r` row identity. -/
def kFiveQ1z (r t : ℤ) : ℤ :=
  r ^ 4 - 24 * r ^ 3 * t + 244 * r ^ 3
    + 576 * r ^ 2 * t ^ 2 - 5832 * r ^ 2 * t - 2154 * r ^ 2
    - 13824 * r * t ^ 3 + 139392 * r * t ^ 2 + 57528 * r * t
    - 2631596 * r
    + 331776 * t ^ 4 - 3331584 * t ^ 3
    - 1520064 * t ^ 2 + 63100776 * t - 47750735

/-- Natural form of the first large-certificate `r` product. -/
def kFiveR0n (r : ℕ) : ℕ :=
  r * (r + 72) * (r + 144) * (r + 216) * (r + 288)

/-- Natural form of the second large-certificate `r` product. -/
def kFiveR1n (r : ℕ) : ℕ :=
  (r - 95) * (r - 23) * (r + 49) * (r + 121) * (r + 193)

/--
Polynomial identity underlying the first `r`-budget transfer:
`24^5 A0(t) + R0(r)` is a multiple of `24t+r`.
-/
theorem k_five_A0_R0_identity (r t : ℤ) :
    24 ^ 5 * kFiveA0z t + kFiveR0z r =
      (24 * t + r) * kFiveQ0z r t := by
  dsimp [kFiveA0z, kFiveR0z, kFiveQ0z]
  ring

/--
Polynomial identity underlying the second `r`-budget transfer:
`24^5 A1(t) + R1(r)` is a multiple of `24t+r+1`.
-/
theorem k_five_A1_R1_identity (r t : ℤ) :
    24 ^ 5 * kFiveA1z t + kFiveR1z r =
      (24 * t + r + 1) * kFiveQ1z r t := by
  dsimp [kFiveA1z, kFiveR1z, kFiveQ1z]
  ring

/--
If `a = 24t+r`, the first `576*A0(t)` budget implies a stricter `r`-budget
after removing the common factor with `576`.
-/
theorem k_five_row0_tbudget_to_rbudget {a r t : ℕ}
    (ht : 13 ≤ t) (ha : a = 24 * t + r)
    (h0t : a ∣ kFiveB576 * kFiveA0t t) :
    a / Nat.gcd a kFiveB576 ∣ kFiveR0n r := by
  have hA0_cast : ((kFiveA0t t : ℕ) : ℤ) = kFiveA0z (t : ℤ) := by
    unfold kFiveA0t kFiveRowOneReducedProduct kFiveA0z
    norm_num [Nat.cast_sub (by omega : 3 ≤ t),
      Nat.cast_sub (by omega : 6 ≤ t), Nat.cast_sub (by omega : 9 ≤ t),
      Nat.cast_sub (by omega : 12 ≤ t), Nat.cast_mul]
  have hR0_cast : ((kFiveR0n r : ℕ) : ℤ) = kFiveR0z (r : ℤ) := by
    unfold kFiveR0n kFiveR0z
    norm_num [Nat.cast_mul, Nat.cast_add]
  have ha_z : ((a : ℕ) : ℤ) = 24 * (t : ℤ) + (r : ℤ) := by
    rw [ha]
    norm_num [Nat.cast_add, Nat.cast_mul]
  have h0z : (a : ℤ) ∣ (kFiveB576 : ℤ) * kFiveA0z (t : ℤ) := by
    have hz : ((a : ℕ) : ℤ) ∣ (((kFiveB576 * kFiveA0t t : ℕ) : ℤ)) := by
      exact_mod_cast h0t
    simpa [hA0_cast, Nat.cast_mul] using hz
  have h0z' :
      (a : ℤ) ∣ (kFiveB576 : ℤ) * (24 ^ 5 * kFiveA0z (t : ℤ)) := by
    simpa [mul_assoc, mul_comm, mul_left_comm] using dvd_mul_of_dvd_right h0z (24 ^ 5)
  have hid : (a : ℤ) ∣ 24 ^ 5 * kFiveA0z (t : ℤ) + kFiveR0z (r : ℤ) := by
    rw [ha_z, k_five_A0_R0_identity]
    exact dvd_mul_right _ _
  have hid' :
      (a : ℤ) ∣ (kFiveB576 : ℤ) *
        (24 ^ 5 * kFiveA0z (t : ℤ) + kFiveR0z (r : ℤ)) := by
    exact dvd_mul_of_dvd_right hid kFiveB576
  have hR : (a : ℤ) ∣ (kFiveB576 : ℤ) * kFiveR0z (r : ℤ) := by
    have hsub := Int.dvd_sub hid' h0z'
    simpa [mul_add, mul_assoc, mul_left_comm, mul_comm] using hsub
  have hRnat : a ∣ kFiveB576 * kFiveR0n r := by
    have hR' : (a : ℤ) ∣ ((kFiveB576 * kFiveR0n r : ℕ) : ℤ) := by
      simpa [hR0_cast, Nat.cast_mul] using hR
    exact_mod_cast hR'
  exact div_gcd_dvd_of_dvd_mul (by omega : 0 < a) hRnat

/--
If `a = 24t+r`, the second `576*A1(t)` budget implies a stricter `r`-budget
after removing the common factor with `576`.
-/
theorem k_five_row1_tbudget_to_rbudget {a r t : ℕ}
    (hr : 95 ≤ r) (ht : 13 ≤ t) (ha : a = 24 * t + r)
    (h1t : a + 1 ∣ kFiveB576 * kFiveA1t t) :
    (a + 1) / Nat.gcd (a + 1) kFiveB576 ∣ kFiveR1n r := by
  have hA1_cast : ((kFiveA1t t : ℕ) : ℤ) = kFiveA1z (t : ℤ) := by
    unfold kFiveA1t kFiveRowTwoReducedProduct kFiveA1z
    norm_num [Nat.cast_sub (by omega : 2 ≤ t),
      Nat.cast_sub (by omega : 5 ≤ t), Nat.cast_sub (by omega : 8 ≤ t),
      Nat.cast_mul, Nat.cast_add]
  have hR1_cast : ((kFiveR1n r : ℕ) : ℤ) = kFiveR1z (r : ℤ) := by
    unfold kFiveR1n kFiveR1z
    norm_num [Nat.cast_sub (by omega : 95 ≤ r),
      Nat.cast_sub (by omega : 23 ≤ r), Nat.cast_mul, Nat.cast_add]
  have ha_z : (((a + 1 : ℕ) : ℤ)) = 24 * (t : ℤ) + (r : ℤ) + 1 := by
    rw [ha]
    norm_num [Nat.cast_add, Nat.cast_mul]
  have h1z : ((a + 1 : ℕ) : ℤ) ∣ (kFiveB576 : ℤ) * kFiveA1z (t : ℤ) := by
    have hz : ((a + 1 : ℕ) : ℤ) ∣
        (((kFiveB576 * kFiveA1t t : ℕ) : ℤ)) := by
      exact_mod_cast h1t
    simpa [hA1_cast, Nat.cast_mul] using hz
  have h1z' :
      ((a + 1 : ℕ) : ℤ) ∣ (kFiveB576 : ℤ) * (24 ^ 5 * kFiveA1z (t : ℤ)) := by
    simpa [mul_assoc, mul_comm, mul_left_comm] using dvd_mul_of_dvd_right h1z (24 ^ 5)
  have hid :
      ((a + 1 : ℕ) : ℤ) ∣ 24 ^ 5 * kFiveA1z (t : ℤ) + kFiveR1z (r : ℤ) := by
    rw [ha_z, k_five_A1_R1_identity]
    exact dvd_mul_right _ _
  have hid' :
      ((a + 1 : ℕ) : ℤ) ∣ (kFiveB576 : ℤ) *
        (24 ^ 5 * kFiveA1z (t : ℤ) + kFiveR1z (r : ℤ)) := by
    exact dvd_mul_of_dvd_right hid kFiveB576
  have hR : ((a + 1 : ℕ) : ℤ) ∣ (kFiveB576 : ℤ) * kFiveR1z (r : ℤ) := by
    have hsub := Int.dvd_sub hid' h1z'
    simpa [mul_add, mul_assoc, mul_left_comm, mul_comm] using hsub
  have hRnat : a + 1 ∣ kFiveB576 * kFiveR1n r := by
    have hR' : ((a + 1 : ℕ) : ℤ) ∣ ((kFiveB576 * kFiveR1n r : ℕ) : ℤ) := by
      simpa [hR1_cast, Nat.cast_mul] using hR
    exact_mod_cast hR'
  exact div_gcd_dvd_of_dvd_mul (by omega : 0 < a + 1) hRnat

lemma k_five_core_common_dvd_dadd4_dvd_24 {s d : ℕ}
    (hcore : s ∣ kFiveCoreFour d) (hedge : s ∣ d + 4) :
    s ∣ 24 := by
  let Q := d * (d * d + 2 * d + 3)
  have hleft : s ∣ kFiveCoreFour d + 6 * (d + 4) := by
    exact Nat.dvd_add hcore (dvd_mul_of_dvd_right hedge 6)
  have hprod : s ∣ (d + 4) * Q := by
    exact Nat.dvd_mul_right_of_dvd hedge Q
  have hidentity :
      kFiveCoreFour d + 6 * (d + 4) = 24 + (d + 4) * Q := by
    dsimp [kFiveCoreFour, Q]
    ring
  have hright : s ∣ 24 + (d + 4) * Q := by
    simpa [hidentity] using hleft
  exact (Nat.dvd_add_iff_right hprod).mpr (by simpa [Nat.add_comm] using hright)

lemma k_five_core_common_dvd_dsub1_dvd_24 {s d : ℕ}
    (hd : 1 ≤ d) (hcore : s ∣ kFiveCoreFour d) (hedge : s ∣ d - 1) :
    s ∣ 24 := by
  let e := d - 1
  let Q := e * e * e + 10 * e * e + 35 * e + 50
  have hde : d = e + 1 := by
    dsimp [e]
    omega
  have hedge_e : s ∣ e := by
    simpa [e] using hedge
  have hprod : s ∣ e * Q := by
    exact Nat.dvd_mul_right_of_dvd hedge_e Q
  have hidentity : kFiveCoreFour d = 24 + e * Q := by
    rw [hde]
    dsimp [kFiveCoreFour, Q]
    ring
  have hright : s ∣ 24 + e * Q := by
    simpa [hidentity] using hcore
  exact (Nat.dvd_add_iff_right hprod).mpr (by simpa [Nat.add_comm] using hright)

lemma k_five_core_dvd_of_dvd_dadd4_and_dvd_24 {s d : ℕ}
    (hedge : s ∣ d + 4) (h24 : s ∣ 24) :
    s ∣ kFiveCoreFour d := by
  let Q := d * (d * d + 2 * d + 3)
  have hprod : s ∣ (d + 4) * Q := by
    exact Nat.dvd_mul_right_of_dvd hedge Q
  have hsix : s ∣ 6 * (d + 4) := by
    exact dvd_mul_of_dvd_right hedge 6
  have hrhs : s ∣ 24 + (d + 4) * Q := by
    exact Nat.dvd_add h24 hprod
  have hidentity :
      kFiveCoreFour d + 6 * (d + 4) = 24 + (d + 4) * Q := by
    dsimp [kFiveCoreFour, Q]
    ring
  have hleft : s ∣ kFiveCoreFour d + 6 * (d + 4) := by
    simpa [hidentity] using hrhs
  exact (Nat.dvd_add_iff_right hsix).mpr (by simpa [Nat.add_comm] using hleft)

lemma k_five_core_dvd_of_dvd_dsub1_and_dvd_24 {s d : ℕ}
    (hd : 1 ≤ d) (hedge : s ∣ d - 1) (h24 : s ∣ 24) :
    s ∣ kFiveCoreFour d := by
  let e := d - 1
  let Q := e * e * e + 10 * e * e + 35 * e + 50
  have hde : d = e + 1 := by
    dsimp [e]
    omega
  have hedge_e : s ∣ e := by
    simpa [e] using hedge
  have hprod : s ∣ e * Q := by
    exact Nat.dvd_mul_right_of_dvd hedge_e Q
  have hidentity : kFiveCoreFour d = 24 + e * Q := by
    rw [hde]
    dsimp [kFiveCoreFour, Q]
    ring
  have hrhs : s ∣ 24 + e * Q := by
    exact Nat.dvd_add h24 hprod
  simpa [hidentity] using hrhs

/-- Row-local budget for the first `k=5` row after the `t` refinement. -/
def kFiveQ0dt (d t : ℕ) : ℕ :=
  Nat.gcd (Nat.gcd (d + 4) (t - 12)) 24

/-- Row-local budget for the second `k=5` row after the `t` refinement. -/
def kFiveQ1dt (d t : ℕ) : ℕ :=
  Nat.gcd (Nat.gcd (d - 1) (t + 4)) 24

/-- Product of five explicitly listed natural numbers. -/
def kFiveProd5 (x0 x1 x2 x3 x4 : ℕ) : ℕ :=
  x0 * x1 * x2 * x3 * x4

/-- LCM of five explicitly listed natural numbers. -/
def kFiveLcm5 (x0 x1 x2 x3 x4 : ℕ) : ℕ :=
  Nat.lcm x0 (Nat.lcm x1 (Nat.lcm x2 (Nat.lcm x3 x4)))

/-- Collision factor for five consecutive integers starting at `x`. -/
def kFiveK5 (x : ℕ) : ℕ :=
  kFiveProd5 x (x + 1) (x + 2) (x + 3) (x + 4) /
    kFiveLcm5 x (x + 1) (x + 2) (x + 3) (x + 4)

/-- Five-term row-0 lcm in the reduced `t` variables. -/
def kFiveT0 (t : ℕ) : ℕ :=
  kFiveLcm5 t (t - 3) (t - 6) (t - 9) (t - 12)

/-- Five-term row-1 lcm in the reduced `t` variables. -/
def kFiveT1 (t : ℕ) : ℕ :=
  kFiveLcm5 (t + 4) (t + 1) (t - 2) (t - 5) (t - 8)

lemma kFiveLcm5_dvd_prod5 (x0 x1 x2 x3 x4 : ℕ) :
    kFiveLcm5 x0 x1 x2 x3 x4 ∣ kFiveProd5 x0 x1 x2 x3 x4 := by
  dsimp [kFiveLcm5, kFiveProd5]
  refine Nat.lcm_dvd ?_ ?_
  · refine ⟨x1 * x2 * x3 * x4, ?_⟩
    ring
  · refine Nat.lcm_dvd ?_ ?_
    · simpa [mul_assoc, mul_comm, mul_left_comm] using
        dvd_mul_of_dvd_left (dvd_refl x1) (x0 * x2 * x3 * x4)
    · refine Nat.lcm_dvd ?_ ?_
      · simpa [mul_assoc, mul_comm, mul_left_comm] using
          dvd_mul_of_dvd_left (dvd_refl x2) (x0 * x1 * x3 * x4)
      · refine Nat.lcm_dvd ?_ ?_
        · simpa [mul_assoc, mul_comm, mul_left_comm] using
            dvd_mul_of_dvd_left (dvd_refl x3) (x0 * x1 * x2 * x4)
        · simpa [mul_assoc, mul_comm, mul_left_comm] using
            dvd_mul_of_dvd_left (dvd_refl x4) (x0 * x1 * x2 * x3)

theorem k_five_T0_dvd_row_one_reduced_product (t : ℕ) :
    kFiveT0 t ∣ kFiveRowOneReducedProduct t := by
  simpa [kFiveT0, kFiveRowOneReducedProduct, kFiveProd5] using
    kFiveLcm5_dvd_prod5 t (t - 3) (t - 6) (t - 9) (t - 12)

theorem k_five_T1_dvd_row_two_reduced_product (t : ℕ) :
    kFiveT1 t ∣ kFiveRowTwoReducedProduct t := by
  simpa [kFiveT1, kFiveRowTwoReducedProduct, kFiveProd5] using
    kFiveLcm5_dvd_prod5 (t + 4) (t + 1) (t - 2) (t - 5) (t - 8)

theorem k_five_Q0dt_dvd_24 (d t : ℕ) :
    kFiveQ0dt d t ∣ 24 :=
  Nat.gcd_dvd_right (Nat.gcd (d + 4) (t - 12)) 24

theorem k_five_Q1dt_dvd_24 (d t : ℕ) :
    kFiveQ1dt d t ∣ 24 :=
  Nat.gcd_dvd_right (Nat.gcd (d - 1) (t + 4)) 24

theorem k_five_row0_collision_filter_implies_reduced_product_filter
    {a d t : ℕ}
    (hK : kFiveK5 d ∣ 24)
    (hfilter : a ∣ kFiveQ0dt d t * kFiveK5 d * kFiveT0 t) :
    a ∣ 24 * 24 * kFiveRowOneReducedProduct t := by
  have hQK : kFiveQ0dt d t * kFiveK5 d ∣ 24 * 24 :=
    Nat.mul_dvd_mul (k_five_Q0dt_dvd_24 d t) hK
  have hT : kFiveT0 t ∣ kFiveRowOneReducedProduct t :=
    k_five_T0_dvd_row_one_reduced_product t
  have hprod :
      kFiveQ0dt d t * kFiveK5 d * kFiveT0 t ∣
        24 * 24 * kFiveRowOneReducedProduct t := by
    simpa [mul_assoc] using Nat.mul_dvd_mul hQK hT
  exact dvd_trans hfilter hprod

theorem k_five_row1_collision_filter_implies_reduced_product_filter
    {a d t : ℕ}
    (hK : kFiveK5 (d - 1) ∣ 24)
    (hfilter : a + 1 ∣ kFiveQ1dt d t * kFiveK5 (d - 1) * kFiveT1 t) :
    a + 1 ∣ 24 * 24 * kFiveRowTwoReducedProduct t := by
  have hQK : kFiveQ1dt d t * kFiveK5 (d - 1) ∣ 24 * 24 :=
    Nat.mul_dvd_mul (k_five_Q1dt_dvd_24 d t) hK
  have hT : kFiveT1 t ∣ kFiveRowTwoReducedProduct t :=
    k_five_T1_dvd_row_two_reduced_product t
  have hprod :
      kFiveQ1dt d t * kFiveK5 (d - 1) * kFiveT1 t ∣
        24 * 24 * kFiveRowTwoReducedProduct t := by
    simpa [mul_assoc] using Nat.mul_dvd_mul hQK hT
  exact dvd_trans hfilter hprod

/--
The seven residual pairs from the current weak classifier target do not satisfy
the exact collision-lcm row filters.  This is the explicit prime-power failure
table, checked by kernel reduction over the concrete numerals.
-/
theorem k_five_weak_candidates_fail_exact_collision_rows {d t : ℕ}
    (hc : (d, t) ∈ kFiveWeakCandidates) :
    let a := 3 * d + t
    ¬ (a ∣ kFiveQ0dt d t * kFiveK5 d * kFiveT0 t ∧
        a + 1 ∣ kFiveQ1dt d t * kFiveK5 (d - 1) * kFiveT1 t) := by
  dsimp [kFiveWeakCandidates] at hc
  fin_cases hc <;>
    norm_num [kFiveQ0dt, kFiveQ1dt, kFiveK5, kFiveT0, kFiveT1,
      kFiveProd5, kFiveLcm5]

/--
The two `t`-refined row-local budgets are coprime: any common divisor divides
both `(d+4)-(d-1)=5` and `(t+4)-(t-12)=16`, and also divides `24`.
-/
theorem k_five_Q0dt_coprime_Q1dt {d t : ℕ}
    (hd : 1 ≤ d) (ht : 12 ≤ t) :
    Nat.Coprime (kFiveQ0dt d t) (kFiveQ1dt d t) := by
  change Nat.gcd (kFiveQ0dt d t) (kFiveQ1dt d t) = 1
  let g := Nat.gcd (kFiveQ0dt d t) (kFiveQ1dt d t)
  have hg_Q0 : g ∣ kFiveQ0dt d t := Nat.gcd_dvd_left (kFiveQ0dt d t) (kFiveQ1dt d t)
  have hg_Q1 : g ∣ kFiveQ1dt d t := Nat.gcd_dvd_right (kFiveQ0dt d t) (kFiveQ1dt d t)
  have hg_dadd4 : g ∣ d + 4 := by
    exact dvd_trans hg_Q0
      (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d + 4) (t - 12)) 24)
        (Nat.gcd_dvd_left (d + 4) (t - 12)))
  have hg_dsub1 : g ∣ d - 1 := by
    exact dvd_trans hg_Q1
      (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d - 1) (t + 4)) 24)
        (Nat.gcd_dvd_left (d - 1) (t + 4)))
  have hg_5 : g ∣ 5 := by
    have hsub : d + 4 - (d - 1) = 5 := by omega
    simpa [hsub] using Nat.dvd_sub hg_dadd4 hg_dsub1
  have hg_tminus : g ∣ t - 12 := by
    exact dvd_trans hg_Q0
      (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d + 4) (t - 12)) 24)
        (Nat.gcd_dvd_right (d + 4) (t - 12)))
  have hg_tplus : g ∣ t + 4 := by
    exact dvd_trans hg_Q1
      (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d - 1) (t + 4)) 24)
        (Nat.gcd_dvd_right (d - 1) (t + 4)))
  have hg_16 : g ∣ 16 := by
    have hsub : t + 4 - (t - 12) = 16 := by omega
    simpa [hsub] using Nat.dvd_sub hg_tplus hg_tminus
  have hg_1 : g ∣ 1 := by
    have hg_gcd : g ∣ Nat.gcd 5 16 := Nat.dvd_gcd hg_5 hg_16
    simpa using hg_gcd
  exact Nat.dvd_one.mp hg_1

theorem k_five_divisor_of_Q0dt_forces_congruences {M d t m : ℕ}
    (hM : M ∣ kFiveQ0dt d t) (hm : m ∣ M) :
    m ∣ d + 4 ∧ m ∣ t - 12 ∧ m ∣ 24 := by
  have hmQ : m ∣ kFiveQ0dt d t := dvd_trans hm hM
  constructor
  · exact dvd_trans hmQ
      (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d + 4) (t - 12)) 24)
        (Nat.gcd_dvd_left (d + 4) (t - 12)))
  constructor
  · exact dvd_trans hmQ
      (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d + 4) (t - 12)) 24)
        (Nat.gcd_dvd_right (d + 4) (t - 12)))
  · exact dvd_trans hmQ (Nat.gcd_dvd_right (Nat.gcd (d + 4) (t - 12)) 24)

theorem k_five_divisor_of_Q1dt_forces_congruences {M d t m : ℕ}
    (hM : M ∣ kFiveQ1dt d t) (hm : m ∣ M) :
    m ∣ d - 1 ∧ m ∣ t + 4 ∧ m ∣ 24 := by
  have hmQ : m ∣ kFiveQ1dt d t := dvd_trans hm hM
  constructor
  · exact dvd_trans hmQ
      (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d - 1) (t + 4)) 24)
        (Nat.gcd_dvd_left (d - 1) (t + 4)))
  constructor
  · exact dvd_trans hmQ
      (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d - 1) (t + 4)) 24)
        (Nat.gcd_dvd_right (d - 1) (t + 4)))
  · exact dvd_trans hmQ (Nat.gcd_dvd_right (Nat.gcd (d - 1) (t + 4)) 24)

theorem k_five_missing_cofactors_coprime_of_dvd_Q0dt_Q1dt {M0 M1 d t : ℕ}
    (hd : 1 ≤ d) (ht : 12 ≤ t)
    (hM0 : M0 ∣ kFiveQ0dt d t) (hM1 : M1 ∣ kFiveQ1dt d t) :
    Nat.Coprime M0 M1 := by
  have hM0_coprime_Q1 :
      Nat.Coprime M0 (kFiveQ1dt d t) :=
    (k_five_Q0dt_coprime_Q1dt (d := d) (t := t) hd ht).coprime_dvd_left hM0
  exact hM0_coprime_Q1.coprime_dvd_right hM1

/--
Compact first-two-row form for the remaining `k=5` case.  If
`a = n+1 = 3d+t`, the first two localized row divisibilities are equivalent to
one combined divisibility by the consecutive product `a(a+1)`.
-/
theorem k_five_first_two_rows_combined_linear_dvd {a d t : ℕ}
    (hd : 1 ≤ d) (ha : a = 3 * d + t) :
    (a ∣ shiftedDiffProductAt 5 d 1 ∧ a + 1 ∣ shiftedDiffProductAt 5 d 2) ↔
      a * (a + 1) ∣
        d * (d + 1) * (d + 2) * (d + 3) * (16 * d + 5 * t + 4) := by
  let C := d * (d + 1) * (d + 2) * (d + 3)
  let L := 16 * d + 5 * t + 4
  have hrow1 :
      shiftedDiffProductAt 5 d 1 = C * (d + 4) := by
    simpa [C] using shiftedDiffProductAt_five_one d
  have hrow2 :
      shiftedDiffProductAt 5 d 2 = C * (d - 1) := by
    rw [shiftedDiffProductAt_five_two d hd]
    dsimp [C]
    ring
  have hmod_a : a ∣ C * L ↔ a ∣ C * (d + 4) := by
    have hzero_a : (((3 * d + t : ℕ) : ZMod a)) = 0 := by
      rw [← ha]
      exact ZMod.natCast_self a
    have ht_rel : ((t : ℕ) : ZMod a) = -((3 : ZMod a) * (d : ZMod a)) := by
      have hzero' :
          ((3 : ZMod a) * (d : ZMod a) + (t : ZMod a)) = 0 := by
        simpa [Nat.cast_add, Nat.cast_mul] using hzero_a
      exact eq_neg_of_add_eq_zero_left (by simpa [add_comm] using hzero')
    have hL : ((L : ℕ) : ZMod a) = ((d + 4 : ℕ) : ZMod a) := by
      dsimp [L]
      norm_num [Nat.cast_add, Nat.cast_mul]
      rw [ht_rel]
      ring
    constructor
    · intro h
      have hz : ((C * L : ℕ) : ZMod a) = 0 :=
        (ZMod.natCast_eq_zero_iff (C * L) a).mpr h
      have hz' : ((C * (d + 4) : ℕ) : ZMod a) = 0 := by
        simpa [Nat.cast_mul, hL] using hz
      exact (ZMod.natCast_eq_zero_iff (C * (d + 4)) a).mp hz'
    · intro h
      have hz : ((C * (d + 4) : ℕ) : ZMod a) = 0 :=
        (ZMod.natCast_eq_zero_iff (C * (d + 4)) a).mpr h
      have hz' : ((C * L : ℕ) : ZMod a) = 0 := by
        simpa [Nat.cast_mul, hL] using hz
      exact (ZMod.natCast_eq_zero_iff (C * L) a).mp hz'
  have hmod_succ : a + 1 ∣ C * L ↔ a + 1 ∣ C * (d - 1) := by
    have ha_succ : a + 1 = 3 * d + t + 1 := by omega
    have hzero_a : (((3 * d + t + 1 : ℕ) : ZMod (a + 1))) = 0 := by
      rw [← ha_succ]
      exact ZMod.natCast_self (a + 1)
    have ht_rel :
        ((t : ℕ) : ZMod (a + 1)) =
          -(((3 : ZMod (a + 1)) * (d : ZMod (a + 1)) + 1)) := by
      have hzero' :
          ((3 : ZMod (a + 1)) * (d : ZMod (a + 1)) + (t : ZMod (a + 1)) + 1) =
            0 := by
        simpa [Nat.cast_add, Nat.cast_mul, add_assoc, add_comm, add_left_comm] using hzero_a
      have hzero'' :
          ((t : ZMod (a + 1)) + ((3 : ZMod (a + 1)) * (d : ZMod (a + 1)) + 1)) =
            0 := by
        simpa [add_assoc, add_comm, add_left_comm] using hzero'
      exact eq_neg_of_add_eq_zero_left hzero''
    have hL : ((L : ℕ) : ZMod (a + 1)) = ((d - 1 : ℕ) : ZMod (a + 1)) := by
      dsimp [L]
      norm_num [Nat.cast_add, Nat.cast_mul, Nat.cast_sub hd]
      rw [ht_rel]
      ring
    constructor
    · intro h
      have hz : ((C * L : ℕ) : ZMod (a + 1)) = 0 :=
        (ZMod.natCast_eq_zero_iff (C * L) (a + 1)).mpr h
      have hz' : ((C * (d - 1) : ℕ) : ZMod (a + 1)) = 0 := by
        simpa [Nat.cast_mul, hL] using hz
      exact (ZMod.natCast_eq_zero_iff (C * (d - 1)) (a + 1)).mp hz'
    · intro h
      have hz : ((C * (d - 1) : ℕ) : ZMod (a + 1)) = 0 :=
        (ZMod.natCast_eq_zero_iff (C * (d - 1)) (a + 1)).mpr h
      have hz' : ((C * L : ℕ) : ZMod (a + 1)) = 0 := by
        simpa [Nat.cast_mul, hL] using hz
      exact (ZMod.natCast_eq_zero_iff (C * L) (a + 1)).mp hz'
  constructor
  · rintro ⟨hrow1_dvd, hrow2_dvd⟩
    have ha_dvd : a ∣ C * L := by
      exact hmod_a.mpr (by simpa [hrow1] using hrow1_dvd)
    have hsucc_dvd : a + 1 ∣ C * L := by
      exact hmod_succ.mpr (by simpa [hrow2] using hrow2_dvd)
    have hcop : Nat.Coprime a (a + 1) := by
      exact
        ((Nat.coprime_self_add_right (m := a) (n := 1)).mpr (Nat.coprime_one_right a))
    have hcombined : a * (a + 1) ∣ C * L :=
      hcop.mul_dvd_of_dvd_of_dvd ha_dvd hsucc_dvd
    simpa [C, L, mul_assoc] using hcombined
  · intro hcombined
    have hcombined' : a * (a + 1) ∣ C * L := by
      simpa [C, L, mul_assoc] using hcombined
    have ha_dvd : a ∣ C * L :=
      dvd_trans (dvd_mul_right a (a + 1)) hcombined'
    have hsucc_dvd : a + 1 ∣ C * L :=
      dvd_trans (dvd_mul_of_dvd_right (dvd_refl (a + 1)) a) hcombined'
    exact ⟨by simpa [hrow1] using hmod_a.mp ha_dvd,
      by simpa [hrow2] using hmod_succ.mp hsucc_dvd⟩

/--
Core-cancelled form of the compact first-two-row reduction.  With
`a = n+1 = 3d+t` and `C=d(d+1)(d+2)(d+3)`, the first two localized rows are
equivalent to divisibility of the linear form `16d+5t+4` by the product of the
parts of `a` and `a+1` not already covered by the shared core `C`.
-/
theorem k_five_first_two_rows_core_dvd_linear {a d t : ℕ}
    (hd : 1 ≤ d) (ha : a = 3 * d + t) :
    (a ∣ shiftedDiffProductAt 5 d 1 ∧ a + 1 ∣ shiftedDiffProductAt 5 d 2) ↔
      (a / Nat.gcd a (d * (d + 1) * (d + 2) * (d + 3))) *
          ((a + 1) / Nat.gcd (a + 1) (d * (d + 1) * (d + 2) * (d + 3))) ∣
        16 * d + 5 * t + 4 := by
  let C := d * (d + 1) * (d + 2) * (d + 3)
  let L := 16 * d + 5 * t + 4
  change
    (a ∣ shiftedDiffProductAt 5 d 1 ∧ a + 1 ∣ shiftedDiffProductAt 5 d 2) ↔
      (a / Nat.gcd a C) * ((a + 1) / Nat.gcd (a + 1) C) ∣ L
  have hapos : 0 < a := by omega
  have hasuccpos : 0 < a + 1 := by omega
  have hcop_a : Nat.Coprime a (a + 1) := by
    exact ((Nat.coprime_self_add_right (m := a) (n := 1)).mpr (Nat.coprime_one_right a))
  have hA_dvd_a : a / Nat.gcd a C ∣ a :=
    Nat.div_dvd_of_dvd (Nat.gcd_dvd_left a C)
  have hB_dvd_succ : (a + 1) / Nat.gcd (a + 1) C ∣ a + 1 :=
    Nat.div_dvd_of_dvd (Nat.gcd_dvd_left (a + 1) C)
  have hcop_A_succ : Nat.Coprime (a / Nat.gcd a C) (a + 1) :=
    Nat.Coprime.coprime_dvd_left hA_dvd_a hcop_a
  have hcop_AB : Nat.Coprime (a / Nat.gcd a C) ((a + 1) / Nat.gcd (a + 1) C) :=
    Nat.Coprime.coprime_dvd_right hB_dvd_succ hcop_A_succ
  have hcombined :=
    k_five_first_two_rows_combined_linear_dvd (a := a) (d := d) (t := t) hd ha
  constructor
  · intro hrows
    have hCL : a * (a + 1) ∣ C * L := by
      simpa [C, L, mul_assoc] using hcombined.mp hrows
    have ha_CL : a ∣ C * L :=
      dvd_trans (dvd_mul_right a (a + 1)) hCL
    have hsucc_CL : a + 1 ∣ C * L :=
      dvd_trans (dvd_mul_of_dvd_right (dvd_refl (a + 1)) a) hCL
    have hA_L : a / Nat.gcd a C ∣ L :=
      div_gcd_dvd_of_dvd_mul hapos ha_CL
    have hB_L : (a + 1) / Nat.gcd (a + 1) C ∣ L :=
      div_gcd_dvd_of_dvd_mul hasuccpos hsucc_CL
    exact hcop_AB.mul_dvd_of_dvd_of_dvd hA_L hB_L
  · intro hcore
    have hA_L : a / Nat.gcd a C ∣ L :=
      dvd_trans (dvd_mul_right (a / Nat.gcd a C) ((a + 1) / Nat.gcd (a + 1) C)) hcore
    have hB_L : (a + 1) / Nat.gcd (a + 1) C ∣ L :=
      dvd_trans (dvd_mul_of_dvd_right (dvd_refl ((a + 1) / Nat.gcd (a + 1) C))
        (a / Nat.gcd a C)) hcore
    have hg0pos : 0 < Nat.gcd a C := Nat.gcd_pos_of_pos_left C hapos
    have hg1pos : 0 < Nat.gcd (a + 1) C := Nat.gcd_pos_of_pos_left C hasuccpos
    have ha_gL : a ∣ Nat.gcd a C * L :=
      (Nat.div_dvd_iff_dvd_mul (Nat.gcd_dvd_left a C) hg0pos).mp hA_L
    have hsucc_gL : a + 1 ∣ Nat.gcd (a + 1) C * L :=
      (Nat.div_dvd_iff_dvd_mul (Nat.gcd_dvd_left (a + 1) C) hg1pos).mp hB_L
    have hg0L_CL : Nat.gcd a C * L ∣ C * L :=
      Nat.mul_dvd_mul_right (Nat.gcd_dvd_right a C) L
    have hg1L_CL : Nat.gcd (a + 1) C * L ∣ C * L :=
      Nat.mul_dvd_mul_right (Nat.gcd_dvd_right (a + 1) C) L
    have ha_CL : a ∣ C * L := dvd_trans ha_gL hg0L_CL
    have hsucc_CL : a + 1 ∣ C * L := dvd_trans hsucc_gL hg1L_CL
    have hCL : a * (a + 1) ∣ C * L :=
      hcop_a.mul_dvd_of_dvd_of_dvd ha_CL hsucc_CL
    exact hcombined.mpr (by simpa [C, L, mul_assoc] using hCL)

/--
Upper-edge primitive form of the second localized `k=5` row.  If
`d-1=qR`, `t+4=qS`, and `a=3d+t`, then the row
`a+1 ∣ (d-1)d(d+1)(d+2)(d+3)` is equivalent, after cancelling the shared edge
factor and using `gcd(R,S)=1`, to divisibility of the four core terms by
`3R+S`.
-/
theorem k_five_second_row_upper_edge_primitive_core {a d t q R S : ℕ}
    (hd : 1 ≤ d) (ha : a = 3 * d + t)
    (hd_edge : d - 1 = q * R) (ht_edge : t + 4 = q * S)
    (hqpos : 0 < q) (hcop : Nat.Coprime R S) :
    (a + 1 ∣ shiftedDiffProductAt 5 d 2) ↔
      3 * R + S ∣ (q * R + 1) * (q * R + 2) * (q * R + 3) * (q * R + 4) := by
  let g := 3 * R + S
  let P := (q * R + 1) * (q * R + 2) * (q * R + 3) * (q * R + 4)
  have hd_eq : d = q * R + 1 := by omega
  have ha_eq : a + 1 = q * g := by
    calc
      a + 1 = 3 * d + t + 1 := by omega
      _ = 3 * (q * R + 1) + t + 1 := by rw [hd_eq]
      _ = 3 * (q * R) + (t + 4) := by ring
      _ = 3 * (q * R) + q * S := by rw [ht_edge]
      _ = q * g := by dsimp [g]; ring
  have hrow_eq : shiftedDiffProductAt 5 d 2 = q * (R * P) := by
    rw [shiftedDiffProductAt_five_two d hd]
    dsimp [P]
    rw [hd_eq]
    have hdsub : q * R + 1 - 1 = q * R := by omega
    rw [hdsub]
    ring
  have hcop_gR : Nat.Coprime g R := by
    dsimp [g]
    have hSR : Nat.Coprime S R := hcop.symm
    have h1 : Nat.Coprime (S + R) R := by
      exact (Nat.coprime_add_self_left).mpr hSR
    have h2 : Nat.Coprime ((S + R) + R) R := by
      exact (Nat.coprime_add_self_left).mpr h1
    have h3 : Nat.Coprime (((S + R) + R) + R) R := by
      exact (Nat.coprime_add_self_left).mpr h2
    simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm, Nat.mul_comm,
      Nat.mul_left_comm, Nat.mul_assoc] using h3
  constructor
  · intro hrow
    have hq : q * g ∣ q * (R * P) := by
      simpa [ha_eq, hrow_eq, g, P] using hrow
    have hg_RP : g ∣ R * P := Nat.dvd_of_mul_dvd_mul_left hqpos hq
    exact hcop_gR.dvd_of_dvd_mul_left hg_RP
  · intro hP
    have hg_RP : g ∣ R * P := dvd_mul_of_dvd_right hP R
    have hq : q * g ∣ q * (R * P) := Nat.mul_dvd_mul_left q hg_RP
    simpa [ha_eq, hrow_eq, g, P] using hq

/--
Lower-edge primitive form of the first localized `k=5` row.  If
`d+4=qU`, `t=qV+12`, and `a=3d+t`, then the row
`a ∣ d(d+1)(d+2)(d+3)(d+4)` is equivalent, after cancelling the shared edge
factor and using `gcd(U,V)=1`, to divisibility of the four core terms by
`3U+V`.
-/
theorem k_five_first_row_lower_edge_primitive_core {a d t q U V : ℕ}
    (ha : a = 3 * d + t)
    (hd_edge : d + 4 = q * U) (ht_edge : t = q * V + 12)
    (hqpos : 0 < q) (hcop : Nat.Coprime U V) :
    (a ∣ shiftedDiffProductAt 5 d 1) ↔
      3 * U + V ∣ (q * U - 4) * (q * U - 3) * (q * U - 2) * (q * U - 1) := by
  let g := 3 * U + V
  let P := (q * U - 4) * (q * U - 3) * (q * U - 2) * (q * U - 1)
  have hqU4 : 4 ≤ q * U := by omega
  have hd_eq : d = q * U - 4 := by omega
  have ha_eq : a = q * g := by
    calc
      a = 3 * d + t := ha
      _ = 3 * (q * U - 4) + t := by rw [hd_eq]
      _ = 3 * (q * U) + q * V := by rw [ht_edge]; omega
      _ = q * g := by dsimp [g]; ring
  have hrow_eq : shiftedDiffProductAt 5 d 1 = q * (U * P) := by
    rw [shiftedDiffProductAt_five_one d]
    dsimp [P]
    rw [hd_eq]
    have h1 : q * U - 4 + 1 = q * U - 3 := by omega
    have h2 : q * U - 4 + 2 = q * U - 2 := by omega
    have h3 : q * U - 4 + 3 = q * U - 1 := by omega
    have h4 : q * U - 4 + 4 = q * U := by omega
    rw [h1, h2, h3, h4]
    ring
  have hcop_gU : Nat.Coprime g U := by
    dsimp [g]
    have hVU : Nat.Coprime V U := hcop.symm
    have h1 : Nat.Coprime (V + U) U := by
      exact (Nat.coprime_add_self_left).mpr hVU
    have h2 : Nat.Coprime ((V + U) + U) U := by
      exact (Nat.coprime_add_self_left).mpr h1
    have h3 : Nat.Coprime (((V + U) + U) + U) U := by
      exact (Nat.coprime_add_self_left).mpr h2
    simpa [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm, Nat.mul_comm,
      Nat.mul_left_comm, Nat.mul_assoc] using h3
  constructor
  · intro hrow
    have hq : q * g ∣ q * (U * P) := by
      simpa [ha_eq, hrow_eq, g, P] using hrow
    have hg_UP : g ∣ U * P := Nat.dvd_of_mul_dvd_mul_left hqpos hq
    exact hcop_gU.dvd_of_dvd_mul_left hg_UP
  · intro hP
    have hg_UP : g ∣ U * P := dvd_mul_of_dvd_right hP U
    have hq : q * g ∣ q * (U * P) := Nat.mul_dvd_mul_left q hg_UP
    simpa [ha_eq, hrow_eq, g, P] using hq

/--
Core-cancelled edge-gcd refinement for the first `k=5` row.  If
`a = 3d+t` and `a ∣ C(d+4)`, then the part of `a` not covered by the four-term
core divides both `d+4` and `t-12`.
-/
theorem k_five_first_row_div_gcd_dvd_edge_gcd {a C d t : ℕ}
    (ht : 12 ≤ t) (ha : a = 3 * d + t) (hrow : a ∣ C * (d + 4)) :
    a / Nat.gcd a C ∣ Nat.gcd (d + 4) (t - 12) := by
  have hapos : 0 < a := by
    rw [ha]
    omega
  have hedge : a / Nat.gcd a C ∣ d + 4 :=
    div_gcd_dvd_of_dvd_mul hapos hrow
  have hself : a / Nat.gcd a C ∣ a :=
    Nat.div_dvd_of_dvd (Nat.gcd_dvd_left a C)
  have hthree_edge : a / Nat.gcd a C ∣ 3 * (d + 4) := by
    simpa [mul_comm] using dvd_mul_of_dvd_right hedge 3
  have hdiff : a - 3 * (d + 4) = t - 12 := by
    rw [ha]
    omega
  have htminus : a / Nat.gcd a C ∣ t - 12 := by
    simpa [hdiff] using Nat.dvd_sub hself hthree_edge
  exact Nat.dvd_gcd hedge htminus

/--
Core-cancelled edge-gcd refinement for the second `k=5` row.  If
`a = 3d+t` and `a+1 ∣ C(d-1)`, then the part of `a+1` not covered by the
four-term core divides both `d-1` and `t+4`.
-/
theorem k_five_second_row_div_gcd_dvd_edge_gcd {a C d t : ℕ}
    (hd : 1 ≤ d) (ha : a = 3 * d + t) (hrow : a + 1 ∣ C * (d - 1)) :
    (a + 1) / Nat.gcd (a + 1) C ∣ Nat.gcd (d - 1) (t + 4) := by
  have hasuccpos : 0 < a + 1 := by omega
  have hedge : (a + 1) / Nat.gcd (a + 1) C ∣ d - 1 :=
    div_gcd_dvd_of_dvd_mul hasuccpos hrow
  have hself : (a + 1) / Nat.gcd (a + 1) C ∣ a + 1 :=
    Nat.div_dvd_of_dvd (Nat.gcd_dvd_left (a + 1) C)
  have hthree_edge : (a + 1) / Nat.gcd (a + 1) C ∣ 3 * (d - 1) := by
    simpa [mul_comm] using dvd_mul_of_dvd_right hedge 3
  have hdiff : (a + 1) - 3 * (d - 1) = t + 4 := by
    rw [ha]
    omega
  have htplus : (a + 1) / Nat.gcd (a + 1) C ∣ t + 4 := by
    simpa [hdiff] using Nat.dvd_sub hself hthree_edge
  exact Nat.dvd_gcd hedge htplus

/--
Localized overlap refinement for the first `k=5` row.  The part of `a` missing
after the row core and lower edge have both been removed must already divide the
small local overlap `gcd(d+4,24)`.
-/
theorem k_five_first_row_missing_lcm_dvd_edge_gcd24 {a d : ℕ}
    (ha : 0 < a) (hrow : a ∣ shiftedDiffProductAt 5 d 1) :
    a / Nat.lcm (Nat.gcd a (kFiveCoreFour d)) (Nat.gcd a (d + 4)) ∣
      Nat.gcd (d + 4) 24 := by
  have hrow_core : a ∣ kFiveCoreFour d * (d + 4) := by
    simpa [kFiveCoreFour, shiftedDiffProductAt_five_one, mul_assoc] using hrow
  have hmissing :
      a / Nat.lcm (Nat.gcd a (kFiveCoreFour d)) (Nat.gcd a (d + 4)) ∣
        Nat.gcd (Nat.gcd a (kFiveCoreFour d)) (Nat.gcd a (d + 4)) :=
    missing_lcm_cofactor_dvd_overlap_of_dvd_mul ha hrow_core
  have hS_core :
      Nat.gcd (Nat.gcd a (kFiveCoreFour d)) (Nat.gcd a (d + 4)) ∣
        kFiveCoreFour d := by
    exact Nat.dvd_trans
      (Nat.gcd_dvd_left (Nat.gcd a (kFiveCoreFour d)) (Nat.gcd a (d + 4)))
      (Nat.gcd_dvd_right a (kFiveCoreFour d))
  have hS_edge :
      Nat.gcd (Nat.gcd a (kFiveCoreFour d)) (Nat.gcd a (d + 4)) ∣ d + 4 := by
    exact Nat.dvd_trans
      (Nat.gcd_dvd_right (Nat.gcd a (kFiveCoreFour d)) (Nat.gcd a (d + 4)))
      (Nat.gcd_dvd_right a (d + 4))
  have hS_24 :
      Nat.gcd (Nat.gcd a (kFiveCoreFour d)) (Nat.gcd a (d + 4)) ∣ 24 :=
    k_five_core_common_dvd_dadd4_dvd_24 hS_core hS_edge
  exact dvd_trans hmissing (Nat.dvd_gcd hS_edge hS_24)

/--
Localized overlap refinement for the second `k=5` row.  The part of `a+1`
missing after the row core and upper edge have both been removed must already
divide the small local overlap `gcd(d-1,24)`.
-/
theorem k_five_second_row_missing_lcm_dvd_edge_gcd24 {a d : ℕ}
    (hd : 1 ≤ d) (hrow : a + 1 ∣ shiftedDiffProductAt 5 d 2) :
    (a + 1) / Nat.lcm (Nat.gcd (a + 1) (kFiveCoreFour d)) (Nat.gcd (a + 1) (d - 1)) ∣
      Nat.gcd (d - 1) 24 := by
  have hrow_eq : shiftedDiffProductAt 5 d 2 = kFiveCoreFour d * (d - 1) := by
    rw [shiftedDiffProductAt_five_two d hd]
    dsimp [kFiveCoreFour]
    ring
  have hrow_core : a + 1 ∣ kFiveCoreFour d * (d - 1) := by
    simpa [hrow_eq] using hrow
  have hmissing :
      (a + 1) / Nat.lcm (Nat.gcd (a + 1) (kFiveCoreFour d)) (Nat.gcd (a + 1) (d - 1)) ∣
        Nat.gcd (Nat.gcd (a + 1) (kFiveCoreFour d)) (Nat.gcd (a + 1) (d - 1)) :=
    missing_lcm_cofactor_dvd_overlap_of_dvd_mul (by omega : 0 < a + 1) hrow_core
  have hS_core :
      Nat.gcd (Nat.gcd (a + 1) (kFiveCoreFour d)) (Nat.gcd (a + 1) (d - 1)) ∣
        kFiveCoreFour d := by
    exact Nat.dvd_trans
      (Nat.gcd_dvd_left (Nat.gcd (a + 1) (kFiveCoreFour d)) (Nat.gcd (a + 1) (d - 1)))
      (Nat.gcd_dvd_right (a + 1) (kFiveCoreFour d))
  have hS_edge :
      Nat.gcd (Nat.gcd (a + 1) (kFiveCoreFour d)) (Nat.gcd (a + 1) (d - 1)) ∣ d - 1 := by
    exact Nat.dvd_trans
      (Nat.gcd_dvd_right (Nat.gcd (a + 1) (kFiveCoreFour d)) (Nat.gcd (a + 1) (d - 1)))
      (Nat.gcd_dvd_right (a + 1) (d - 1))
  have hS_24 :
      Nat.gcd (Nat.gcd (a + 1) (kFiveCoreFour d)) (Nat.gcd (a + 1) (d - 1)) ∣ 24 :=
    k_five_core_common_dvd_dsub1_dvd_24 hd hS_core hS_edge
  exact dvd_trans hmissing (Nat.dvd_gcd hS_edge hS_24)

/--
The first localized `k=5` row is equivalent to its row-local overlap
constraint: the lcm-missing part of `a` divides `gcd(d+4,24)`.
-/
theorem k_five_first_row_iff_missing_lcm_dvd_edge_gcd24 {a C d : ℕ}
    (ha : 0 < a) (hC : C = kFiveCoreFour d) :
    a ∣ C * (d + 4) ↔
      a / Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4)) ∣ Nat.gcd (d + 4) 24 := by
  constructor
  · intro hrow
    have hshift : a ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [hC, kFiveCoreFour, shiftedDiffProductAt_five_one, mul_assoc] using hrow
    simpa [hC] using
      k_five_first_row_missing_lcm_dvd_edge_gcd24 (a := a) (d := d) ha hshift
  · intro hloc
    let M := a / Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4))
    have hM_edge : M ∣ d + 4 := by
      exact dvd_trans (by simpa [M] using hloc) (Nat.gcd_dvd_left (d + 4) 24)
    have hM_24 : M ∣ 24 := by
      exact dvd_trans (by simpa [M] using hloc) (Nat.gcd_dvd_right (d + 4) 24)
    have hM_core : M ∣ kFiveCoreFour d :=
      k_five_core_dvd_of_dvd_dadd4_and_dvd_24 hM_edge hM_24
    have hM_C : M ∣ C := by
      simpa [hC] using hM_core
    have hG_dvd_a : Nat.gcd a C ∣ a := Nat.gcd_dvd_left a C
    have hH_dvd_a : Nat.gcd a (d + 4) ∣ a := Nat.gcd_dvd_left a (d + 4)
    have hL_dvd_a : Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4)) ∣ a :=
      Nat.lcm_dvd hG_dvd_a hH_dvd_a
    have hM_a : M ∣ a := by
      dsimp [M]
      exact Nat.div_dvd_of_dvd hL_dvd_a
    have hM_G : M ∣ Nat.gcd a C := Nat.dvd_gcd hM_a hM_C
    have hM_H : M ∣ Nat.gcd a (d + 4) := Nat.dvd_gcd hM_a hM_edge
    have hM_overlap : M ∣ Nat.gcd (Nat.gcd a C) (Nat.gcd a (d + 4)) :=
      Nat.dvd_gcd hM_G hM_H
    exact (dvd_mul_iff_missing_lcm_dvd_overlap (a := a) (c := C) (b := d + 4) ha).mpr
      (by simpa [M] using hM_overlap)

/--
The second localized `k=5` row is equivalent to its row-local overlap
constraint: the lcm-missing part of `a+1` divides `gcd(d-1,24)`.
-/
theorem k_five_second_row_iff_missing_lcm_dvd_edge_gcd24 {a C d : ℕ}
    (hd : 1 ≤ d) (hC : C = kFiveCoreFour d) :
    a + 1 ∣ C * (d - 1) ↔
      (a + 1) / Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)) ∣
        Nat.gcd (d - 1) 24 := by
  have hasuccpos : 0 < a + 1 := by omega
  constructor
  · intro hrow
    have hshift_eq : shiftedDiffProductAt 5 d 2 = C * (d - 1) := by
      rw [shiftedDiffProductAt_five_two d hd, hC]
      dsimp [kFiveCoreFour]
      ring
    have hshift : a + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      simpa [hshift_eq] using hrow
    simpa [hC] using
      k_five_second_row_missing_lcm_dvd_edge_gcd24 (a := a) (d := d) hd hshift
  · intro hloc
    let M := (a + 1) / Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1))
    have hM_edge : M ∣ d - 1 := by
      exact dvd_trans (by simpa [M] using hloc) (Nat.gcd_dvd_left (d - 1) 24)
    have hM_24 : M ∣ 24 := by
      exact dvd_trans (by simpa [M] using hloc) (Nat.gcd_dvd_right (d - 1) 24)
    have hM_core : M ∣ kFiveCoreFour d :=
      k_five_core_dvd_of_dvd_dsub1_and_dvd_24 hd hM_edge hM_24
    have hM_C : M ∣ C := by
      simpa [hC] using hM_core
    have hG_dvd_a : Nat.gcd (a + 1) C ∣ a + 1 := Nat.gcd_dvd_left (a + 1) C
    have hH_dvd_a : Nat.gcd (a + 1) (d - 1) ∣ a + 1 :=
      Nat.gcd_dvd_left (a + 1) (d - 1)
    have hL_dvd_a :
        Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)) ∣ a + 1 :=
      Nat.lcm_dvd hG_dvd_a hH_dvd_a
    have hM_a : M ∣ a + 1 := by
      dsimp [M]
      exact Nat.div_dvd_of_dvd hL_dvd_a
    have hM_G : M ∣ Nat.gcd (a + 1) C := Nat.dvd_gcd hM_a hM_C
    have hM_H : M ∣ Nat.gcd (a + 1) (d - 1) := Nat.dvd_gcd hM_a hM_edge
    have hM_overlap :
        M ∣ Nat.gcd (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)) :=
      Nat.dvd_gcd hM_G hM_H
    exact
      (dvd_mul_iff_missing_lcm_dvd_overlap (a := a + 1) (c := C) (b := d - 1)
        hasuccpos).mpr (by simpa [M] using hM_overlap)

/--
The first two localized `k=5` rows are equivalent to the two row-local overlap
constraints.
-/
theorem k_five_first_two_rows_iff_localized_overlap {a C d : ℕ}
    (hd : 1 ≤ d) (ha : 0 < a) (hC : C = kFiveCoreFour d) :
    (a ∣ C * (d + 4) ∧ a + 1 ∣ C * (d - 1)) ↔
      (a / Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4)) ∣ Nat.gcd (d + 4) 24 ∧
        (a + 1) / Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)) ∣
          Nat.gcd (d - 1) 24) := by
  constructor
  · intro hrows
    exact ⟨
      (k_five_first_row_iff_missing_lcm_dvd_edge_gcd24 (a := a) (C := C) (d := d)
        ha hC).mp hrows.1,
      (k_five_second_row_iff_missing_lcm_dvd_edge_gcd24 (a := a) (C := C) (d := d)
        hd hC).mp hrows.2⟩
  · intro hloc
    exact ⟨
      (k_five_first_row_iff_missing_lcm_dvd_edge_gcd24 (a := a) (C := C) (d := d)
        ha hC).mpr hloc.1,
      (k_five_second_row_iff_missing_lcm_dvd_edge_gcd24 (a := a) (C := C) (d := d)
        hd hC).mpr hloc.2⟩

/--
The first localized `k=5` row is equivalent to the sharper `t`-refined local
overlap constraint.
-/
theorem k_five_first_row_iff_missing_lcm_dvd_edge_t_gcd24 {a C d t : ℕ}
    (ht : 12 ≤ t) (ha : a = 3 * d + t) (hC : C = kFiveCoreFour d) :
    a ∣ C * (d + 4) ↔
      a / Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4)) ∣
        Nat.gcd (Nat.gcd (d + 4) (t - 12)) 24 := by
  have hapos : 0 < a := by
    rw [ha]
    omega
  constructor
  · intro hrow
    let M := a / Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4))
    let S := Nat.gcd (Nat.gcd a C) (Nat.gcd a (d + 4))
    have hM_S : M ∣ S :=
      missing_lcm_cofactor_dvd_overlap_of_dvd_mul hapos hrow
    have hS_a : S ∣ a := by
      exact Nat.dvd_trans
        (Nat.gcd_dvd_left (Nat.gcd a C) (Nat.gcd a (d + 4)))
        (Nat.gcd_dvd_left a C)
    have hS_C : S ∣ C := by
      exact Nat.dvd_trans
        (Nat.gcd_dvd_left (Nat.gcd a C) (Nat.gcd a (d + 4)))
        (Nat.gcd_dvd_right a C)
    have hS_core : S ∣ kFiveCoreFour d := by
      simpa [hC] using hS_C
    have hS_edge : S ∣ d + 4 := by
      exact Nat.dvd_trans
        (Nat.gcd_dvd_right (Nat.gcd a C) (Nat.gcd a (d + 4)))
        (Nat.gcd_dvd_right a (d + 4))
    have hS_24 : S ∣ 24 :=
      k_five_core_common_dvd_dadd4_dvd_24 hS_core hS_edge
    have hS_three_edge : S ∣ 3 * (d + 4) := by
      simpa [mul_comm] using dvd_mul_of_dvd_right hS_edge 3
    have hdiff : a - 3 * (d + 4) = t - 12 := by
      rw [ha]
      omega
    have hS_tminus : S ∣ t - 12 := by
      simpa [hdiff] using Nat.dvd_sub hS_a hS_three_edge
    exact dvd_trans hM_S (Nat.dvd_gcd (Nat.dvd_gcd hS_edge hS_tminus) hS_24)
  · intro hloc
    have hM_edge :
        a / Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4)) ∣ d + 4 := by
      exact dvd_trans hloc
        (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d + 4) (t - 12)) 24)
          (Nat.gcd_dvd_left (d + 4) (t - 12)))
    have hM_24 :
        a / Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4)) ∣ 24 := by
      exact dvd_trans hloc (Nat.gcd_dvd_right (Nat.gcd (d + 4) (t - 12)) 24)
    have hM_old :
        a / Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4)) ∣ Nat.gcd (d + 4) 24 :=
      Nat.dvd_gcd hM_edge hM_24
    exact (k_five_first_row_iff_missing_lcm_dvd_edge_gcd24 (a := a) (C := C) (d := d)
      hapos hC).mpr hM_old

/--
The second localized `k=5` row is equivalent to the sharper `t`-refined local
overlap constraint.
-/
theorem k_five_second_row_iff_missing_lcm_dvd_edge_t_gcd24 {a C d t : ℕ}
    (hd : 1 ≤ d) (ha : a = 3 * d + t) (hC : C = kFiveCoreFour d) :
    a + 1 ∣ C * (d - 1) ↔
      (a + 1) / Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)) ∣
        Nat.gcd (Nat.gcd (d - 1) (t + 4)) 24 := by
  have hasuccpos : 0 < a + 1 := by omega
  constructor
  · intro hrow
    let M := (a + 1) / Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1))
    let S := Nat.gcd (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1))
    have hM_S : M ∣ S :=
      missing_lcm_cofactor_dvd_overlap_of_dvd_mul hasuccpos hrow
    have hS_a : S ∣ a + 1 := by
      exact Nat.dvd_trans
        (Nat.gcd_dvd_left (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)))
        (Nat.gcd_dvd_left (a + 1) C)
    have hS_C : S ∣ C := by
      exact Nat.dvd_trans
        (Nat.gcd_dvd_left (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)))
        (Nat.gcd_dvd_right (a + 1) C)
    have hS_core : S ∣ kFiveCoreFour d := by
      simpa [hC] using hS_C
    have hS_edge : S ∣ d - 1 := by
      exact Nat.dvd_trans
        (Nat.gcd_dvd_right (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)))
        (Nat.gcd_dvd_right (a + 1) (d - 1))
    have hS_24 : S ∣ 24 :=
      k_five_core_common_dvd_dsub1_dvd_24 hd hS_core hS_edge
    have hS_three_edge : S ∣ 3 * (d - 1) := by
      simpa [mul_comm] using dvd_mul_of_dvd_right hS_edge 3
    have hdiff : (a + 1) - 3 * (d - 1) = t + 4 := by
      rw [ha]
      omega
    have hS_tplus : S ∣ t + 4 := by
      simpa [hdiff] using Nat.dvd_sub hS_a hS_three_edge
    exact dvd_trans hM_S (Nat.dvd_gcd (Nat.dvd_gcd hS_edge hS_tplus) hS_24)
  · intro hloc
    have hM_edge :
        (a + 1) / Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)) ∣ d - 1 := by
      exact dvd_trans hloc
        (dvd_trans (Nat.gcd_dvd_left (Nat.gcd (d - 1) (t + 4)) 24)
          (Nat.gcd_dvd_left (d - 1) (t + 4)))
    have hM_24 :
        (a + 1) / Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)) ∣ 24 := by
      exact dvd_trans hloc (Nat.gcd_dvd_right (Nat.gcd (d - 1) (t + 4)) 24)
    have hM_old :
        (a + 1) / Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)) ∣
          Nat.gcd (d - 1) 24 :=
      Nat.dvd_gcd hM_edge hM_24
    exact (k_five_second_row_iff_missing_lcm_dvd_edge_gcd24
      (a := a) (C := C) (d := d) hd hC).mpr hM_old

/--
The first two localized `k=5` rows are equivalent to the two `t`-refined
row-local overlap constraints.
-/
theorem k_five_first_two_rows_iff_localized_t_overlap {a C d t : ℕ}
    (hd : 1 ≤ d) (ht : 12 ≤ t) (ha : a = 3 * d + t)
    (hC : C = kFiveCoreFour d) :
    (a ∣ C * (d + 4) ∧ a + 1 ∣ C * (d - 1)) ↔
      (a / Nat.lcm (Nat.gcd a C) (Nat.gcd a (d + 4)) ∣
          Nat.gcd (Nat.gcd (d + 4) (t - 12)) 24 ∧
        (a + 1) / Nat.lcm (Nat.gcd (a + 1) C) (Nat.gcd (a + 1) (d - 1)) ∣
          Nat.gcd (Nat.gcd (d - 1) (t + 4)) 24) := by
  constructor
  · intro hrows
    exact ⟨
      (k_five_first_row_iff_missing_lcm_dvd_edge_t_gcd24
        (a := a) (C := C) (d := d) (t := t) ht ha hC).mp hrows.1,
      (k_five_second_row_iff_missing_lcm_dvd_edge_t_gcd24
        (a := a) (C := C) (d := d) (t := t) hd ha hC).mp hrows.2⟩
  · intro hloc
    exact ⟨
      (k_five_first_row_iff_missing_lcm_dvd_edge_t_gcd24
        (a := a) (C := C) (d := d) (t := t) ht ha hC).mpr hloc.1,
      (k_five_second_row_iff_missing_lcm_dvd_edge_t_gcd24
        (a := a) (C := C) (d := d) (t := t) hd ha hC).mpr hloc.2⟩

/--
Combined localized-overlap refinement for the first two `k=5` rows.  In
addition to the row-specific `gcd(...,24)` overlap, the core-cancelled parts
divide the edge gcds `gcd(d+4,t-12)` and `gcd(d-1,t+4)`.
-/
theorem k_five_first_two_rows_localized_overlap_refinement {a C d t : ℕ}
    (hd : 1 ≤ d) (ht : 12 ≤ t) (ha : a = 3 * d + t)
    (hC : C = kFiveCoreFour d)
    (hrow0 : a ∣ C * (d + 4)) (hrow1 : a + 1 ∣ C * (d - 1)) :
    let G0 := Nat.gcd a C
    let H0 := Nat.gcd a (d + 4)
    let M0 := a / Nat.lcm G0 H0
    let G1 := Nat.gcd (a + 1) C
    let H1 := Nat.gcd (a + 1) (d - 1)
    let M1 := (a + 1) / Nat.lcm G1 H1
    M0 ∣ Nat.gcd (d + 4) 24 ∧
      M1 ∣ Nat.gcd (d - 1) 24 ∧
      a / Nat.gcd a C ∣ Nat.gcd (d + 4) (t - 12) ∧
      (a + 1) / Nat.gcd (a + 1) C ∣ Nat.gcd (d - 1) (t + 4) := by
  dsimp
  have hapos : 0 < a := by
    rw [ha]
    omega
  have hshift0 : a ∣ shiftedDiffProductAt 5 d 1 := by
    simpa [hC, kFiveCoreFour, shiftedDiffProductAt_five_one, mul_assoc] using hrow0
  have hshift1_eq : shiftedDiffProductAt 5 d 2 = C * (d - 1) := by
    rw [shiftedDiffProductAt_five_two d hd, hC]
    dsimp [kFiveCoreFour]
    ring
  have hshift1 : a + 1 ∣ shiftedDiffProductAt 5 d 2 := by
    simpa [hshift1_eq] using hrow1
  exact ⟨
    by simpa [hC] using
      k_five_first_row_missing_lcm_dvd_edge_gcd24 (a := a) (d := d) hapos hshift0,
    by
      constructor
      · simpa [hC] using
          k_five_second_row_missing_lcm_dvd_edge_gcd24 (a := a) (d := d) hd hshift1
      · exact ⟨k_five_first_row_div_gcd_dvd_edge_gcd (a := a) (C := C) (d := d)
          (t := t) ht ha hrow0,
          k_five_second_row_div_gcd_dvd_edge_gcd (a := a) (C := C) (d := d)
            (t := t) hd ha hrow1⟩⟩

lemma kFiveExactRowOneST_eq_shifted {d s t : ℕ}
    (hdt : 23 * s + t = 3 * d) :
    kFiveExactRowOneST s t = shiftedDiffProductAt 5 d 1 := by
  unfold kFiveExactRowOneST
  have hd : (23 * s + t) / 3 = d := by omega
  rw [hd, shiftedDiffProductAt_five_one]

lemma kFiveExactRowTwoST_eq_shifted {d s t : ℕ}
    (hdt : 23 * s + t = 3 * d) (hd : 1 ≤ d) :
    kFiveExactRowTwoST s t = shiftedDiffProductAt 5 d 2 := by
  unfold kFiveExactRowTwoST
  have hdiv : (23 * s + t) / 3 = d := by omega
  rw [hdiv, shiftedDiffProductAt_five_two d hd]

lemma k_five_row_one_reduced_dvd {A d s : ℕ}
    (hs : 13 ≤ s) (hA : A = 3 * d + s)
    (hrow : A ∣ shiftedDiffProductAt 5 d 1) :
    A ∣ kFiveRowOneReducedProduct s := by
  have hzrow0 : ((shiftedDiffProductAt 5 d 1 : ℕ) : ZMod A) = 0 :=
    (ZMod.natCast_eq_zero_iff (shiftedDiffProductAt 5 d 1) A).mpr hrow
  have hzrow :
      (((d * (d + 1) * (d + 2) * (d + 3) * (d + 4) : ℕ) : ZMod A)) = 0 := by
    simpa [shiftedDiffProductAt_five_one] using hzrow0
  have hzero : (((3 * d + s : ℕ) : ZMod A)) = 0 := by
    rw [← hA]
    exact ZMod.natCast_self A
  have hsrel : ((s : ℕ) : ZMod A) = -(((3 * d : ℕ) : ZMod A)) := by
    have hzero' : (((3 * d : ℕ) : ZMod A) + ((s : ℕ) : ZMod A)) = 0 := by
      simpa [Nat.cast_add] using hzero
    exact eq_neg_of_add_eq_zero_right hzero'
  have hprod_eq : ((kFiveRowOneReducedProduct s : ℕ) : ZMod A) =
      -((3 : ZMod A) ^ 5) *
        (((d * (d + 1) * (d + 2) * (d + 3) * (d + 4) : ℕ) : ZMod A)) := by
    unfold kFiveRowOneReducedProduct
    norm_num [Nat.cast_sub (by omega : 3 ≤ s),
      Nat.cast_sub (by omega : 6 ≤ s), Nat.cast_sub (by omega : 9 ≤ s),
      Nat.cast_sub (by omega : 12 ≤ s), Nat.cast_mul, Nat.cast_add]
    rw [hsrel]
    norm_num [Nat.cast_mul, Nat.cast_add]
    ring
  have hprod : ((kFiveRowOneReducedProduct s : ℕ) : ZMod A) = 0 := by
    rw [hprod_eq, hzrow, mul_zero]
  exact (ZMod.natCast_eq_zero_iff (kFiveRowOneReducedProduct s) A).mp hprod

lemma k_five_row_two_reduced_dvd {A d s : ℕ}
    (hd : 1 ≤ d) (hs : 13 ≤ s) (hA : A = 3 * d + s)
    (hrow : A + 1 ∣ shiftedDiffProductAt 5 d 2) :
    A + 1 ∣ kFiveRowTwoReducedProduct s := by
  let B := A + 1
  have hzrow0 : ((shiftedDiffProductAt 5 d 2 : ℕ) : ZMod B) = 0 :=
    (ZMod.natCast_eq_zero_iff (shiftedDiffProductAt 5 d 2) B).mpr hrow
  have hzrow :
      ((((d - 1) * d * (d + 1) * (d + 2) * (d + 3) : ℕ) : ZMod B)) = 0 := by
    simpa [shiftedDiffProductAt_five_two d hd] using hzrow0
  have hzero : (((3 * d + s + 1 : ℕ) : ZMod B)) = 0 := by
    have hB : B = 3 * d + s + 1 := by omega
    rw [← hB]
    exact ZMod.natCast_self B
  have hsrel : ((s : ℕ) : ZMod B) = -((((3 * d + 1 : ℕ) : ZMod B))) := by
    have hzero' : ((((3 * d + 1 : ℕ) : ZMod B) + ((s : ℕ) : ZMod B))) = 0 := by
      simpa [Nat.cast_add, add_assoc, add_comm, add_left_comm] using hzero
    exact eq_neg_of_add_eq_zero_right hzero'
  have hprod_eq : ((kFiveRowTwoReducedProduct s : ℕ) : ZMod B) =
      -((3 : ZMod B) ^ 5) *
        (((((d - 1) * d * (d + 1) * (d + 2) * (d + 3) : ℕ)) : ZMod B)) := by
    unfold kFiveRowTwoReducedProduct
    norm_num [Nat.cast_sub (by omega : 2 ≤ s),
      Nat.cast_sub (by omega : 5 ≤ s), Nat.cast_sub (by omega : 8 ≤ s),
      Nat.cast_mul, Nat.cast_add]
    rw [hsrel]
    norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_sub (by omega : 1 ≤ d)]
    ring
  have hprod : ((kFiveRowTwoReducedProduct s : ℕ) : ZMod B) = 0 := by
    rw [hprod_eq, hzrow, mul_zero]
  exact (ZMod.natCast_eq_zero_iff (kFiveRowTwoReducedProduct s) B).mp hprod

lemma k_five_row_one_t_product_dvd {A s t : ℕ}
    (hs : 13 ≤ s) (hA : A = 24 * s + t)
    (hrow : A ∣ kFiveRowOneReducedProduct s) :
    A ∣ kFiveExactRowOneTProduct t := by
  have hzrow : ((kFiveRowOneReducedProduct s : ℕ) : ZMod A) = 0 :=
    (ZMod.natCast_eq_zero_iff (kFiveRowOneReducedProduct s) A).mpr hrow
  have hzero : (((24 * s + t : ℕ) : ZMod A)) = 0 := by
    rw [← hA]
    exact ZMod.natCast_self A
  have ht_rel : ((t : ℕ) : ZMod A) = -((24 : ZMod A) * (s : ZMod A)) := by
    have hzero' : (24 : ZMod A) * (s : ZMod A) + ((t : ℕ) : ZMod A) = 0 := by
      simpa [Nat.cast_add, Nat.cast_mul] using hzero
    have hzero'' : ((t : ℕ) : ZMod A) + (24 : ZMod A) * (s : ZMod A) = 0 := by
      simpa [add_comm] using hzero'
    exact eq_neg_of_add_eq_zero_left hzero''
  have hprod_eq : ((kFiveExactRowOneTProduct t : ℕ) : ZMod A) =
      (-(24 : ZMod A)) ^ 5 * ((kFiveRowOneReducedProduct s : ℕ) : ZMod A) := by
    unfold kFiveExactRowOneTProduct kFiveRowOneReducedProduct
    norm_num [Nat.cast_mul, Nat.cast_add,
      Nat.cast_sub (by omega : 3 ≤ s),
      Nat.cast_sub (by omega : 6 ≤ s),
      Nat.cast_sub (by omega : 9 ≤ s),
      Nat.cast_sub (by omega : 12 ≤ s)]
    rw [ht_rel]
    ring_nf
  have hprod : ((kFiveExactRowOneTProduct t : ℕ) : ZMod A) = 0 := by
    rw [hprod_eq, hzrow, mul_zero]
  exact (ZMod.natCast_eq_zero_iff (kFiveExactRowOneTProduct t) A).mp hprod

lemma k_five_row_two_t_product_dvd {B s t : ℕ}
    (hs : 13 ≤ s) (ht95 : 95 ≤ t) (hB : B = 24 * s + t + 1)
    (hrow : B ∣ kFiveRowTwoReducedProduct s) :
    B ∣ kFiveExactRowTwoTProduct t := by
  have hzrow : ((kFiveRowTwoReducedProduct s : ℕ) : ZMod B) = 0 :=
    (ZMod.natCast_eq_zero_iff (kFiveRowTwoReducedProduct s) B).mpr hrow
  have hzero : (((24 * s + t + 1 : ℕ) : ZMod B)) = 0 := by
    rw [← hB]
    exact ZMod.natCast_self B
  have ht_rel : ((t : ℕ) : ZMod B) =
      -((24 : ZMod B) * (s : ZMod B) + 1) := by
    have hzero' :
        ((24 : ZMod B) * (s : ZMod B) + 1 + ((t : ℕ) : ZMod B)) = 0 := by
      simpa [Nat.cast_add, Nat.cast_mul, add_assoc, add_comm, add_left_comm] using hzero
    have hzero'' :
        ((t : ℕ) : ZMod B) + ((24 : ZMod B) * (s : ZMod B) + 1) = 0 := by
      simpa [add_comm] using hzero'
    exact eq_neg_of_add_eq_zero_left hzero''
  have hprod_eq : ((kFiveExactRowTwoTProduct t : ℕ) : ZMod B) =
      (-(24 : ZMod B)) ^ 5 * ((kFiveRowTwoReducedProduct s : ℕ) : ZMod B) := by
    unfold kFiveExactRowTwoTProduct kFiveRowTwoReducedProduct
    norm_num [Nat.cast_mul, Nat.cast_add,
      Nat.cast_sub (by omega : 95 ≤ t),
      Nat.cast_sub (by omega : 23 ≤ t),
      Nat.cast_sub (by omega : 2 ≤ s),
      Nat.cast_sub (by omega : 5 ≤ s),
      Nat.cast_sub (by omega : 8 ≤ s)]
    rw [ht_rel]
    ring_nf
  have hprod : ((kFiveExactRowTwoTProduct t : ℕ) : ZMod B) = 0 := by
    rw [hprod_eq, hzrow, mul_zero]
  exact (ZMod.natCast_eq_zero_iff (kFiveExactRowTwoTProduct t) B).mp hprod

lemma k_five_row_one_reduced_dvd_of_t_product_dvd {A s t : ℕ}
    (hs : 13 ≤ s) (hA : A = 24 * s + t)
    (hcop : Nat.Coprime A 24)
    (hrow : A ∣ kFiveExactRowOneTProduct t) :
    A ∣ kFiveRowOneReducedProduct s := by
  have hzrow : ((kFiveExactRowOneTProduct t : ℕ) : ZMod A) = 0 :=
    (ZMod.natCast_eq_zero_iff (kFiveExactRowOneTProduct t) A).mpr hrow
  have hzero : (((24 * s + t : ℕ) : ZMod A)) = 0 := by
    rw [← hA]
    exact ZMod.natCast_self A
  have ht_rel : ((t : ℕ) : ZMod A) = -((24 : ZMod A) * (s : ZMod A)) := by
    have hzero' : (24 : ZMod A) * (s : ZMod A) + ((t : ℕ) : ZMod A) = 0 := by
      simpa [Nat.cast_add, Nat.cast_mul] using hzero
    have hzero'' : ((t : ℕ) : ZMod A) + (24 : ZMod A) * (s : ZMod A) = 0 := by
      simpa [add_comm] using hzero'
    exact eq_neg_of_add_eq_zero_left hzero''
  have hprod_eq : ((kFiveExactRowOneTProduct t : ℕ) : ZMod A) =
      (-(24 : ZMod A)) ^ 5 * ((kFiveRowOneReducedProduct s : ℕ) : ZMod A) := by
    unfold kFiveExactRowOneTProduct kFiveRowOneReducedProduct
    norm_num [Nat.cast_mul, Nat.cast_add,
      Nat.cast_sub (by omega : 3 ≤ s),
      Nat.cast_sub (by omega : 6 ≤ s),
      Nat.cast_sub (by omega : 9 ≤ s),
      Nat.cast_sub (by omega : 12 ≤ s)]
    rw [ht_rel]
    ring_nf
  have hmul_zero :
      (((24 ^ 5 * kFiveRowOneReducedProduct s : ℕ) : ZMod A)) = 0 := by
    have hneg_zero :
        (-(24 : ZMod A)) ^ 5 * ((kFiveRowOneReducedProduct s : ℕ) : ZMod A) = 0 := by
      rw [← hprod_eq, hzrow]
    rw [Nat.cast_mul, Nat.cast_pow]
    have hpow : (-(24 : ZMod A)) ^ 5 = -((24 : ZMod A) ^ 5) := by ring
    rw [hpow] at hneg_zero
    exact neg_eq_zero.mp (by simpa [mul_assoc] using hneg_zero)
  have hdvd_mul : A ∣ 24 ^ 5 * kFiveRowOneReducedProduct s :=
    (ZMod.natCast_eq_zero_iff (24 ^ 5 * kFiveRowOneReducedProduct s) A).mp hmul_zero
  have hcop_pow : Nat.Coprime A (24 ^ 5) := hcop.pow_right 5
  exact hcop_pow.dvd_of_dvd_mul_left hdvd_mul

lemma k_five_row_two_reduced_dvd_of_t_product_dvd {B s t : ℕ}
    (hs : 13 ≤ s) (ht95 : 95 ≤ t) (hB : B = 24 * s + t + 1)
    (hcop : Nat.Coprime B 24)
    (hrow : B ∣ kFiveExactRowTwoTProduct t) :
    B ∣ kFiveRowTwoReducedProduct s := by
  have hzrow : ((kFiveExactRowTwoTProduct t : ℕ) : ZMod B) = 0 :=
    (ZMod.natCast_eq_zero_iff (kFiveExactRowTwoTProduct t) B).mpr hrow
  have hzero : (((24 * s + t + 1 : ℕ) : ZMod B)) = 0 := by
    rw [← hB]
    exact ZMod.natCast_self B
  have ht_rel : ((t : ℕ) : ZMod B) =
      -((24 : ZMod B) * (s : ZMod B) + 1) := by
    have hzero' :
        ((24 : ZMod B) * (s : ZMod B) + 1 + ((t : ℕ) : ZMod B)) = 0 := by
      simpa [Nat.cast_add, Nat.cast_mul, add_assoc, add_comm, add_left_comm] using hzero
    have hzero'' :
        ((t : ℕ) : ZMod B) + ((24 : ZMod B) * (s : ZMod B) + 1) = 0 := by
      simpa [add_comm] using hzero'
    exact eq_neg_of_add_eq_zero_left hzero''
  have hprod_eq : ((kFiveExactRowTwoTProduct t : ℕ) : ZMod B) =
      (-(24 : ZMod B)) ^ 5 * ((kFiveRowTwoReducedProduct s : ℕ) : ZMod B) := by
    unfold kFiveExactRowTwoTProduct kFiveRowTwoReducedProduct
    norm_num [Nat.cast_mul, Nat.cast_add,
      Nat.cast_sub (by omega : 95 ≤ t),
      Nat.cast_sub (by omega : 23 ≤ t),
      Nat.cast_sub (by omega : 2 ≤ s),
      Nat.cast_sub (by omega : 5 ≤ s),
      Nat.cast_sub (by omega : 8 ≤ s)]
    rw [ht_rel]
    ring_nf
  have hmul_zero :
      (((24 ^ 5 * kFiveRowTwoReducedProduct s : ℕ) : ZMod B)) = 0 := by
    have hneg_zero :
        (-(24 : ZMod B)) ^ 5 * ((kFiveRowTwoReducedProduct s : ℕ) : ZMod B) = 0 := by
      rw [← hprod_eq, hzrow]
    rw [Nat.cast_mul, Nat.cast_pow]
    have hpow : (-(24 : ZMod B)) ^ 5 = -((24 : ZMod B) ^ 5) := by ring
    rw [hpow] at hneg_zero
    exact neg_eq_zero.mp (by simpa [mul_assoc] using hneg_zero)
  have hdvd_mul : B ∣ 24 ^ 5 * kFiveRowTwoReducedProduct s :=
    (ZMod.natCast_eq_zero_iff (24 ^ 5 * kFiveRowTwoReducedProduct s) B).mp hmul_zero
  have hcop_pow : Nat.Coprime B (24 ^ 5) := hcop.pow_right 5
  exact hcop_pow.dvd_of_dvd_mul_left hdvd_mul

/--
When `24` is invertible modulo `A = 24s+t`, the first `t`-product
divisibility is exactly equivalent to the first reduced row divisibility.
-/
theorem k_five_row_one_t_product_dvd_iff_of_coprime {A s t : ℕ}
    (hs : 13 ≤ s) (hA : A = 24 * s + t) (hcop : Nat.Coprime A 24) :
    A ∣ kFiveExactRowOneTProduct t ↔ A ∣ kFiveRowOneReducedProduct s :=
  ⟨k_five_row_one_reduced_dvd_of_t_product_dvd hs hA hcop,
    k_five_row_one_t_product_dvd hs hA⟩

/--
When `24` is invertible modulo `B = 24s+t+1`, the second `t`-product
divisibility is exactly equivalent to the second reduced row divisibility.
-/
theorem k_five_row_two_t_product_dvd_iff_of_coprime {B s t : ℕ}
    (hs : 13 ≤ s) (ht95 : 95 ≤ t) (hB : B = 24 * s + t + 1)
    (hcop : Nat.Coprime B 24) :
    B ∣ kFiveExactRowTwoTProduct t ↔ B ∣ kFiveRowTwoReducedProduct s :=
  ⟨k_five_row_two_reduced_dvd_of_t_product_dvd hs ht95 hB hcop,
    k_five_row_two_t_product_dvd hs ht95 hB⟩

/--
In the exact `s,t` reduction for the remaining `k=5` case, the two localized
row divisibilities force two consecutive numbers `24s+t` and `24s+t+1` to
divide explicit products depending only on `t`.
-/
theorem k_five_exact_reduced_t_product_divisibility {s t : ℕ}
    (hs13 : 13 ≤ s) (ht95 : 95 ≤ t)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    (24 * s + t ∣ kFiveExactRowOneTProduct t) ∧
      (24 * s + t + 1 ∣ kFiveExactRowTwoTProduct t) := by
  rcases hdiv3 with ⟨d, hdt⟩
  have hA : 24 * s + t = 3 * d + s := by omega
  have hrow1_shift : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow1
  have hrow2_shift : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow2
  have hred1 : 24 * s + t ∣ kFiveRowOneReducedProduct s :=
    k_five_row_one_reduced_dvd hs13 hA hrow1_shift
  have hred2 : 24 * s + t + 1 ∣ kFiveRowTwoReducedProduct s := by
    simpa [Nat.add_assoc] using
      (k_five_row_two_reduced_dvd (by omega : 1 ≤ d) hs13 hA hrow2_shift)
  exact ⟨
    k_five_row_one_t_product_dvd hs13 rfl hred1,
    k_five_row_two_t_product_dvd hs13 ht95 rfl hred2⟩

/--
Combined `t`-product form of the exact reduced `k=5` obstruction.  In the
large-`t` range, the two row divisibilities force the consecutive product
`(24s+t)(24s+t+1)` to divide a single product depending only on `t`, and the
linearized ratio window puts `24s+t` in a narrow interval around `220t`.
-/
theorem k_five_exact_reduced_combined_t_product_window {s t : ℕ}
    (hs13 : 13 ≤ s) (ht95 : 95 ≤ t)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    217 * t < 24 * s + t + 19968 ∧
      24 * s + t < 223 * t ∧
      (24 * s + t) * (24 * s + t + 1) ∣
        kFiveExactRowOneTProduct t * kFiveExactRowTwoTProduct t := by
  obtain ⟨htrow1, htrow2⟩ :=
    k_five_exact_reduced_t_product_divisibility
      hs13 ht95 hdiv3 hrow1 hrow2
  refine ⟨by omega, by omega, ?_⟩
  rcases htrow1 with ⟨u, hu⟩
  rcases htrow2 with ⟨v, hv⟩
  refine ⟨u * v, ?_⟩
  rw [hu, hv]
  ring

/--
Algebraic reduction for the focused remaining `k=5` target.  Above the
already-cleared finite range `d<125`, the exact linearized ratio window forces
`n+1 = 3d+s` with `s≥13`; the first two localized skeleton rows then reduce to
two explicit divisibilities depending only on `s` and `A=n+1`.
-/
theorem k_five_first_two_rows_linear_reduction {n d : ℕ}
    (hd125 : 125 ≤ d)
    (hlin_lower : 651 * d < 208 * n + 1040)
    (hlin_upper : 285 * (n + 1) < 892 * d)
    (hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1)
    (hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2) :
    ∃ s : ℕ,
      13 ≤ s ∧
      n + 1 = 3 * d + s ∧
      892 * s < 37 * (n + 1) ∧
      27 * (n + 1) < 651 * s + 2496 ∧
      n + 1 ∣ kFiveRowOneReducedProduct s ∧
      n + 2 ∣ kFiveRowTwoReducedProduct s := by
  have hA_ge : 3 * d + 13 ≤ n + 1 := by omega
  let s := n + 1 - 3 * d
  have hs : 13 ≤ s := by dsimp [s]; omega
  have hA : n + 1 = 3 * d + s := by dsimp [s]; omega
  refine ⟨s, hs, hA, ?_, ?_, ?_, ?_⟩
  · omega
  · omega
  · exact k_five_row_one_reduced_dvd hs hA hrow1
  · have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      simpa [Nat.add_assoc] using hrow2
    exact k_five_row_two_reduced_dvd (by omega : 1 ≤ d) hs hA hrow2'

/--
Bridge from the exact reduced `s,t` obstruction back to the full `k=5` case.
This keeps the 3-adic information lost by the simpler reduced-product
divisibilities above.
-/
theorem no_solution_four_five_of_exact_reduced_first_two_rows_contradiction
    (hred : ∀ s t : ℕ, 13 ≤ s →
      4 * s < 37 * t →
      9 * t < s + 832 →
      3 ∣ 23 * s + t →
      24 * s + t ∣ kFiveExactRowOneST s t →
      24 * s + t + 1 ∣ kFiveExactRowTwoST s t →
      False) :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  by_cases hd125_lt : d < 125
  · exact no_solution_four_five_gap_lt_125 ⟨n, m, hm, by omega, hq⟩
  · have hd125 : 125 ≤ d := by omega
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction hd125 hlin_lower hlin_upper hrow1 hrow2
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact hred s t hs13 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

set_option maxRecDepth 300000 in
set_option maxHeartbeats 12000000 in
-- Exhaustive kernel-checked certificate over `13≤s<1000` and `0≤t<204`.
private theorem k_five_exact_reduced_s_lt_1000_cert :
    ∀ (s : Fin 1000) (t : Fin 204),
      13 ≤ (s : ℕ) →
      4 * (s : ℕ) < 37 * (t : ℕ) →
      9 * (t : ℕ) < (s : ℕ) + 832 →
      3 ∣ 23 * (s : ℕ) + (t : ℕ) →
      24 * (s : ℕ) + (t : ℕ) ∣ kFiveExactRowOneST (s : ℕ) (t : ℕ) →
      24 * (s : ℕ) + (t : ℕ) + 1 ∣ kFiveExactRowTwoST (s : ℕ) (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_lt_1000_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs1000 : s < 1000) (ht204 : t < 204)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False :=
  k_five_exact_reduced_s_lt_1000_cert
    ⟨s, hs1000⟩ ⟨t, ht204⟩ hs13 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 220000 in
set_option maxHeartbeats 12000000 in
-- Exhaustive kernel-checked certificate over `1000≤s<1250` and `0≤t<232`.
private theorem k_five_exact_reduced_s_1000_1250_cert :
    ∀ (r : Fin 250) (t : Fin 232),
      let s := 1000 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_1000_1250_contradiction {s t : ℕ}
    (hs1000 : 1000 ≤ s) (hs1250 : s < 1250) (ht232 : t < 232)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 1000 < 250 := by omega
  have hs_eq : 1000 + (s - 1000) = s := by omega
  exact k_five_exact_reduced_s_1000_1250_cert
    ⟨s - 1000, hr250⟩ ⟨t, ht232⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

set_option maxRecDepth 260000 in
set_option maxHeartbeats 14000000 in
-- Exhaustive kernel-checked certificate over `1250≤s<1500` and `0≤t<259`.
private theorem k_five_exact_reduced_s_1250_1500_cert :
    ∀ (r : Fin 250) (t : Fin 259),
      let s := 1250 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_1250_1500_contradiction {s t : ℕ}
    (hs1250 : 1250 ≤ s) (hs1500 : s < 1500) (ht259 : t < 259)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 1250 < 250 := by omega
  have hs_eq : 1250 + (s - 1250) = s := by omega
  exact k_five_exact_reduced_s_1250_1500_cert
    ⟨s - 1250, hr250⟩ ⟨t, ht259⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_1500_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs1500 : s < 1500) (ht259 : t < 259)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs1000 : s < 1000
  · have ht204 : t < 204 := by omega
    exact k_five_exact_reduced_s_lt_1000_contradiction
      hs13 hs1000 ht204 hlower hupper hdiv3 hrow1 hrow2
  · by_cases hs1250 : s < 1250
    · have hs1000_le : 1000 ≤ s := by omega
      have ht232 : t < 232 := by omega
      exact k_five_exact_reduced_s_1000_1250_contradiction
        hs1000_le hs1250 ht232 hlower hupper hdiv3 hrow1 hrow2
    · have hs1250_le : 1250 ≤ s := by omega
      exact k_five_exact_reduced_s_1250_1500_contradiction
        hs1250_le hs1500 ht259 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 300000 in
set_option maxHeartbeats 16000000 in
-- Exhaustive kernel-checked certificate over `1500≤s<1750` and `0≤t<287`.
private theorem k_five_exact_reduced_s_1500_1750_cert :
    ∀ (r : Fin 250) (t : Fin 287),
      let s := 1500 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_1500_1750_contradiction {s t : ℕ}
    (hs1500 : 1500 ≤ s) (hs1750 : s < 1750) (ht287 : t < 287)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 1500 < 250 := by omega
  have hs_eq : 1500 + (s - 1500) = s := by omega
  exact k_five_exact_reduced_s_1500_1750_cert
    ⟨s - 1500, hr250⟩ ⟨t, ht287⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_1750_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs1750 : s < 1750) (ht287 : t < 287)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs1500 : s < 1500
  · have ht259 : t < 259 := by omega
    exact k_five_exact_reduced_s_lt_1500_contradiction
      hs13 hs1500 ht259 hlower hupper hdiv3 hrow1 hrow2
  · have hs1500_le : 1500 ≤ s := by omega
    exact k_five_exact_reduced_s_1500_1750_contradiction
      hs1500_le hs1750 ht287 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 340000 in
set_option maxHeartbeats 18000000 in
-- Exhaustive kernel-checked certificate over `1750≤s<2000` and `0≤t<315`.
private theorem k_five_exact_reduced_s_1750_2000_cert :
    ∀ (r : Fin 250) (t : Fin 315),
      let s := 1750 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_1750_2000_contradiction {s t : ℕ}
    (hs1750 : 1750 ≤ s) (hs2000 : s < 2000) (ht315 : t < 315)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 1750 < 250 := by omega
  have hs_eq : 1750 + (s - 1750) = s := by omega
  exact k_five_exact_reduced_s_1750_2000_cert
    ⟨s - 1750, hr250⟩ ⟨t, ht315⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_2000_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs2000 : s < 2000) (ht315 : t < 315)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs1750 : s < 1750
  · have ht287 : t < 287 := by omega
    exact k_five_exact_reduced_s_lt_1750_contradiction
      hs13 hs1750 ht287 hlower hupper hdiv3 hrow1 hrow2
  · have hs1750_le : 1750 ≤ s := by omega
    exact k_five_exact_reduced_s_1750_2000_contradiction
      hs1750_le hs2000 ht315 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 380000 in
set_option maxHeartbeats 22000000 in
-- Exhaustive kernel-checked certificate over `2000≤s<2250` and `0≤t<343`.
private theorem k_five_exact_reduced_s_2000_2250_cert :
    ∀ (r : Fin 250) (t : Fin 343),
      let s := 2000 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_2000_2250_contradiction {s t : ℕ}
    (hs2000 : 2000 ≤ s) (hs2250 : s < 2250) (ht343 : t < 343)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 2000 < 250 := by omega
  have hs_eq : 2000 + (s - 2000) = s := by omega
  exact k_five_exact_reduced_s_2000_2250_cert
    ⟨s - 2000, hr250⟩ ⟨t, ht343⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_2250_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs2250 : s < 2250) (ht343 : t < 343)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs2000 : s < 2000
  · have ht315 : t < 315 := by omega
    exact k_five_exact_reduced_s_lt_2000_contradiction
      hs13 hs2000 ht315 hlower hupper hdiv3 hrow1 hrow2
  · have hs2000_le : 2000 ≤ s := by omega
    exact k_five_exact_reduced_s_2000_2250_contradiction
      hs2000_le hs2250 ht343 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 420000 in
set_option maxHeartbeats 26000000 in
-- Exhaustive kernel-checked certificate over `2250≤s<2500` and `0≤t<371`.
private theorem k_five_exact_reduced_s_2250_2500_cert :
    ∀ (r : Fin 250) (t : Fin 371),
      let s := 2250 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_2250_2500_contradiction {s t : ℕ}
    (hs2250 : 2250 ≤ s) (hs2500 : s < 2500) (ht371 : t < 371)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 2250 < 250 := by omega
  have hs_eq : 2250 + (s - 2250) = s := by omega
  exact k_five_exact_reduced_s_2250_2500_cert
    ⟨s - 2250, hr250⟩ ⟨t, ht371⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_2500_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs2500 : s < 2500) (ht371 : t < 371)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs2250 : s < 2250
  · have ht343 : t < 343 := by omega
    exact k_five_exact_reduced_s_lt_2250_contradiction
      hs13 hs2250 ht343 hlower hupper hdiv3 hrow1 hrow2
  · have hs2250_le : 2250 ≤ s := by omega
    exact k_five_exact_reduced_s_2250_2500_contradiction
      hs2250_le hs2500 ht371 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 460000 in
set_option maxHeartbeats 30000000 in
-- Exhaustive kernel-checked certificate over `2500≤s<2750` and `0≤t<398`.
private theorem k_five_exact_reduced_s_2500_2750_cert :
    ∀ (r : Fin 250) (t : Fin 398),
      let s := 2500 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_2500_2750_contradiction {s t : ℕ}
    (hs2500 : 2500 ≤ s) (hs2750 : s < 2750) (ht398 : t < 398)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 2500 < 250 := by omega
  have hs_eq : 2500 + (s - 2500) = s := by omega
  exact k_five_exact_reduced_s_2500_2750_cert
    ⟨s - 2500, hr250⟩ ⟨t, ht398⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_2750_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs2750 : s < 2750) (ht398 : t < 398)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs2500 : s < 2500
  · have ht371 : t < 371 := by omega
    exact k_five_exact_reduced_s_lt_2500_contradiction
      hs13 hs2500 ht371 hlower hupper hdiv3 hrow1 hrow2
  · have hs2500_le : 2500 ≤ s := by omega
    exact k_five_exact_reduced_s_2500_2750_contradiction
      hs2500_le hs2750 ht398 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 500000 in
set_option maxHeartbeats 34000000 in
-- Exhaustive kernel-checked certificate over `2750≤s<3000` and `0≤t<426`.
private theorem k_five_exact_reduced_s_2750_3000_cert :
    ∀ (r : Fin 250) (t : Fin 426),
      let s := 2750 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_2750_3000_contradiction {s t : ℕ}
    (hs2750 : 2750 ≤ s) (hs3000 : s < 3000) (ht426 : t < 426)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 2750 < 250 := by omega
  have hs_eq : 2750 + (s - 2750) = s := by omega
  exact k_five_exact_reduced_s_2750_3000_cert
    ⟨s - 2750, hr250⟩ ⟨t, ht426⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_3000_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs3000 : s < 3000) (ht426 : t < 426)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs2750 : s < 2750
  · have ht398 : t < 398 := by omega
    exact k_five_exact_reduced_s_lt_2750_contradiction
      hs13 hs2750 ht398 hlower hupper hdiv3 hrow1 hrow2
  · have hs2750_le : 2750 ≤ s := by omega
    exact k_five_exact_reduced_s_2750_3000_contradiction
      hs2750_le hs3000 ht426 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 540000 in
set_option maxHeartbeats 36000000 in
-- Exhaustive kernel-checked certificate over `3000≤s<3250` and `0≤t<454`.
private theorem k_five_exact_reduced_s_3000_3250_cert :
    ∀ (r : Fin 250) (t : Fin 454),
      let s := 3000 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_3000_3250_contradiction {s t : ℕ}
    (hs3000 : 3000 ≤ s) (hs3250 : s < 3250) (ht454 : t < 454)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 3000 < 250 := by omega
  have hs_eq : 3000 + (s - 3000) = s := by omega
  exact k_five_exact_reduced_s_3000_3250_cert
    ⟨s - 3000, hr250⟩ ⟨t, ht454⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_3250_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs3250 : s < 3250) (ht454 : t < 454)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs3000 : s < 3000
  · have ht426 : t < 426 := by omega
    exact k_five_exact_reduced_s_lt_3000_contradiction
      hs13 hs3000 ht426 hlower hupper hdiv3 hrow1 hrow2
  · have hs3000_le : 3000 ≤ s := by omega
    exact k_five_exact_reduced_s_3000_3250_contradiction
      hs3000_le hs3250 ht454 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 580000 in
set_option maxHeartbeats 39000000 in
-- Exhaustive kernel-checked certificate over `3250≤s<3500` and `0≤t<482`.
private theorem k_five_exact_reduced_s_3250_3500_cert :
    ∀ (r : Fin 250) (t : Fin 482),
      let s := 3250 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_3250_3500_contradiction {s t : ℕ}
    (hs3250 : 3250 ≤ s) (hs3500 : s < 3500) (ht482 : t < 482)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 3250 < 250 := by omega
  have hs_eq : 3250 + (s - 3250) = s := by omega
  exact k_five_exact_reduced_s_3250_3500_cert
    ⟨s - 3250, hr250⟩ ⟨t, ht482⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_3500_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs3500 : s < 3500) (ht482 : t < 482)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs3250 : s < 3250
  · have ht454 : t < 454 := by omega
    exact k_five_exact_reduced_s_lt_3250_contradiction
      hs13 hs3250 ht454 hlower hupper hdiv3 hrow1 hrow2
  · have hs3250_le : 3250 ≤ s := by omega
    exact k_five_exact_reduced_s_3250_3500_contradiction
      hs3250_le hs3500 ht482 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 620000 in
set_option maxHeartbeats 42000000 in
-- Exhaustive kernel-checked certificate over `3500≤s<3750` and `0≤t<510`.
private theorem k_five_exact_reduced_s_3500_3750_cert :
    ∀ (r : Fin 250) (t : Fin 510),
      let s := 3500 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_3500_3750_contradiction {s t : ℕ}
    (hs3500 : 3500 ≤ s) (hs3750 : s < 3750) (ht510 : t < 510)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 3500 < 250 := by omega
  have hs_eq : 3500 + (s - 3500) = s := by omega
  exact k_five_exact_reduced_s_3500_3750_cert
    ⟨s - 3500, hr250⟩ ⟨t, ht510⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_3750_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs3750 : s < 3750) (ht510 : t < 510)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs3500 : s < 3500
  · have ht482 : t < 482 := by omega
    exact k_five_exact_reduced_s_lt_3500_contradiction
      hs13 hs3500 ht482 hlower hupper hdiv3 hrow1 hrow2
  · have hs3500_le : 3500 ≤ s := by omega
    exact k_five_exact_reduced_s_3500_3750_contradiction
      hs3500_le hs3750 ht510 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 660000 in
set_option maxHeartbeats 45000000 in
-- Exhaustive kernel-checked certificate over `3750≤s<4000` and `0≤t<537`.
private theorem k_five_exact_reduced_s_3750_4000_cert :
    ∀ (r : Fin 250) (t : Fin 537),
      let s := 3750 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_3750_4000_contradiction {s t : ℕ}
    (hs3750 : 3750 ≤ s) (hs4000 : s < 4000) (ht537 : t < 537)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 3750 < 250 := by omega
  have hs_eq : 3750 + (s - 3750) = s := by omega
  exact k_five_exact_reduced_s_3750_4000_cert
    ⟨s - 3750, hr250⟩ ⟨t, ht537⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_4000_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs4000 : s < 4000) (ht537 : t < 537)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs3750 : s < 3750
  · have ht510 : t < 510 := by omega
    exact k_five_exact_reduced_s_lt_3750_contradiction
      hs13 hs3750 ht510 hlower hupper hdiv3 hrow1 hrow2
  · have hs3750_le : 3750 ≤ s := by omega
    exact k_five_exact_reduced_s_3750_4000_contradiction
      hs3750_le hs4000 ht537 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 700000 in
set_option maxHeartbeats 48000000 in
-- Exhaustive kernel-checked certificate over `4000≤s<4250` and `0≤t<565`.
private theorem k_five_exact_reduced_s_4000_4250_cert :
    ∀ (r : Fin 250) (t : Fin 565),
      let s := 4000 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_4000_4250_contradiction {s t : ℕ}
    (hs4000 : 4000 ≤ s) (hs4250 : s < 4250) (ht565 : t < 565)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 4000 < 250 := by omega
  have hs_eq : 4000 + (s - 4000) = s := by omega
  exact k_five_exact_reduced_s_4000_4250_cert
    ⟨s - 4000, hr250⟩ ⟨t, ht565⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_4250_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs4250 : s < 4250) (ht565 : t < 565)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs4000 : s < 4000
  · have ht537 : t < 537 := by omega
    exact k_five_exact_reduced_s_lt_4000_contradiction
      hs13 hs4000 ht537 hlower hupper hdiv3 hrow1 hrow2
  · have hs4000_le : 4000 ≤ s := by omega
    exact k_five_exact_reduced_s_4000_4250_contradiction
      hs4000_le hs4250 ht565 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 740000 in
set_option maxHeartbeats 51000000 in
-- Exhaustive kernel-checked certificate over `4250≤s<4500` and `0≤t<593`.
private theorem k_five_exact_reduced_s_4250_4500_cert :
    ∀ (r : Fin 250) (t : Fin 593),
      let s := 4250 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_4250_4500_contradiction {s t : ℕ}
    (hs4250 : 4250 ≤ s) (hs4500 : s < 4500) (ht593 : t < 593)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 4250 < 250 := by omega
  have hs_eq : 4250 + (s - 4250) = s := by omega
  exact k_five_exact_reduced_s_4250_4500_cert
    ⟨s - 4250, hr250⟩ ⟨t, ht593⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_4500_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs4500 : s < 4500) (ht593 : t < 593)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs4250 : s < 4250
  · have ht565 : t < 565 := by omega
    exact k_five_exact_reduced_s_lt_4250_contradiction
      hs13 hs4250 ht565 hlower hupper hdiv3 hrow1 hrow2
  · have hs4250_le : 4250 ≤ s := by omega
    exact k_five_exact_reduced_s_4250_4500_contradiction
      hs4250_le hs4500 ht593 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 780000 in
set_option maxHeartbeats 54000000 in
-- Exhaustive kernel-checked certificate over `4500≤s<4750` and `0≤t<621`.
private theorem k_five_exact_reduced_s_4500_4750_cert :
    ∀ (r : Fin 250) (t : Fin 621),
      let s := 4500 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_4500_4750_contradiction {s t : ℕ}
    (hs4500 : 4500 ≤ s) (hs4750 : s < 4750) (ht621 : t < 621)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 4500 < 250 := by omega
  have hs_eq : 4500 + (s - 4500) = s := by omega
  exact k_five_exact_reduced_s_4500_4750_cert
    ⟨s - 4500, hr250⟩ ⟨t, ht621⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_4750_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs4750 : s < 4750) (ht621 : t < 621)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs4500 : s < 4500
  · have ht593 : t < 593 := by omega
    exact k_five_exact_reduced_s_lt_4500_contradiction
      hs13 hs4500 ht593 hlower hupper hdiv3 hrow1 hrow2
  · have hs4500_le : 4500 ≤ s := by omega
    exact k_five_exact_reduced_s_4500_4750_contradiction
      hs4500_le hs4750 ht621 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 820000 in
set_option maxHeartbeats 57000000 in
-- Exhaustive kernel-checked certificate over `4750≤s<5000` and `0≤t<648`.
private theorem k_five_exact_reduced_s_4750_5000_cert :
    ∀ (r : Fin 250) (t : Fin 648),
      let s := 4750 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_4750_5000_contradiction {s t : ℕ}
    (hs4750 : 4750 ≤ s) (hs5000 : s < 5000) (ht648 : t < 648)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 4750 < 250 := by omega
  have hs_eq : 4750 + (s - 4750) = s := by omega
  exact k_five_exact_reduced_s_4750_5000_cert
    ⟨s - 4750, hr250⟩ ⟨t, ht648⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_5000_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs5000 : s < 5000) (ht648 : t < 648)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs4750 : s < 4750
  · have ht621 : t < 621 := by omega
    exact k_five_exact_reduced_s_lt_4750_contradiction
      hs13 hs4750 ht621 hlower hupper hdiv3 hrow1 hrow2
  · have hs4750_le : 4750 ≤ s := by omega
    exact k_five_exact_reduced_s_4750_5000_contradiction
      hs4750_le hs5000 ht648 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 870000 in
set_option maxHeartbeats 61000000 in
-- Exhaustive kernel-checked certificate over `5000≤s<5250` and `0≤t<676`.
private theorem k_five_exact_reduced_s_5000_5250_cert :
    ∀ (r : Fin 250) (t : Fin 676),
      let s := 5000 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_5000_5250_contradiction {s t : ℕ}
    (hs5000 : 5000 ≤ s) (hs5250 : s < 5250) (ht676 : t < 676)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 5000 < 250 := by omega
  have hs_eq : 5000 + (s - 5000) = s := by omega
  exact k_five_exact_reduced_s_5000_5250_cert
    ⟨s - 5000, hr250⟩ ⟨t, ht676⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_5250_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs5250 : s < 5250) (ht676 : t < 676)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs5000 : s < 5000
  · have ht648 : t < 648 := by omega
    exact k_five_exact_reduced_s_lt_5000_contradiction
      hs13 hs5000 ht648 hlower hupper hdiv3 hrow1 hrow2
  · have hs5000_le : 5000 ≤ s := by omega
    exact k_five_exact_reduced_s_5000_5250_contradiction
      hs5000_le hs5250 ht676 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 920000 in
set_option maxHeartbeats 65000000 in
-- Exhaustive kernel-checked certificate over `5250≤s<5500` and `0≤t<704`.
private theorem k_five_exact_reduced_s_5250_5500_cert :
    ∀ (r : Fin 250) (t : Fin 704),
      let s := 5250 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_5250_5500_contradiction {s t : ℕ}
    (hs5250 : 5250 ≤ s) (hs5500 : s < 5500) (ht704 : t < 704)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 5250 < 250 := by omega
  have hs_eq : 5250 + (s - 5250) = s := by omega
  exact k_five_exact_reduced_s_5250_5500_cert
    ⟨s - 5250, hr250⟩ ⟨t, ht704⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_5500_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs5500 : s < 5500) (ht704 : t < 704)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs5250 : s < 5250
  · have ht676 : t < 676 := by omega
    exact k_five_exact_reduced_s_lt_5250_contradiction
      hs13 hs5250 ht676 hlower hupper hdiv3 hrow1 hrow2
  · have hs5250_le : 5250 ≤ s := by omega
    exact k_five_exact_reduced_s_5250_5500_contradiction
      hs5250_le hs5500 ht704 hlower hupper hdiv3 hrow1 hrow2

set_option maxRecDepth 970000 in
set_option maxHeartbeats 70000000 in
-- Exhaustive kernel-checked certificate over `5500≤s<5750` and `0≤t<732`.
private theorem k_five_exact_reduced_s_5500_5750_cert :
    ∀ (r : Fin 250) (t : Fin 732),
      let s := 5500 + (r : ℕ)
      4 * s < 37 * (t : ℕ) →
      9 * (t : ℕ) < s + 832 →
      3 ∣ 23 * s + (t : ℕ) →
      24 * s + (t : ℕ) ∣ kFiveExactRowOneST s (t : ℕ) →
      24 * s + (t : ℕ) + 1 ∣ kFiveExactRowTwoST s (t : ℕ) →
      False := by
  decide

theorem k_five_exact_reduced_s_5500_5750_contradiction {s t : ℕ}
    (hs5500 : 5500 ≤ s) (hs5750 : s < 5750) (ht732 : t < 732)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  have hr250 : s - 5500 < 250 := by omega
  have hs_eq : 5500 + (s - 5500) = s := by omega
  exact k_five_exact_reduced_s_5500_5750_cert
    ⟨s - 5500, hr250⟩ ⟨t, ht732⟩
    (by simpa [hs_eq] using hlower)
    (by simpa [hs_eq] using hupper)
    (by simpa [hs_eq] using hdiv3)
    (by simpa [hs_eq] using hrow1)
    (by simpa [hs_eq] using hrow2)

theorem k_five_exact_reduced_s_lt_5750_contradiction {s t : ℕ}
    (hs13 : 13 ≤ s) (hs5750 : s < 5750) (ht732 : t < 732)
    (hlower : 4 * s < 37 * t)
    (hupper : 9 * t < s + 832)
    (hdiv3 : 3 ∣ 23 * s + t)
    (hrow1 : 24 * s + t ∣ kFiveExactRowOneST s t)
    (hrow2 : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t) :
    False := by
  by_cases hs5500 : s < 5500
  · have ht704 : t < 704 := by omega
    exact k_five_exact_reduced_s_lt_5500_contradiction
      hs13 hs5500 ht704 hlower hupper hdiv3 hrow1 hrow2
  · have hs5500_le : 5500 ≤ s := by omega
    exact k_five_exact_reduced_s_5500_5750_contradiction
      hs5500_le hs5750 ht732 hlower hupper hdiv3 hrow1 hrow2

/--
Bridge to the combined `t`-product target.  To finish the remaining `k=5`,
`N=4` case it is enough to prove that no `s,t` in the exact linearized window
with `t≥95` satisfies the combined `t`-only divisibility.
-/
theorem no_solution_four_five_of_combined_t_product_escape
    (hescape : ∀ s t : ℕ, 13 ≤ s → 95 ≤ t →
      4 * s < 37 * t →
      9 * t < s + 832 →
      3 ∣ 23 * s + t →
      217 * t < 24 * s + t + 19968 →
      24 * s + t < 223 * t →
      (24 * s + t) * (24 * s + t + 1) ∣
        kFiveExactRowOneTProduct t * kFiveExactRowTwoTProduct t →
      False) :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  apply no_solution_four_five_of_exact_reduced_first_two_rows_contradiction
  intro s t hs13 hlower hupper hdiv3 hrow1 hrow2
  by_cases ht95 : 95 ≤ t
  · obtain ⟨hwindow_lower, hwindow_upper, hcombined⟩ :=
      k_five_exact_reduced_combined_t_product_window
        hs13 ht95 hlower hupper hdiv3 hrow1 hrow2
    exact hescape s t hs13 ht95 hlower hupper hdiv3
      hwindow_lower hwindow_upper hcombined
  · have ht343 : t < 343 := by omega
    have hs2250 : s < 2250 := by omega
    exact k_five_exact_reduced_s_lt_2250_contradiction
      hs13 hs2250 ht343 hlower hupper hdiv3 hrow1 hrow2

/--
Using the exact reduced `s,t` certificate, the verified `k=5`, `N=4`
exclusion extends from gap `<700` to gap `<7703`.
-/
theorem no_solution_four_five_gap_lt_7703 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 7703 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  by_cases hd125_lt : d < 125
  · exact no_solution_four_five_gap_lt_125 ⟨n, m, hm, by omega, hq⟩
  · have hd125 : 125 ≤ d := by omega
    have hd7703 : d < 7703 := by omega
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction hd125 hlin_lower hlin_upper hrow1 hrow2
    have hs1000 : s < 1000 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht204 : t < 204 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_1000_contradiction
      hs13 hs1000 ht204 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<7703` slice.  This exposes
the same finite certificate as a local divisor-skeleton obstruction, which is
the shape needed by the small-`k` branch of the row-prefix-sixteen strategy.
-/
theorem k_five_gap_lt_7703_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd7703 : d < 7703)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd125_lt : d < 125
  · exact k_five_gap_lt_125_divisor_skeleton_escape hd5 hd125_lt hlo hup
  · have hd125 : 125 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction hd125 hlin_lower hlin_upper hrow1 hrow2
    have hs1000 : s < 1000 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht204 : t < 204 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_1000_contradiction
      hs13 hs1000 ht204 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the next exact reduced `s,t` certificate slice, the verified `k=5`,
`N=4` exclusion extends to gap `<9584`.
-/
theorem no_solution_four_five_gap_lt_9584 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 9584 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  by_cases hd125_lt : d < 125
  · exact no_solution_four_five_gap_lt_125 ⟨n, m, hm, by omega, hq⟩
  · have hd125 : 125 ≤ d := by omega
    have hd9584 : d < 9584 := by omega
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction hd125 hlin_lower hlin_upper hrow1 hrow2
    have hs1250 : s < 1250 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht232 : t < 232 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have ht204_of_s1000 : s < 1000 → t < 204 := by
      intro hs1000
      have hupper' : 9 * t < s + 832 := by
        have hupper'' : 27 * (24 * s + t) < 651 * s + 2496 := by
          simpa [ht_eq] using hA_upper
        omega
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    by_cases hs1000 : s < 1000
    · exact k_five_exact_reduced_s_lt_1000_contradiction
        hs13 hs1000 (ht204_of_s1000 hs1000) hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact
    · have hs1000_le : 1000 ≤ s := by omega
      exact k_five_exact_reduced_s_1000_1250_contradiction
        hs1000_le hs1250 ht232 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<9584` slice.  This extends
the `d<7703` local divisor-skeleton obstruction by adding the next exact
reduced `s,t` certificate slice.
-/
theorem k_five_gap_lt_9584_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd9584 : d < 9584)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd7703 : d < 7703
  · exact k_five_gap_lt_7703_divisor_skeleton_escape hd5 hd7703 hlo hup
  · have hd7703_le : 7703 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs1250 : s < 1250 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht232 : t < 232 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have ht204_of_s1000 : s < 1000 → t < 204 := by
      intro hs1000
      have hupper' : 9 * t < s + 832 := by
        have hupper'' : 27 * (24 * s + t) < 651 * s + 2496 := by
          simpa [ht_eq] using hA_upper
        omega
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    by_cases hs1000 : s < 1000
    · exact k_five_exact_reduced_s_lt_1000_contradiction
        hs13 hs1000 (ht204_of_s1000 hs1000) hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact
    · have hs1000_le : 1000 ≤ s := by omega
      exact k_five_exact_reduced_s_1000_1250_contradiction
        hs1000_le hs1250 ht232 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first three exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<11555`.
-/
theorem no_solution_four_five_gap_lt_11555 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 11555 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap9584 : m < n + 9584
  · exact no_solution_four_five_gap_lt_9584 ⟨n, m, hm, hgap9584, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd9584 : 9584 ≤ d := by omega
  have hd11555 : d < 11555 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs1500 : s < 1500 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht259 : t < 259 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_1500_contradiction
    hs13 hs1500 ht259 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<11555` slice.  This extends
the local divisor-skeleton obstruction through the first three exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_11555_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd11555 : d < 11555)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd9584 : d < 9584
  · exact k_five_gap_lt_9584_divisor_skeleton_escape hd5 hd9584 hlo hup
  · have hd9584_le : 9584 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs1500 : s < 1500 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht259 : t < 259 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_1500_contradiction
      hs13 hs1500 ht259 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first four exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<13480`.
-/
theorem no_solution_four_five_gap_lt_13480 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 13480 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap11555 : m < n + 11555
  · exact no_solution_four_five_gap_lt_11555 ⟨n, m, hm, hgap11555, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd11555 : 11555 ≤ d := by omega
  have hd13480 : d < 13480 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs1750 : s < 1750 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht287 : t < 287 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_1750_contradiction
    hs13 hs1750 ht287 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<13480` slice.  This extends
the local divisor-skeleton obstruction through the first four exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_13480_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd13480 : d < 13480)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd11555 : d < 11555
  · exact k_five_gap_lt_11555_divisor_skeleton_escape hd5 hd11555 hlo hup
  · have hd11555_le : 11555 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs1750 : s < 1750 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht287 : t < 287 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_1750_contradiction
      hs13 hs1750 ht287 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first five exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<15406`.
-/
theorem no_solution_four_five_gap_lt_15406 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 15406 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap13480 : m < n + 13480
  · exact no_solution_four_five_gap_lt_13480 ⟨n, m, hm, hgap13480, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd15406 : d < 15406 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs2000 : s < 2000 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht315 : t < 315 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_2000_contradiction
    hs13 hs2000 ht315 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<15406` slice.  This extends
the local divisor-skeleton obstruction through the first five exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_15406_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd15406 : d < 15406)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd13480 : d < 13480
  · exact k_five_gap_lt_13480_divisor_skeleton_escape hd5 hd13480 hlo hup
  · have hd13480_le : 13480 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs2000 : s < 2000 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht315 : t < 315 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_2000_contradiction
      hs13 hs2000 ht315 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first six exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<17332`.
-/
theorem no_solution_four_five_gap_lt_17332 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 17332 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap15406 : m < n + 15406
  · exact no_solution_four_five_gap_lt_15406 ⟨n, m, hm, hgap15406, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd17332 : d < 17332 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs2250 : s < 2250 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht343 : t < 343 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_2250_contradiction
    hs13 hs2250 ht343 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<17332` slice.  This extends
the local divisor-skeleton obstruction through the first six exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_17332_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd17332 : d < 17332)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd15406 : d < 15406
  · exact k_five_gap_lt_15406_divisor_skeleton_escape hd5 hd15406 hlo hup
  · have hd15406_le : 15406 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs2250 : s < 2250 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht343 : t < 343 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_2250_contradiction
      hs13 hs2250 ht343 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first seven exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<19257`.
-/
theorem no_solution_four_five_gap_lt_19257 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 19257 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap17332 : m < n + 17332
  · exact no_solution_four_five_gap_lt_17332 ⟨n, m, hm, hgap17332, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd19257 : d < 19257 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs2500 : s < 2500 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht371 : t < 371 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_2500_contradiction
    hs13 hs2500 ht371 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<19257` slice.  This extends
the local divisor-skeleton obstruction through the first seven exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_19257_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd19257 : d < 19257)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd17332 : d < 17332
  · exact k_five_gap_lt_17332_divisor_skeleton_escape hd5 hd17332 hlo hup
  · have hd17332_le : 17332 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs2500 : s < 2500 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht371 : t < 371 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_2500_contradiction
      hs13 hs2500 ht371 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first eight exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<21183`.
-/
theorem no_solution_four_five_gap_lt_21183 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 21183 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap19257 : m < n + 19257
  · exact no_solution_four_five_gap_lt_19257 ⟨n, m, hm, hgap19257, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd21183 : d < 21183 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs2750 : s < 2750 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht398 : t < 398 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_2750_contradiction
    hs13 hs2750 ht398 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<21183` slice.  This extends
the local divisor-skeleton obstruction through the first eight exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_21183_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd21183 : d < 21183)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd19257 : d < 19257
  · exact k_five_gap_lt_19257_divisor_skeleton_escape hd5 hd19257 hlo hup
  · have hd19257_le : 19257 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs2750 : s < 2750 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht398 : t < 398 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_2750_contradiction
      hs13 hs2750 ht398 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first nine exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<23109`.
-/
theorem no_solution_four_five_gap_lt_23109 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 23109 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap21183 : m < n + 21183
  · exact no_solution_four_five_gap_lt_21183 ⟨n, m, hm, hgap21183, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd23109 : d < 23109 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs3000 : s < 3000 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht426 : t < 426 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_3000_contradiction
    hs13 hs3000 ht426 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<23109` slice.  This extends
the local divisor-skeleton obstruction through the first nine exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_23109_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd23109 : d < 23109)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd21183 : d < 21183
  · exact k_five_gap_lt_21183_divisor_skeleton_escape hd5 hd21183 hlo hup
  · have hd21183_le : 21183 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs3000 : s < 3000 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht426 : t < 426 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_3000_contradiction
      hs13 hs3000 ht426 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first ten exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<25034`.
-/
theorem no_solution_four_five_gap_lt_25034 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 25034 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap23109 : m < n + 23109
  · exact no_solution_four_five_gap_lt_23109 ⟨n, m, hm, hgap23109, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd25034 : d < 25034 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs3250 : s < 3250 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht454 : t < 454 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_3250_contradiction
    hs13 hs3250 ht454 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<25034` slice.  This extends
the local divisor-skeleton obstruction through the first ten exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_25034_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd25034 : d < 25034)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd23109 : d < 23109
  · exact k_five_gap_lt_23109_divisor_skeleton_escape hd5 hd23109 hlo hup
  · have hd23109_le : 23109 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs3250 : s < 3250 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht454 : t < 454 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_3250_contradiction
      hs13 hs3250 ht454 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first eleven exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<26960`.
-/
theorem no_solution_four_five_gap_lt_26960 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 26960 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap25034 : m < n + 25034
  · exact no_solution_four_five_gap_lt_25034 ⟨n, m, hm, hgap25034, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd26960 : d < 26960 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs3500 : s < 3500 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht482 : t < 482 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_3500_contradiction
    hs13 hs3500 ht482 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<26960` slice.  This extends
the local divisor-skeleton obstruction through the first eleven exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_26960_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd26960 : d < 26960)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd25034 : d < 25034
  · exact k_five_gap_lt_25034_divisor_skeleton_escape hd5 hd25034 hlo hup
  · have hd25034_le : 25034 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs3500 : s < 3500 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht482 : t < 482 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_3500_contradiction
      hs13 hs3500 ht482 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first twelve exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<28886`.
-/
theorem no_solution_four_five_gap_lt_28886 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 28886 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap26960 : m < n + 26960
  · exact no_solution_four_five_gap_lt_26960 ⟨n, m, hm, hgap26960, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd28886 : d < 28886 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs3750 : s < 3750 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht510 : t < 510 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_3750_contradiction
    hs13 hs3750 ht510 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<28886` slice.  This extends
the local divisor-skeleton obstruction through the first twelve exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_28886_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd28886 : d < 28886)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd26960 : d < 26960
  · exact k_five_gap_lt_26960_divisor_skeleton_escape hd5 hd26960 hlo hup
  · have hd26960_le : 26960 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs3750 : s < 3750 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht510 : t < 510 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_3750_contradiction
      hs13 hs3750 ht510 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first thirteen exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<30811`.
-/
theorem no_solution_four_five_gap_lt_30811 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 30811 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap28886 : m < n + 28886
  · exact no_solution_four_five_gap_lt_28886 ⟨n, m, hm, hgap28886, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd30811 : d < 30811 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs4000 : s < 4000 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht537 : t < 537 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_4000_contradiction
    hs13 hs4000 ht537 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<30811` slice.  This extends
the local divisor-skeleton obstruction through the first thirteen exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_30811_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd30811 : d < 30811)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd28886 : d < 28886
  · exact k_five_gap_lt_28886_divisor_skeleton_escape hd5 hd28886 hlo hup
  · have hd28886_le : 28886 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs4000 : s < 4000 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht537 : t < 537 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_4000_contradiction
      hs13 hs4000 ht537 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first fourteen exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<32737`.
-/
theorem no_solution_four_five_gap_lt_32737 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 32737 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap30811 : m < n + 30811
  · exact no_solution_four_five_gap_lt_30811 ⟨n, m, hm, hgap30811, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd32737 : d < 32737 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs4250 : s < 4250 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht565 : t < 565 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_4250_contradiction
    hs13 hs4250 ht565 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<32737` slice.  This extends
the local divisor-skeleton obstruction through the first fourteen exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_32737_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd32737 : d < 32737)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd30811 : d < 30811
  · exact k_five_gap_lt_30811_divisor_skeleton_escape hd5 hd30811 hlo hup
  · have hd30811_le : 30811 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs4250 : s < 4250 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht565 : t < 565 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_4250_contradiction
      hs13 hs4250 ht565 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first fifteen exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<34663`.
-/
theorem no_solution_four_five_gap_lt_34663 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 34663 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap32737 : m < n + 32737
  · exact no_solution_four_five_gap_lt_32737 ⟨n, m, hm, hgap32737, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd34663 : d < 34663 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs4500 : s < 4500 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht593 : t < 593 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_4500_contradiction
    hs13 hs4500 ht593 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<34663` slice.  This extends
the local divisor-skeleton obstruction through the first fifteen exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_34663_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd34663 : d < 34663)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd32737 : d < 32737
  · exact k_five_gap_lt_32737_divisor_skeleton_escape hd5 hd32737 hlo hup
  · have hd32737_le : 32737 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs4500 : s < 4500 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht593 : t < 593 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_4500_contradiction
      hs13 hs4500 ht593 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first sixteen exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<36588`.
-/
theorem no_solution_four_five_gap_lt_36588 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 36588 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap34663 : m < n + 34663
  · exact no_solution_four_five_gap_lt_34663 ⟨n, m, hm, hgap34663, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd36588 : d < 36588 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs4750 : s < 4750 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht621 : t < 621 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_4750_contradiction
    hs13 hs4750 ht621 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<36588` slice.  This extends
the local divisor-skeleton obstruction through the first sixteen exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_36588_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd36588 : d < 36588)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd34663 : d < 34663
  · exact k_five_gap_lt_34663_divisor_skeleton_escape hd5 hd34663 hlo hup
  · have hd34663_le : 34663 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs4750 : s < 4750 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht621 : t < 621 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_4750_contradiction
      hs13 hs4750 ht621 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first seventeen exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<38514`.
-/
theorem no_solution_four_five_gap_lt_38514 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 38514 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap36588 : m < n + 36588
  · exact no_solution_four_five_gap_lt_36588 ⟨n, m, hm, hgap36588, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd38514 : d < 38514 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs5000 : s < 5000 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht648 : t < 648 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_5000_contradiction
    hs13 hs5000 ht648 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<38514` slice.  This extends
the local divisor-skeleton obstruction through the first seventeen exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_38514_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd38514 : d < 38514)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd36588 : d < 36588
  · exact k_five_gap_lt_36588_divisor_skeleton_escape hd5 hd36588 hlo hup
  · have hd36588_le : 36588 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs5000 : s < 5000 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht648 : t < 648 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_5000_contradiction
      hs13 hs5000 ht648 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first eighteen exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<40440`.
-/
theorem no_solution_four_five_gap_lt_40440 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 40440 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap38514 : m < n + 38514
  · exact no_solution_four_five_gap_lt_38514 ⟨n, m, hm, hgap38514, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd40440 : d < 40440 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs5250 : s < 5250 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht676 : t < 676 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_5250_contradiction
    hs13 hs5250 ht676 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<40440` slice.  This extends
the local divisor-skeleton obstruction through the first eighteen exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_40440_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd40440 : d < 40440)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd38514 : d < 38514
  · exact k_five_gap_lt_38514_divisor_skeleton_escape hd5 hd38514 hlo hup
  · have hd38514_le : 38514 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs5250 : s < 5250 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht676 : t < 676 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_5250_contradiction
      hs13 hs5250 ht676 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first nineteen exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<42365`.
-/
theorem no_solution_four_five_gap_lt_42365 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 42365 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap40440 : m < n + 40440
  · exact no_solution_four_five_gap_lt_40440 ⟨n, m, hm, hgap40440, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd42365 : d < 42365 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs5500 : s < 5500 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht704 : t < 704 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_5500_contradiction
    hs13 hs5500 ht704 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<42365` slice.  This extends
the local divisor-skeleton obstruction through the first nineteen exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_42365_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd42365 : d < 42365)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd40440 : d < 40440
  · exact k_five_gap_lt_40440_divisor_skeleton_escape hd5 hd40440 hlo hup
  · have hd40440_le : 40440 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs5500 : s < 5500 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht704 : t < 704 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_5500_contradiction
      hs13 hs5500 ht704 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Using the first twenty exact reduced `s,t` certificate slices, the verified
`k=5`, `N=4` exclusion extends to gap `<44291`.
-/
theorem no_solution_four_five_gap_lt_44291 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 44291 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  by_cases hgap42365 : m < n + 42365
  · exact no_solution_four_five_gap_lt_42365 ⟨n, m, hm, hgap42365, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  have hd44291 : d < 44291 := by omega
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
    k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
      hlin_lower hlin_upper hrow1 hrow2
  have hs5750 : s < 5750 := by
    have hupper' : 285 * (3 * d + s) < 892 * d := by
      simpa [hA] using hlin_upper
    omega
  let t := n + 1 - 24 * s
  have ht_eq : n + 1 = 24 * s + t := by
    dsimp [t]
    have h24 : 24 * s < n + 1 := by omega
    omega
  have ht732 : t < 732 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hlower_t : 4 * s < 37 * t := by
    have hlower' : 892 * s < 37 * (24 * s + t) := by
      simpa [ht_eq] using hA_lower
    omega
  have hupper_t : 9 * t < s + 832 := by
    have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
      simpa [ht_eq] using hA_upper
    omega
  have hdt : 23 * s + t = 3 * d := by omega
  have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
  have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
    have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
      simpa [ht_eq] using hrow1
    simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
  have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
    have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
      have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        simpa [Nat.add_assoc] using hrow2
      simpa [ht_eq, Nat.add_assoc] using hrow2'
    simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
  exact k_five_exact_reduced_s_lt_5750_contradiction
    hs13 hs5750 ht732 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Direct row-escape form of the verified `k=5`, `d<44291` slice.  This extends
the local divisor-skeleton obstruction through the first twenty exact reduced
`s,t` certificate slices.
-/
theorem k_five_gap_lt_44291_divisor_skeleton_escape
    {n d : ℕ} (hd5 : 5 ≤ d) (hd44291 : d < 44291)
    (hlo : (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5)
    (hup : 4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5) :
    ∃ j, j ∈ Finset.Icc 1 5 ∧ ¬ n + j ∣ shiftedDiffProductAt 5 d j := by
  by_cases hd42365 : d < 42365
  · exact k_five_gap_lt_42365_divisor_skeleton_escape hd5 hd42365 hlo hup
  · have hd42365_le : 42365 ≤ d := by omega
    by_contra hno_escape
    have hall : ∀ j, j ∈ Finset.Icc 1 5 →
        n + j ∣ shiftedDiffProductAt 5 d j := by
      intro j hj
      by_contra hnot
      exact hno_escape ⟨j, hj, hnot⟩
    obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
    have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
      hall 1 (by norm_num)
    have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
      hall 2 (by norm_num)
    obtain ⟨s, hs13, hA, hA_lower, hA_upper, _hrow1_red, _hrow2_red⟩ :=
      k_five_first_two_rows_linear_reduction (by omega : 125 ≤ d)
        hlin_lower hlin_upper hrow1 hrow2
    have hs5750 : s < 5750 := by
      have hupper' : 285 * (3 * d + s) < 892 * d := by
        simpa [hA] using hlin_upper
      omega
    let t := n + 1 - 24 * s
    have ht_eq : n + 1 = 24 * s + t := by
      dsimp [t]
      have h24 : 24 * s < n + 1 := by omega
      omega
    have ht732 : t < 732 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hlower_t : 4 * s < 37 * t := by
      have hlower' : 892 * s < 37 * (24 * s + t) := by
        simpa [ht_eq] using hA_lower
      omega
    have hupper_t : 9 * t < s + 832 := by
      have hupper' : 27 * (24 * s + t) < 651 * s + 2496 := by
        simpa [ht_eq] using hA_upper
      omega
    have hdt : 23 * s + t = 3 * d := by omega
    have hdiv3 : 3 ∣ 23 * s + t := ⟨d, by omega⟩
    have hrow1_exact : 24 * s + t ∣ kFiveExactRowOneST s t := by
      have hrow : 24 * s + t ∣ shiftedDiffProductAt 5 d 1 := by
        simpa [ht_eq] using hrow1
      simpa [kFiveExactRowOneST_eq_shifted hdt] using hrow
    have hrow2_exact : 24 * s + t + 1 ∣ kFiveExactRowTwoST s t := by
      have hrow : 24 * s + t + 1 ∣ shiftedDiffProductAt 5 d 2 := by
        have hrow2' : (n + 1) + 1 ∣ shiftedDiffProductAt 5 d 2 := by
          simpa [Nat.add_assoc] using hrow2
        simpa [ht_eq, Nat.add_assoc] using hrow2'
      simpa [kFiveExactRowTwoST_eq_shifted hdt (by omega : 1 ≤ d)] using hrow
    exact k_five_exact_reduced_s_lt_5750_contradiction
      hs13 hs5750 ht732 hlower_t hupper_t hdiv3 hrow1_exact hrow2_exact

/--
Focused bridge for the remaining `k=5` case.  If the first two localized
divisor-skeleton rows force the gap below `125` throughout the `k=5` ratio
window, then `N=4` has no `k=5` quotient representation at all.
-/
theorem no_solution_four_five_of_first_two_rows_force_gap_lt_125
    (hsmall : ∀ n d : ℕ, 5 ≤ d →
      (n + d + 5) ^ 5 ≤ 4 * (n + 5) ^ 5 →
      4 * (n + 1) ^ 5 ≤ (n + d + 1) ^ 5 →
      n + 1 ∣ shiftedDiffProductAt 5 d 1 →
      n + 2 ∣ shiftedDiffProductAt 5 d 2 →
      d < 125) :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hq⟩
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
  have hrow1 : n + 1 ∣ shiftedDiffProductAt 5 d 1 :=
    individual_divisor_skeleton_four hd (by norm_num : 1 ∈ Finset.Icc 1 5) heq
  have hrow2 : n + 2 ∣ shiftedDiffProductAt 5 d 2 :=
    individual_divisor_skeleton_four hd (by norm_num : 2 ∈ Finset.Icc 1 5) heq
  have hd125 : d < 125 := hsmall n d hd hlo hup hrow1 hrow2
  exact no_solution_four_five_gap_lt_125 ⟨n, m, hm, by omega, hq⟩

/--
The same focused `k=5` bridge, with the remaining first-two-row bound stated
using the exact rational fifth-root linearization already derived from the
ratio window.
-/
theorem no_solution_four_five_of_first_two_rows_linear_force_gap_lt_125
    (hsmall : ∀ n d : ℕ, 5 ≤ d →
      651 * d < 208 * n + 1040 →
      285 * (n + 1) < 892 * d →
      n + 1 ∣ shiftedDiffProductAt 5 d 1 →
      n + 2 ∣ shiftedDiffProductAt 5 d 2 →
      d < 125) :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  apply no_solution_four_five_of_first_two_rows_force_gap_lt_125
  intro n d hd hlo hup hrow1 hrow2
  obtain ⟨hlin_lower, hlin_upper⟩ := k_five_ratio_window_linear_bounds hlo hup
  exact hsmall n d hd hlin_lower hlin_upper hrow1 hrow2

/--
The previously banked `d<100` slice follows from the wider `d<125` theorem.
-/
theorem no_solution_four_five_gap_lt_100 :
    ¬ ∃ n m : ℕ,
      m ≥ n + 5 ∧ m < n + 100 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 5, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 5, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hgap_lt, hq⟩
  exact no_solution_four_five_gap_lt_125 ⟨n, m, hm, by omega, hq⟩

private lemma four_mul_three_pow_lt_four_pow {k : ℕ} (hk : 5 ≤ k) :
    4 * 3 ^ k < 4 ^ k := by
  refine Nat.le_induction ?base ?step k hk
  · norm_num
  · intro n hn ih
    calc
      4 * 3 ^ (n + 1) = 3 * (4 * 3 ^ n) := by ring
      _ < 3 * 4 ^ n := (Nat.mul_lt_mul_left (by norm_num : 0 < 3)).mpr ih
      _ < 4 * 4 ^ n := (Nat.mul_lt_mul_right (Nat.pow_pos (by norm_num : 0 < 4))).mpr
        (by norm_num)
      _ = 4 ^ (n + 1) := by ring

private lemma three_mul_shift_lt_four_mul_base_of_window
    {k n d : ℕ} (hk : 5 ≤ k)
    (hwin : (n + d + k) ^ k ≤ 4 * (n + k) ^ k) :
    3 * (n + d + k) < 4 * (n + k) := by
  by_contra hnot
  have hge : 4 * (n + k) ≤ 3 * (n + d + k) := by omega
  have hpowge := Nat.pow_le_pow_left hge k
  have hpowge' : 4 ^ k * (n + k) ^ k ≤ 3 ^ k * (n + d + k) ^ k := by
    simpa [Nat.mul_pow, mul_assoc, mul_comm, mul_left_comm] using hpowge
  have hcomb : 4 ^ k * (n + k) ^ k ≤ (4 * 3 ^ k) * (n + k) ^ k := by
    calc
      4 ^ k * (n + k) ^ k ≤ 3 ^ k * (n + d + k) ^ k := hpowge'
      _ ≤ 3 ^ k * (4 * (n + k) ^ k) := Nat.mul_le_mul_left (3 ^ k) hwin
      _ = (4 * 3 ^ k) * (n + k) ^ k := by ring
  have hbase_pos : 0 < (n + k) ^ k := by
    exact Nat.pow_pos (by omega)
  have hcancel : 4 ^ k ≤ 4 * 3 ^ k := Nat.le_of_mul_le_mul_right hcomb hbase_pos
  have hlt := four_mul_three_pow_lt_four_pow hk
  omega

/--
The upper `N=4` ratio-window inequality alone puts the shifted block in the
nearby range `n+d < 3n/2`, for every `k≥5`.
-/
lemma twice_gap_lt_n_of_ratio_window
    {k n d : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (hwin : (n + d + k) ^ k ≤ 4 * (n + k) ^ k) :
    2 * d < n := by
  have hlinear := three_mul_shift_lt_four_mul_base_of_window hk hwin
  omega

lemma difference_block_below_n_of_ratio_window
    {k n d : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (hwin : (n + d + k) ^ k ≤ 4 * (n + k) ^ k) :
    d + k - 1 < n := by
  have hgap := twice_gap_lt_n_of_ratio_window hk hd hwin
  omega

/--
For a hypothetical `N=4` solution with `k≥5`, the gap is less than half of
the lower starting point. This is the root-free natural-arithmetic form of
`4^(1/k) < 4/3`.
-/
lemma twice_gap_lt_n_of_four_solution
    {k n d : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    2 * d < n := by
  have hwin := ratio_window_four_nat heq
  exact twice_gap_lt_n_of_ratio_window hk hd hwin.1

lemma difference_block_below_n_of_four_solution
    {k n d : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    d + k - 1 < n := by
  have hgap := twice_gap_lt_n_of_four_solution hk hd heq
  omega

lemma prime_dvd_blockProduct_iff {p k x : ℕ} (hp : p.Prime) :
    p ∣ blockProduct k x ↔ ∃ i, i ∈ Finset.Icc 1 k ∧ p ∣ (x + i) := by
  unfold blockProduct
  simpa using (hp.prime.dvd_finset_prod_iff (S := Finset.Icc 1 k) (g := fun i => x + i))

private lemma odd_prime_not_two_dvd {p : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) :
    ¬ 2 ∣ p := by
  intro h2p
  have hcases := (Nat.dvd_prime hp).mp h2p
  rcases hcases with h21 | h2p_eq
  · omega
  · exact hpodd h2p_eq.symm

lemma odd_prime_dvd_oddPart_iff {p n : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) :
    p ∣ oddPart n ↔ p ∣ n := by
  constructor
  · intro h
    exact dvd_trans h (by simpa [oddPart] using Nat.ordCompl_dvd n 2)
  · intro h
    simpa [oddPart] using
      (Nat.dvd_ordCompl_of_dvd_not_dvd (p := 2) (d := p) (n := n) h
        (odd_prime_not_two_dvd hp hpodd))

lemma odd_prime_dvd_oddBlock_iff {p k x : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) :
    p ∣ oddBlock k x ↔ p ∣ blockProduct k x := by
  rw [oddBlock_eq_oddPart_blockProduct]
  exact odd_prime_dvd_oddPart_iff hp hpodd

/--
Generic finite-product support extraction for prime divisors.
-/
theorem prime_dvd_finset_prod_exists
    {α : Type*}
    {s : Finset α} {f : α → ℕ} {p : ℕ}
    (hp : p.Prime)
    (h : p ∣ ∏ x ∈ s, f x) :
    ∃ x, x ∈ s ∧ p ∣ f x := by
  exact (hp.prime.dvd_finset_prod_iff (S := s) (g := f)).mp h

private lemma oddPart_dvd_self_for_support (x : ℕ) :
    oddPart x ∣ x := by
  exact oddPart_dvd x

private lemma prime_dvd_oddBlock_exists
    {p k x : ℕ} (hp : p.Prime)
    (h : p ∣ oddBlock k x) :
    ∃ i, i ∈ Finset.Icc 1 k ∧ p ∣ oddPart (x + i) := by
  unfold oddBlock at h
  exact prime_dvd_finset_prod_exists hp h

/--
Prime-support consequence of odd-block equality: every prime dividing the
shifted odd block must already divide some term in the original interval.
-/
theorem oddBlock_eq_upper_prime_dvd_lower_term
    {k n m p : ℕ} (hp : p.Prime)
    (hEq : oddBlock k m = oddBlock k n)
    (hdiv : p ∣ oddBlock k m) :
    ∃ i, i ∈ Finset.Icc 1 k ∧ p ∣ n + i := by
  have hlower : p ∣ oddBlock k n := by
    simpa [hEq] using hdiv
  obtain ⟨i, hi, hoddPart⟩ := prime_dvd_oddBlock_exists hp hlower
  exact ⟨i, hi, dvd_trans hoddPart (oddPart_dvd_self_for_support (n + i))⟩

/--
Bound form of `oddBlock_eq_upper_prime_dvd_lower_term`: a prime divisor of
the shifted odd block is at most the top term `n+k` of the original interval.
-/
theorem oddBlock_eq_upper_prime_le
    {k n m p : ℕ} (hp : p.Prime)
    (hEq : oddBlock k m = oddBlock k n)
    (hdiv : p ∣ oddBlock k m) :
    p ≤ n + k := by
  obtain ⟨j, hj, hjdiv⟩ := oddBlock_eq_upper_prime_dvd_lower_term hp hEq hdiv
  have hj_ge : 1 ≤ j := (Finset.mem_Icc.mp hj).1
  have hj_le : j ≤ k := (Finset.mem_Icc.mp hj).2
  have hpos : 0 < n + j := by omega
  have hple : p ≤ n + j := Nat.le_of_dvd hpos hjdiv
  omega

/--
Odd-prime wrapper for compatibility with the existing `N=64` prime-anatomy
bridges.  The `p ≠ 2` hypothesis is not needed for the proof.
-/
theorem oddBlock_eq_upper_odd_prime_le
    {k n m p : ℕ} (hp : p.Prime) (_hpodd : p ≠ 2)
    (hEq : oddBlock k m = oddBlock k n)
    (hdiv : p ∣ oddBlock k m) :
    p ≤ n + k := by
  exact oddBlock_eq_upper_prime_le hp hEq hdiv

/--
Smoothness form: equal odd blocks force the shifted odd block to have no odd
prime divisor larger than `n+k`.
-/
theorem oddBlock_eq_upper_oddBlock_smooth
    {k n m : ℕ}
    (hEq : oddBlock k m = oddBlock k n) :
    ∀ p : ℕ, p.Prime → p ≠ 2 → p ∣ oddBlock k m → p ≤ n + k := by
  intro p hp hpodd hdiv
  exact oddBlock_eq_upper_odd_prime_le hp hpodd hEq hdiv

/--
A large prime divisor of the shifted odd block rules out odd-block equality.
-/
theorem oddBlock_ne_of_upper_large_prime
    {k n m p : ℕ} (hp : p.Prime)
    (hlarge : n + k < p)
    (hdiv : p ∣ oddBlock k m) :
    oddBlock k m ≠ oddBlock k n := by
  intro hEq
  have hp_le : p ≤ n + k :=
    oddBlock_eq_upper_prime_le hp hEq hdiv
  omega

/--
Odd-prime wrapper for the large-prime odd-block separation criterion.
-/
theorem oddBlock_ne_of_upper_large_odd_prime
    {k n m p : ℕ} (hp : p.Prime) (_hpodd : p ≠ 2)
    (hlarge : n + k < p)
    (hdiv : p ∣ oddBlock k m) :
    oddBlock k m ≠ oddBlock k n := by
  exact oddBlock_ne_of_upper_large_prime hp hlarge hdiv

private lemma oddPart_dvd_oddBlock_of_mem
    {k x j : ℕ} (hj : j ∈ Finset.Icc 1 k) :
    oddPart (x + j) ∣ oddBlock k x := by
  unfold oddBlock
  exact Finset.dvd_prod_of_mem (fun i => oddPart (x + i)) hj

/--
Term-level support form: a prime divisor of one shifted odd-part term must
already divide some term in the original interval under odd-block equality.
-/
theorem oddBlock_eq_upper_term_prime_dvd_lower_term
    {k n m p j : ℕ} (hp : p.Prime)
    (hEq : oddBlock k m = oddBlock k n)
    (hj : j ∈ Finset.Icc 1 k)
    (hdiv : p ∣ oddPart (m + j)) :
    ∃ i, i ∈ Finset.Icc 1 k ∧ p ∣ n + i := by
  have hblock : p ∣ oddBlock k m :=
    dvd_trans hdiv (oddPart_dvd_oddBlock_of_mem hj)
  exact oddBlock_eq_upper_prime_dvd_lower_term hp hEq hblock

/--
Term-level large-prime escape: a large odd prime dividing one shifted odd-part
term rules out odd-block equality.
-/
theorem oddBlock_ne_of_upper_term_large_odd_prime
    {k n m p j : ℕ} (hp : p.Prime) (hpodd : p ≠ 2)
    (hj : j ∈ Finset.Icc 1 k)
    (hlarge : n + k < p)
    (hdiv : p ∣ oddPart (m + j)) :
    oddBlock k m ≠ oddBlock k n := by
  have hblock : p ∣ oddBlock k m :=
    dvd_trans hdiv (oddPart_dvd_oddBlock_of_mem hj)
  exact oddBlock_ne_of_upper_large_odd_prime hp hpodd hlarge hblock

/--
Odd-part removal does not change the `p`-adic exponent for `p ≠ 2`.
-/
theorem oddPart_factorization_of_ne_two {x p : ℕ} (hp2 : p ≠ 2) :
    (oddPart x).factorization p = x.factorization p := by
  rw [oddPart]
  rw [Nat.factorization_ordCompl]
  simpa using (Finsupp.erase_ne (f := x.factorization) hp2)

/--
Uniqueness of a multiple of `p` inside a translated interval of length `k`,
under `k < p`.
-/
theorem unique_dvd_add_of_mem_Icc_of_lt
    {p k a r s : ℕ}
    (hkp : k < p)
    (hr : r ∈ Finset.Icc 1 k)
    (hs : s ∈ Finset.Icc 1 k)
    (hpr : p ∣ a + r)
    (hps : p ∣ a + s) :
    r = s := by
  have hr0 : a + r ≡ 0 [MOD p] :=
    Nat.modEq_zero_iff_dvd.mpr hpr
  have hs0 : a + s ≡ 0 [MOD p] :=
    Nat.modEq_zero_iff_dvd.mpr hps
  have hrs0 : a + r ≡ a + s [MOD p] :=
    hr0.trans hs0.symm
  have hrs : r ≡ s [MOD p] :=
    Nat.ModEq.add_left_cancel' a hrs0
  have hrlt : r < p :=
    lt_of_le_of_lt (Finset.mem_Icc.mp hr).2 hkp
  have hslt : s < p :=
    lt_of_le_of_lt (Finset.mem_Icc.mp hs).2 hkp
  exact Nat.ModEq.eq_of_lt_of_lt hrs hrlt hslt

theorem existsUnique_dvd_add_Icc_of_exists_of_lt
    {p k a : ℕ}
    (hkp : k < p)
    (hex : ∃ r, r ∈ Finset.Icc 1 k ∧ p ∣ a + r) :
    ∃! r, r ∈ Finset.Icc 1 k ∧ p ∣ a + r := by
  obtain ⟨r, hr, hpr⟩ := hex
  refine ⟨r, ⟨hr, hpr⟩, ?_⟩
  intro s hs
  exact unique_dvd_add_of_mem_Icc_of_lt hkp hs.1 hr hs.2 hpr

theorem not_dvd_add_of_ne_unique
    {p k a r s : ℕ}
    (hkp : k < p)
    (hr : r ∈ Finset.Icc 1 k)
    (hs : s ∈ Finset.Icc 1 k)
    (hpr : p ∣ a + r)
    (hne : s ≠ r) :
    ¬ p ∣ a + s := by
  intro hps
  exact hne (unique_dvd_add_of_mem_Icc_of_lt hkp hs hr hps hpr)

/--
If `j` is a block index and `p` divides `oddPart (m+j)`, then `p` divides
the whole shifted odd block.
-/
theorem dvd_oddBlock_of_dvd_oddPart
    {k m p j : ℕ}
    (hj : j ∈ Finset.Icc 1 k)
    (hpj : p ∣ oddPart (m + j)) :
    p ∣ oddBlock k m :=
  dvd_trans hpj (oddPart_dvd_oddBlock_of_mem hj)

/--
Expands equality of odd blocks into equality of `p`-factorization sums.
-/
theorem oddBlock_factorization_sum_eq_of_eq
    {k m n p : ℕ}
    (hEq : oddBlock k m = oddBlock k n) :
    (∑ r ∈ Finset.Icc 1 k, (oddPart (m + r)).factorization p) =
      ∑ r ∈ Finset.Icc 1 k, (oddPart (n + r)).factorization p := by
  have hm0 : ∀ r ∈ Finset.Icc 1 k, oddPart (m + r) ≠ 0 := by
    intro r hr
    apply (oddPart_pos ?_).ne'
    have hr1 : 1 ≤ r := (Finset.mem_Icc.mp hr).1
    omega
  have hn0 : ∀ r ∈ Finset.Icc 1 k, oddPart (n + r) ≠ 0 := by
    intro r hr
    apply (oddPart_pos ?_).ne'
    have hr1 : 1 ≤ r := (Finset.mem_Icc.mp hr).1
    omega
  have h := congrArg (fun t : ℕ => t.factorization p) hEq
  simpa [oddBlock, Nat.factorization_prod_apply (p := p) hm0,
    Nat.factorization_prod_apply (p := p) hn0] using h

/--
If `p ∣ a+t` and `k < p`, then the whole factorization sum over
`oddPart (a+r)` has only the `t`-term possibly contributing.
-/
theorem sum_oddPart_factorization_eq_single_of_dvd_add
    {p k a t : ℕ}
    (hkp : k < p)
    (ht : t ∈ Finset.Icc 1 k)
    (hpt : p ∣ a + t) :
    (∑ r ∈ Finset.Icc 1 k, (oddPart (a + r)).factorization p) =
      (oddPart (a + t)).factorization p := by
  refine Finset.sum_eq_single t ?_ ?_
  · intro r hr hrt
    apply Nat.factorization_eq_zero_of_not_dvd
    intro hprOdd
    have hpr : p ∣ a + r :=
      dvd_trans hprOdd (oddPart_dvd (a + r))
    exact hrt (unique_dvd_add_of_mem_Icc_of_lt hkp hr ht hpr hpt)
  · intro hnot
    exact (hnot ht).elim

/--
Core valuation matching theorem. For `p ≠ 2` and `k < p`, odd-block equality
forces the exponent of `p` in a supported shifted term to equal the exponent
in its lower support term.
-/
theorem oddBlock_eq_large_prime_factorization_eq
    {k m n p j i : ℕ}
    (hp2 : p ≠ 2)
    (hkp : k < p)
    (hEq : oddBlock k m = oddBlock k n)
    (hj : j ∈ Finset.Icc 1 k)
    (hi : i ∈ Finset.Icc 1 k)
    (hpjOdd : p ∣ oddPart (m + j))
    (hpi : p ∣ n + i) :
    (m + j).factorization p = (n + i).factorization p := by
  have hpjm : p ∣ m + j :=
    dvd_trans hpjOdd (oddPart_dvd (m + j))
  have hprod :=
    oddBlock_factorization_sum_eq_of_eq
      (k := k) (m := m) (n := n) (p := p) hEq
  have hsumM :=
    sum_oddPart_factorization_eq_single_of_dvd_add
      (p := p) (k := k) (a := m) (t := j) hkp hj hpjm
  have hsumN :=
    sum_oddPart_factorization_eq_single_of_dvd_add
      (p := p) (k := k) (a := n) (t := i) hkp hi hpi
  have hodd :
      (oddPart (m + j)).factorization p =
        (oddPart (n + i)).factorization p := by
    calc
      (oddPart (m + j)).factorization p =
          ∑ r ∈ Finset.Icc 1 k, (oddPart (m + r)).factorization p := hsumM.symm
      _ = ∑ r ∈ Finset.Icc 1 k, (oddPart (n + r)).factorization p := hprod
      _ = (oddPart (n + i)).factorization p := hsumN
  simpa [oddPart_factorization_of_ne_two (x := m + j) hp2,
    oddPart_factorization_of_ne_two (x := n + i) hp2] using hodd

/--
Power divisibility transfer from equality of prime factorizations.
-/
theorem pow_dvd_of_factorization_eq
    {p a b e : ℕ}
    (hp : p.Prime)
    (ha0 : a ≠ 0)
    (hb0 : b ≠ 0)
    (hval : a.factorization p = b.factorization p)
    (hpa : p ^ e ∣ a) :
    p ^ e ∣ b := by
  have he_le_a : e ≤ a.factorization p :=
    (hp.pow_dvd_iff_le_factorization ha0).mp hpa
  have he_le_b : e ≤ b.factorization p := by
    simpa [hval] using he_le_a
  exact (hp.pow_dvd_iff_le_factorization hb0).mpr he_le_b

theorem oddBlock_eq_large_prime_pow_dvd_lower
    {k m n p j i e : ℕ}
    (hp : p.Prime)
    (hp2 : p ≠ 2)
    (hkp : k < p)
    (hEq : oddBlock k m = oddBlock k n)
    (hj : j ∈ Finset.Icc 1 k)
    (hi : i ∈ Finset.Icc 1 k)
    (hpjOdd : p ∣ oddPart (m + j))
    (hpi : p ∣ n + i)
    (hpow : p ^ e ∣ m + j) :
    p ^ e ∣ n + i := by
  have hval :=
    oddBlock_eq_large_prime_factorization_eq
      (k := k) (m := m) (n := n) (p := p) (j := j) (i := i)
      hp2 hkp hEq hj hi hpjOdd hpi
  have hmj0 : m + j ≠ 0 := by
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    omega
  have hni0 : n + i ≠ 0 := by
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    omega
  exact pow_dvd_of_factorization_eq hp hmj0 hni0 hval hpow

/--
The lower support index is unique for a prime `p > k`.
-/
theorem oddBlock_eq_large_prime_existsUnique_lower_dvd
    {k m n p j : ℕ}
    (hp : p.Prime)
    (hkp : k < p)
    (hEq : oddBlock k m = oddBlock k n)
    (hj : j ∈ Finset.Icc 1 k)
    (hpjOdd : p ∣ oddPart (m + j)) :
    ∃! i, i ∈ Finset.Icc 1 k ∧ p ∣ n + i := by
  have hblock : p ∣ oddBlock k m :=
    dvd_oddBlock_of_dvd_oddPart hj hpjOdd
  have hex : ∃ i, i ∈ Finset.Icc 1 k ∧ p ∣ n + i :=
    oddBlock_eq_upper_prime_dvd_lower_term hp hEq hblock
  exact existsUnique_dvd_add_Icc_of_exists_of_lt hkp hex

/--
Packaged large-prime matching data forced by odd-block equality.
-/
structure LargePrimeMatch (k m n p j i : ℕ) : Prop where
  lower_mem : i ∈ Finset.Icc 1 k
  lower_dvd : p ∣ n + i
  lower_unique : ∀ r, r ∈ Finset.Icc 1 k → p ∣ n + r → r = i
  lower_no_other : ∀ r, r ∈ Finset.Icc 1 k → r ≠ i → ¬ p ∣ n + r
  lowerOdd_no_other : ∀ r, r ∈ Finset.Icc 1 k → r ≠ i → ¬ p ∣ oddPart (n + r)
  upper_unique : ∀ r, r ∈ Finset.Icc 1 k → p ∣ m + r → r = j
  upper_no_other : ∀ r, r ∈ Finset.Icc 1 k → r ≠ j → ¬ p ∣ m + r
  upperOdd_no_other : ∀ r, r ∈ Finset.Icc 1 k → r ≠ j → ¬ p ∣ oddPart (m + r)
  factorization_eq : (m + j).factorization p = (n + i).factorization p
  pow_dvd_lower : ∀ e, p ^ e ∣ m + j → p ^ e ∣ n + i

/--
Main large-prime matching theorem: for an odd prime `p > k`, if `p` divides
the shifted odd-part term at `j`, odd-block equality forces a unique matched
lower index with valuation matching and power-divisibility transfer.
-/
theorem oddBlock_eq_large_prime_match
    {k m n p j : ℕ}
    (hp : p.Prime)
    (hp2 : p ≠ 2)
    (hkp : k < p)
    (hEq : oddBlock k m = oddBlock k n)
    (hj : j ∈ Finset.Icc 1 k)
    (hpjOdd : p ∣ oddPart (m + j)) :
    ∃ i, LargePrimeMatch k m n p j i := by
  obtain ⟨i, hiDvd, huniq⟩ :=
    oddBlock_eq_large_prime_existsUnique_lower_dvd
      (k := k) (m := m) (n := n) (p := p) (j := j)
      hp hkp hEq hj hpjOdd
  rcases hiDvd with ⟨hi, hpi⟩
  have hpjm : p ∣ m + j :=
    dvd_trans hpjOdd (oddPart_dvd (m + j))
  have hval :
      (m + j).factorization p = (n + i).factorization p :=
    oddBlock_eq_large_prime_factorization_eq
      (k := k) (m := m) (n := n) (p := p) (j := j) (i := i)
      hp2 hkp hEq hj hi hpjOdd hpi
  have hmj0 : m + j ≠ 0 := by
    have hj1 : 1 ≤ j := (Finset.mem_Icc.mp hj).1
    omega
  have hni0 : n + i ≠ 0 := by
    have hi1 : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    omega
  refine ⟨i, ?_⟩
  refine
  { lower_mem := hi
    lower_dvd := hpi
    lower_unique := ?_
    lower_no_other := ?_
    lowerOdd_no_other := ?_
    upper_unique := ?_
    upper_no_other := ?_
    upperOdd_no_other := ?_
    factorization_eq := hval
    pow_dvd_lower := ?_ }
  · intro r hr hpr
    exact huniq r ⟨hr, hpr⟩
  · intro r hr hri hpr
    exact hri (huniq r ⟨hr, hpr⟩)
  · intro r hr hri hprOdd
    have hpr : p ∣ n + r :=
      dvd_trans hprOdd (oddPart_dvd (n + r))
    exact hri (huniq r ⟨hr, hpr⟩)
  · intro r hr hpr
    exact unique_dvd_add_of_mem_Icc_of_lt hkp hr hj hpr hpjm
  · intro r hr hrj hpr
    exact hrj (unique_dvd_add_of_mem_Icc_of_lt hkp hr hj hpr hpjm)
  · intro r hr hrj hprOdd
    have hpr : p ∣ m + r :=
      dvd_trans hprOdd (oddPart_dvd (m + r))
    exact hrj (unique_dvd_add_of_mem_Icc_of_lt hkp hr hj hpr hpjm)
  · intro e hpow
    exact pow_dvd_of_factorization_eq hp hmj0 hni0 hval hpow

/--
Gap divisibility consequence of a large-prime match.
-/
theorem LargePrimeMatch.gap_dvd
    {k m n p j i e : ℕ}
    (h : LargePrimeMatch k m n p j i)
    (hm_ge : n + k ≤ m)
    (hpow : p ^ e ∣ m + j) :
    n + i ≤ m + j ∧ p ^ e ∣ (m + j) - (n + i) := by
  constructor
  · have hi_le_k : i ≤ k := (Finset.mem_Icc.mp h.lower_mem).2
    omega
  · exact Nat.dvd_sub hpow (h.pow_dvd_lower e hpow)

/--
Congruence form of the power-transfer result.
-/
theorem LargePrimeMatch.modEq
    {k m n p j i e : ℕ}
    (h : LargePrimeMatch k m n p j i)
    (hpow : p ^ e ∣ m + j) :
    m + j ≡ n + i [MOD p ^ e] := by
  have hlow : p ^ e ∣ n + i :=
    h.pow_dvd_lower e hpow
  exact
    (Nat.modEq_zero_iff_dvd.mpr hpow).trans
      (Nat.modEq_zero_iff_dvd.mpr hlow).symm

private lemma one_mem_Icc_of_two_le {k : ℕ} (hk2 : 2 ≤ k) :
    1 ∈ Finset.Icc 1 k := by
  exact Finset.mem_Icc.mpr ⟨le_rfl, by omega⟩

private lemma dvd_pow_self_of_pos_exp {p e : ℕ} (he : 0 < e) :
    p ∣ p ^ e := by
  have h1e : 1 ≤ e := by omega
  simpa using (pow_dvd_pow p h1e)

/--
Per-prime-power gap support.  Under odd-block equality, every large odd prime
power dividing an upper odd part divides one of the corresponding upper-minus-
lower gap factors.
-/
theorem oddBlock_eq_upper_large_prime_power_gap_support
    {k n m j p e : ℕ}
    (hk2 : 2 ≤ k)
    (hp : p.Prime)
    (hkp : k < p)
    (hEq : oddBlock k m = oddBlock k n)
    (hmsep : n + k ≤ m)
    (hj : j ∈ Finset.Icc 1 k)
    (hpow : p ^ e ∣ oddPart (m + j)) :
    ∃ i, i ∈ Finset.Icc 1 k ∧ p ^ e ∣ (m + j) - (n + i) := by
  by_cases he0 : e = 0
  · subst e
    exact ⟨1, one_mem_Icc_of_two_le hk2, by simp⟩
  · have hepos : 0 < e := by omega
    have hp2 : p ≠ 2 := by omega
    have hp_dvd_pow : p ∣ p ^ e := dvd_pow_self_of_pos_exp hepos
    have hpjOdd : p ∣ oddPart (m + j) := dvd_trans hp_dvd_pow hpow
    obtain ⟨i, hmatch⟩ :=
      oddBlock_eq_large_prime_match
        (k := k) (m := m) (n := n) (p := p) (j := j)
        hp hp2 hkp hEq hj hpjOdd
    have hpowBase : p ^ e ∣ m + j := dvd_trans hpow (oddPart_dvd (m + j))
    exact ⟨i, hmatch.lower_mem, (hmatch.gap_dvd hmsep hpowBase).2⟩

/--
Per-prime-power divisibility into the full upper-gap product.
-/
theorem oddBlock_eq_upper_large_prime_power_dvd_gapProduct
    {k n m j p e : ℕ}
    (hk2 : 2 ≤ k)
    (hp : p.Prime)
    (hkp : k < p)
    (hEq : oddBlock k m = oddBlock k n)
    (hmsep : n + k ≤ m)
    (hj : j ∈ Finset.Icc 1 k)
    (hpow : p ^ e ∣ oddPart (m + j)) :
    p ^ e ∣
      ∏ i ∈ Finset.Icc 1 k, ((m + j) - (n + i)) := by
  obtain ⟨i, hi, hgap⟩ :=
    oddBlock_eq_upper_large_prime_power_gap_support
      (k := k) (n := n) (m := m) (j := j) (p := p) (e := e)
      hk2 hp hkp hEq hmsep hj hpow
  have hterm : (m + j) - (n + i) ∣
      ∏ i ∈ Finset.Icc 1 k, ((m + j) - (n + i)) := by
    exact Finset.dvd_prod_of_mem (fun i => (m + j) - (n + i)) hi
  exact dvd_trans hgap hterm

theorem prime_of_mem_factorization_support {x p : ℕ}
    (hp : p ∈ x.factorization.support) :
    p.Prime := by
  by_contra hnot
  have hzero : x.factorization p = 0 :=
    Nat.factorization_eq_zero_of_not_prime x hnot
  have hne : x.factorization p ≠ 0 :=
    (Finsupp.mem_support_toFun (x.factorization) p).mp hp
  exact hne hzero

theorem pow_factorization_dvd_of_mem_factorization_support {x p : ℕ}
    (_hp : p ∈ x.factorization.support) :
    p ^ x.factorization p ∣ x := by
  exact Nat.ordProj_dvd x p

/--
Support-filter form: each large-prime factorization component of an upper odd
part divides the corresponding upper-gap product.
-/
theorem oddBlock_eq_upper_largeOddKernel_factor_dvd_gapProduct
    {k n m j p : ℕ}
    (hk2 : 2 ≤ k)
    (hEq : oddBlock k m = oddBlock k n)
    (hmsep : n + k ≤ m)
    (hj : j ∈ Finset.Icc 1 k)
    (hp_mem :
      p ∈ (oddPart (m + j)).factorization.support.filter
        (fun q : ℕ => k < q)) :
    p ^ (oddPart (m + j)).factorization p ∣
      ∏ i ∈ Finset.Icc 1 k, ((m + j) - (n + i)) := by
  have hp_support :
      p ∈ (oddPart (m + j)).factorization.support :=
    (Finset.mem_filter.mp hp_mem).1
  have hkp : k < p :=
    (Finset.mem_filter.mp hp_mem).2
  have hp : p.Prime :=
    prime_of_mem_factorization_support hp_support
  have hpow :
      p ^ (oddPart (m + j)).factorization p ∣ oddPart (m + j) :=
    pow_factorization_dvd_of_mem_factorization_support hp_support
  exact
    oddBlock_eq_upper_large_prime_power_dvd_gapProduct
      (k := k) (n := n) (m := m) (j := j)
      (p := p) (e := (oddPart (m + j)).factorization p)
      hk2 hp hkp hEq hmsep hj hpow

/--
Gap-form row consequence of a large-prime match: if the upper block is
`n+d`, the matched prime power divides the shifted-difference row indexed by
the lower support.
-/
theorem LargePrimeMatch.pow_dvd_shiftedDiffProductAt
    {k n d p j i e : ℕ}
    (h : LargePrimeMatch k (n + d) n p j i)
    (hd : k ≤ d)
    (hj : j ∈ Finset.Icc 1 k)
    (hpow : p ^ e ∣ n + d + j) :
    p ^ e ∣ shiftedDiffProductAt k d i := by
  have hpow' : p ^ e ∣ (n + d) + j := by
    simpa [Nat.add_assoc] using hpow
  have hgap := h.gap_dvd (hm_ge := by omega) hpow'
  have hi_le : i ≤ k := (Finset.mem_Icc.mp h.lower_mem).2
  have hdiff_eq : ((n + d) + j) - (n + i) = d + j - i := by
    omega
  have hfactor : p ^ e ∣ d + j - i := by
    simpa [hdiff_eq] using hgap.2
  have hterm : d + j - i ∣ shiftedDiffProductAt k d i := by
    unfold shiftedDiffProductAt
    exact Finset.dvd_prod_of_mem (fun r => d + r - i) hj
  exact dvd_trans hfactor hterm

/--
Odd-block equality plus a large-prime match transfers every matched prime
power from the upper term into the shifted-difference row of its lower support.
-/
theorem oddBlock_eq_large_prime_pow_dvd_shiftedDiffProductAt
    {k n d p j e : ℕ}
    (hp : p.Prime)
    (hp2 : p ≠ 2)
    (hkp : k < p)
    (hd : k ≤ d)
    (hEq : oddBlock k (n + d) = oddBlock k n)
    (hj : j ∈ Finset.Icc 1 k)
    (hpjOdd : p ∣ oddPart (n + d + j))
    (hpow : p ^ e ∣ n + d + j) :
    ∃ i, i ∈ Finset.Icc 1 k ∧ p ∣ n + i ∧
      p ^ e ∣ shiftedDiffProductAt k d i := by
  obtain ⟨i, hmatch⟩ :=
    oddBlock_eq_large_prime_match
      (k := k) (m := n + d) (n := n) (p := p) (j := j)
      hp hp2 hkp hEq hj (by simpa [Nat.add_assoc] using hpjOdd)
  refine ⟨i, hmatch.lower_mem, hmatch.lower_dvd, ?_⟩
  exact hmatch.pow_dvd_shiftedDiffProductAt hd hj hpow

/--
Row-product form of `oddBlock_eq_large_prime_pow_dvd_shiftedDiffProductAt`.
-/
theorem oddBlock_eq_large_prime_pow_dvd_shiftedDiffProductRows
    {k n d p j e : ℕ}
    (hp : p.Prime)
    (hp2 : p ≠ 2)
    (hkp : k < p)
    (hd : k ≤ d)
    (hEq : oddBlock k (n + d) = oddBlock k n)
    (hj : j ∈ Finset.Icc 1 k)
    (hpjOdd : p ∣ oddPart (n + d + j))
    (hpow : p ^ e ∣ n + d + j) :
    p ^ e ∣ shiftedDiffProductRows k d := by
  obtain ⟨i, hi, _hpi, hrow⟩ :=
    oddBlock_eq_large_prime_pow_dvd_shiftedDiffProductAt
      (k := k) (n := n) (d := d) (p := p) (j := j) (e := e)
      hp hp2 hkp hd hEq hj hpjOdd hpow
  have hrow_dvd : shiftedDiffProductAt k d i ∣ shiftedDiffProductRows k d := by
    unfold shiftedDiffProductRows
    exact Finset.dvd_prod_of_mem (fun r => shiftedDiffProductAt k d r) hi
  exact dvd_trans hrow hrow_dvd

lemma shiftedDiffProductRows_pos {k d : ℕ} (hd : k ≤ d) :
    0 < shiftedDiffProductRows k d := by
  unfold shiftedDiffProductRows
  refine Finset.prod_pos ?_
  intro i hi
  exact shiftedDiffProductAt_pos hd hi

/--
Power-size escape for a single upper term: if an odd prime power in an upper
odd part is larger than every possible matched shifted-difference row, then
the two odd blocks cannot be equal.
-/
theorem oddBlock_ne_of_upper_large_prime_power_row_lt
    {k n d p j e : ℕ}
    (hp : p.Prime)
    (hp2 : p ≠ 2)
    (hkp : k < p)
    (hd : k ≤ d)
    (hj : j ∈ Finset.Icc 1 k)
    (hpjOdd : p ∣ oddPart (n + d + j))
    (hpow : p ^ e ∣ n + d + j)
    (hrows_lt : ∀ i, i ∈ Finset.Icc 1 k → shiftedDiffProductAt k d i < p ^ e) :
    oddBlock k (n + d) ≠ oddBlock k n := by
  intro hEq
  obtain ⟨i, hi, _hpi, hrow⟩ :=
    oddBlock_eq_large_prime_pow_dvd_shiftedDiffProductAt
      (k := k) (n := n) (d := d) (p := p) (j := j) (e := e)
      hp hp2 hkp hd hEq hj hpjOdd hpow
  exact not_le_of_gt (hrows_lt i hi)
    (Nat.le_of_dvd (shiftedDiffProductAt_pos hd hi) hrow)

/--
Row-product power-size escape: if an odd prime power in an upper odd part is
larger than the full shifted-difference row product, then odd-block equality is
impossible.
-/
theorem oddBlock_ne_of_upper_large_prime_power_rows_lt
    {k n d p j e : ℕ}
    (hp : p.Prime)
    (hp2 : p ≠ 2)
    (hkp : k < p)
    (hd : k ≤ d)
    (hj : j ∈ Finset.Icc 1 k)
    (hpjOdd : p ∣ oddPart (n + d + j))
    (hpow : p ^ e ∣ n + d + j)
    (hlt : shiftedDiffProductRows k d < p ^ e) :
    oddBlock k (n + d) ≠ oddBlock k n := by
  intro hEq
  have hdvd :=
    oddBlock_eq_large_prime_pow_dvd_shiftedDiffProductRows
      (k := k) (n := n) (d := d) (p := p) (j := j) (e := e)
      hp hp2 hkp hd hEq hj hpjOdd hpow
  exact not_le_of_gt hlt (Nat.le_of_dvd (shiftedDiffProductRows_pos hd) hdvd)

private lemma odd_prime_not_dvd_four {p : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) : ¬ p ∣ 4 := by
  intro h4
  have hpow : p ∣ 2 ^ 2 := by simpa using h4
  have hp2 : p ∣ 2 := hp.dvd_of_dvd_pow hpow
  have hcases := (Nat.dvd_prime (by norm_num : Nat.Prime 2)).mp hp2
  rcases hcases with hp1 | hp2eq
  · have hpgt : 1 < p := hp.one_lt
    omega
  · exact hpodd hp2eq

lemma dvd_shiftedDiffProduct_of_term {p k d i j : ℕ}
    (hi : i ∈ Finset.Icc 1 k) (hj : j ∈ Finset.Icc 1 k)
    (hdiv : p ∣ d + i - j) :
    p ∣ shiftedDiffProduct k d := by
  have hinner : d + i - j ∣ ∏ j ∈ Finset.Icc 1 k, (d + i - j) := by
    exact Finset.dvd_prod_of_mem (fun j => d + i - j) hj
  have houter : (∏ j ∈ Finset.Icc 1 k, (d + i - j)) ∣ shiftedDiffProduct k d := by
    simpa [shiftedDiffProduct] using
      (Finset.dvd_prod_of_mem (fun i => ∏ j ∈ Finset.Icc 1 k, (d + i - j)) hi)
  exact dvd_trans hdiv (dvd_trans hinner houter)

/--
Odd-block equality transfers every odd-prime divisor of a term in the shifted
block to a term in the original block.
-/
lemma prime_dvd_right_block_transfers_of_oddBlock_eq
    {p k n d i : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) (hd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (hodd : oddBlock k (n + d) = oddBlock k n)
    (hdiv : p ∣ n + d + i) :
    ∃ j, j ∈ Finset.Icc 1 k ∧ p ∣ d + i - j := by
  have hprod_left : p ∣ blockProduct k (n + d) := by
    exact dvd_trans hdiv (by simpa [blockProduct] using
      (Finset.dvd_prod_of_mem (fun i => n + d + i) hi))
  have hodd_left : p ∣ oddBlock k (n + d) :=
    (odd_prime_dvd_oddBlock_iff hp hpodd).mpr hprod_left
  have hodd_right : p ∣ oddBlock k n := by
    rwa [hodd] at hodd_left
  have hprod_right : p ∣ blockProduct k n :=
    (odd_prime_dvd_oddBlock_iff hp hpodd).mp hodd_right
  obtain ⟨j, hj, hjdiv⟩ := (prime_dvd_blockProduct_iff hp).mp hprod_right
  refine ⟨j, hj, ?_⟩
  have hdvd_diff : p ∣ (n + d + i) - (n + j) := Nat.dvd_sub hdiv hjdiv
  have hrewrite : (n + d + i) - (n + j) = d + i - j := by
    have hjle : j ≤ k := (Finset.mem_Icc.mp hj).2
    omega
  simpa [hrewrite] using hdvd_diff

/--
Odd-block equality transfers every odd-prime divisor of a term in the original
block to a term in the shifted block.
-/
lemma prime_dvd_left_block_transfers_of_oddBlock_eq
    {p k n d j : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) (hd : k ≤ d)
    (hj : j ∈ Finset.Icc 1 k)
    (hodd : oddBlock k (n + d) = oddBlock k n)
    (hdiv : p ∣ n + j) :
    ∃ i, i ∈ Finset.Icc 1 k ∧ p ∣ d + i - j := by
  have hprod_right : p ∣ blockProduct k n := by
    exact dvd_trans hdiv (by simpa [blockProduct] using
      (Finset.dvd_prod_of_mem (fun j => n + j) hj))
  have hodd_right : p ∣ oddBlock k n :=
    (odd_prime_dvd_oddBlock_iff hp hpodd).mpr hprod_right
  have hodd_left : p ∣ oddBlock k (n + d) := by
    rwa [← hodd] at hodd_right
  have hprod_left : p ∣ blockProduct k (n + d) :=
    (odd_prime_dvd_oddBlock_iff hp hpodd).mp hodd_left
  obtain ⟨i, hi, hidiv⟩ := (prime_dvd_blockProduct_iff hp).mp hprod_left
  refine ⟨i, hi, ?_⟩
  have hdvd_diff : p ∣ (n + d + i) - (n + j) := Nat.dvd_sub hidiv hdiv
  have hrewrite : (n + d + i) - (n + j) = d + i - j := by
    have hjle : j ≤ k := (Finset.mem_Icc.mp hj).2
    omega
  simpa [hrewrite] using hdvd_diff

lemma prime_dvd_right_block_dvd_shiftedDiffProduct_of_oddBlock_eq
    {p k n d : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) (hd : k ≤ d)
    (hodd : oddBlock k (n + d) = oddBlock k n)
    (hprod : p ∣ blockProduct k (n + d)) :
    p ∣ shiftedDiffProduct k d := by
  obtain ⟨i, hi, hidiv⟩ := (prime_dvd_blockProduct_iff hp).mp hprod
  obtain ⟨j, hj, hdiff⟩ :=
    prime_dvd_right_block_transfers_of_oddBlock_eq hp hpodd hd hi hodd hidiv
  exact dvd_shiftedDiffProduct_of_term hi hj hdiff

lemma prime_dvd_left_block_dvd_shiftedDiffProduct_of_oddBlock_eq
    {p k n d : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) (hd : k ≤ d)
    (hodd : oddBlock k (n + d) = oddBlock k n)
    (hprod : p ∣ blockProduct k n) :
    p ∣ shiftedDiffProduct k d := by
  obtain ⟨j, hj, hjdiv⟩ := (prime_dvd_blockProduct_iff hp).mp hprod
  obtain ⟨i, hi, hdiff⟩ :=
    prime_dvd_left_block_transfers_of_oddBlock_eq hp hpodd hd hj hodd hjdiv
  exact dvd_shiftedDiffProduct_of_term hi hj hdiff

/--
The prime-transfer obstruction in its most general form needed for the
odd-block separation attack: if two disjoint blocks have the same odd part,
then every odd-prime divisor of either block divides the shifted difference
product.
-/
theorem odd_prime_factor_dvd_shiftedDiffProduct_of_oddBlock_eq
    {p k n d : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) (hd : k ≤ d)
    (hodd : oddBlock k (n + d) = oddBlock k n)
    (hprod : p ∣ blockProduct k (n + d) * blockProduct k n) :
    p ∣ shiftedDiffProduct k d := by
  have hcases := (hp.dvd_mul).mp hprod
  rcases hcases with hleft | hright
  · exact prime_dvd_right_block_dvd_shiftedDiffProduct_of_oddBlock_eq hp hpodd hd hodd hleft
  · exact prime_dvd_left_block_dvd_shiftedDiffProduct_of_oddBlock_eq hp hpodd hd hodd hright

/--
Prime transfer stated directly from two disjoint blocks with equal odd-block
product.
-/
theorem odd_prime_factor_dvd_shiftedDiffProduct_of_oddBlock_solution
    {p k n m : ℕ} (hp : p.Prime) (hpodd : p ≠ 2)
    (hm : m ≥ n + k)
    (hodd : oddBlock k m = oddBlock k n)
    (hprod : p ∣ blockProduct k m * blockProduct k n) :
    ∃ d : ℕ, k ≤ d ∧ m = n + d ∧ p ∣ shiftedDiffProduct k d := by
  refine ⟨m - n, by omega, by omega, ?_⟩
  have hmd : n + (m - n) = m := by omega
  rw [← hmd] at hprod hodd
  exact odd_prime_factor_dvd_shiftedDiffProduct_of_oddBlock_eq hp hpodd (by omega) hodd hprod

lemma lower_block_term_prime_le_difference_bound_of_oddBlock_eq
    {p k n d i : ℕ} (hk : 2 ≤ k) (hd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (hodd : oddBlock k (n + d) = oddBlock k n)
    (hp : p.Prime) (hdiv : p ∣ n + i) :
    p ≤ d + k - 1 := by
  by_cases hp2 : p = 2
  · rw [hp2]
    omega
  · by_cases hpk : p ≤ k
    · omega
    · obtain ⟨j, hj, hdiff⟩ :=
        prime_dvd_left_block_transfers_of_oddBlock_eq hp hp2 hd hi hodd hdiv
      have hdiff_pos : 0 < d + j - i := by
        have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
        have hj_ge : 1 ≤ j := (Finset.mem_Icc.mp hj).1
        omega
      have hdiff_le : d + j - i ≤ d + k - 1 := by
        have hj_le : j ≤ k := (Finset.mem_Icc.mp hj).2
        have hi_ge : 1 ≤ i := (Finset.mem_Icc.mp hi).1
        omega
      exact le_trans (Nat.le_of_dvd hdiff_pos hdiff) hdiff_le

lemma upper_block_term_prime_le_difference_bound_of_oddBlock_eq
    {p k n d i : ℕ} (hk : 2 ≤ k) (hd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (hodd : oddBlock k (n + d) = oddBlock k n)
    (hp : p.Prime) (hdiv : p ∣ n + d + i) :
    p ≤ d + k - 1 := by
  by_cases hp2 : p = 2
  · rw [hp2]
    omega
  · by_cases hpk : p ≤ k
    · omega
    · obtain ⟨j, hj, hdiff⟩ :=
        prime_dvd_right_block_transfers_of_oddBlock_eq hp hp2 hd hi hodd hdiv
      have hdiff_pos : 0 < d + i - j := by
        have hi_ge : 1 ≤ i := (Finset.mem_Icc.mp hi).1
        have hj_le : j ≤ k := (Finset.mem_Icc.mp hj).2
        omega
      have hdiff_le : d + i - j ≤ d + k - 1 := by
        have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
        have hj_ge : 1 ≤ j := (Finset.mem_Icc.mp hj).1
        omega
      exact le_trans (Nat.le_of_dvd hdiff_pos hdiff) hdiff_le

/--
Equal odd-block products force every term in both blocks to be smooth up to
the shifted-difference bound `d+k-1`.
-/
theorem smooth_blocks_of_oddBlock_gap_eq
    {k n d : ℕ} (hk : 2 ≤ k) (hd : k ≤ d)
    (hodd : oddBlock k (n + d) = oddBlock k n) :
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + i)) ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + d + i)) := by
  constructor
  · intro i hi p hp hdiv
    exact lower_block_term_prime_le_difference_bound_of_oddBlock_eq hk hd hi hodd hp hdiv
  · intro i hi p hp hdiv
    exact upper_block_term_prime_le_difference_bound_of_oddBlock_eq hk hd hi hodd hp hdiv

/--
The smoothness consequence of odd-block equality, stated in the original
disjoint-block variables.
-/
theorem smooth_blocks_of_oddBlock_solution
    {k n m : ℕ} (hk : 2 ≤ k) (hm : m ≥ n + k)
    (hodd : oddBlock k m = oddBlock k n) :
    ∃ d : ℕ,
      k ≤ d ∧ m = n + d ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + i)) ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + d + i)) := by
  refine ⟨m - n, by omega, by omega, ?_⟩
  have hmd : n + (m - n) = m := by omega
  rw [← hmd] at hodd
  exact smooth_blocks_of_oddBlock_gap_eq hk (by omega) hodd

/--
Any gap-form `N=64` quotient solution forces every term in both blocks to be
smooth up to the shifted-difference bound `d+k-1`.  This packages the pure
power-of-two odd-block equality with the prime-transfer obstruction.
-/
theorem smooth_blocks_of_sixtyfour_gap_solution
    {k n d : ℕ} (hk : 2 ≤ k) (hd : k ≤ d)
    (hq : (64 : ℚ) =
      (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
        (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + i)) ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + d + i)) := by
  have hodd : oddBlock k (n + d) = oddBlock k n := by
    exact sixtyfour_quotient_implies_oddBlock_eq hq
  exact smooth_blocks_of_oddBlock_gap_eq hk hd hodd

/--
The `N=64` smoothness and ratio-window consequences stated directly in the
original quotient variables.
-/
theorem smooth_blocks_of_sixtyfour_solution
    {k n m : ℕ} (hk : 2 ≤ k) (hm : m ≥ n + k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    ∃ d : ℕ,
      k ≤ d ∧ m = n + d ∧
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k ∧
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + i)) ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + d + i)) := by
  obtain ⟨d, hd, hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  obtain ⟨hlo, hup⟩ := ratio_window_sixtyfour_nat heq
  have hq_gap : (64 : ℚ) =
      (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
        (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
    rw [← hmd]
    exact hq
  obtain ⟨hlower, hupper⟩ := smooth_blocks_of_sixtyfour_gap_solution hk hd hq_gap
  exact ⟨d, hd, hmd, hlo, hup, hlower, hupper⟩

/--
For any original-variable `N=64` quotient solution with `k≥7`, the gap is
strictly smaller than `n+k`.  This is the first linear consequence of the
`N=64` ratio window, using `64 < 2^k`.
-/
theorem gap_lt_n_add_k_of_sixtyfour_solution
    {k n m : ℕ} (hk : 7 ≤ k) (hm : m ≥ n + k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    m - n < n + k := by
  obtain ⟨d, _hd, hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  have hgap := gap_lt_n_add_k_of_sixtyfour_gap_solution hk heq
  have hd_eq : m - n = d := by omega
  rwa [hd_eq]

/--
Generic successor-bracket form of the original-variable `N=64` gap bound:
if `(R+1)/R` is above `64^(1/k)`, then any quotient solution has
`R(m-n)<n+k`.
-/
theorem succ_gap_lt_n_add_k_of_sixtyfour_solution
    {R k n m : ℕ} (hk : 1 ≤ k) (hm : m ≥ n + k)
    (hbracket : 64 * R ^ k < (R + 1) ^ k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    R * (m - n) < n + k := by
  obtain ⟨d, _hd, _hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  have hgap := succ_gap_lt_n_add_k_of_sixtyfour_gap_solution
    (R := R) hk hbracket heq
  have hd_eq : m - n = d := by omega
  rwa [hd_eq]

/--
Generic upper-side successor-bracket form of the original-variable `N=64`
gap bound: if `64^(1/k)` is above `(R+1)/R`, then any quotient solution has
`n+1<R(m-n)`.
-/
theorem upper_succ_n_add_one_lt_mul_gap_of_sixtyfour_solution
    {R k n m : ℕ} (hk : 1 ≤ k) (hm : m ≥ n + k)
    (hbracket : (R + 1) ^ k < 64 * R ^ k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    n + 1 < R * (m - n) := by
  obtain ⟨d, _hd, _hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  have hgap := upper_succ_n_add_one_lt_mul_gap_of_sixtyfour_gap_solution
    (R := R) hk hbracket heq
  have hd_eq : m - n = d := by omega
  rwa [hd_eq]

/--
For any original-variable `N=64` quotient solution with `k≥11`, the exact
ratio window and `(3/2)^k>64` sharpen the gap bound to `2(m-n)<n+k`.
-/
theorem twice_gap_lt_n_add_k_of_sixtyfour_solution
    {k n m : ℕ} (hk : 11 ≤ k) (hm : m ≥ n + k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    2 * (m - n) < n + k := by
  obtain ⟨d, _hd, _hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  have hgap := twice_gap_lt_n_add_k_of_sixtyfour_gap_solution hk heq
  have hd_eq : m - n = d := by omega
  rwa [hd_eq]

/--
For any original-variable `N=64` quotient solution with `k≥15`, the exact
ratio window and `(4/3)^k>64` sharpen the gap bound to `3(m-n)<n+k`.
-/
theorem three_mul_gap_lt_n_add_k_of_sixtyfour_solution
    {k n m : ℕ} (hk : 15 ≤ k) (hm : m ≥ n + k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    3 * (m - n) < n + k := by
  obtain ⟨d, _hd, _hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  have hgap := three_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution hk heq
  have hd_eq : m - n = d := by omega
  rwa [hd_eq]

/--
For any original-variable `N=64` quotient solution with `k≥19`, the exact
ratio window and `(5/4)^k>64` sharpen the gap bound to `4(m-n)<n+k`.
-/
theorem four_mul_gap_lt_n_add_k_of_sixtyfour_solution
    {k n m : ℕ} (hk : 19 ≤ k) (hm : m ≥ n + k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    4 * (m - n) < n + k := by
  obtain ⟨d, _hd, _hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  have hgap := four_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution hk heq
  have hd_eq : m - n = d := by omega
  rwa [hd_eq]

/--
For any original-variable `N=64` quotient solution with `k≥23`, the exact
ratio window and `(6/5)^k>64` sharpen the gap bound to `5(m-n)<n+k`.
-/
theorem five_mul_gap_lt_n_add_k_of_sixtyfour_solution
    {k n m : ℕ} (hk : 23 ≤ k) (hm : m ≥ n + k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    5 * (m - n) < n + k := by
  obtain ⟨d, _hd, _hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  have hgap := five_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution hk heq
  have hd_eq : m - n = d := by omega
  rwa [hd_eq]

/--
For any original-variable `N=64` quotient solution with `k≥27`, the exact
ratio window and `(7/6)^k>64` sharpen the gap bound to `6(m-n)<n+k`.
-/
theorem six_mul_gap_lt_n_add_k_of_sixtyfour_solution
    {k n m : ℕ} (hk : 27 ≤ k) (hm : m ≥ n + k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    6 * (m - n) < n + k := by
  obtain ⟨d, _hd, _hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  have hgap := six_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution hk heq
  have hd_eq : m - n = d := by omega
  rwa [hd_eq]

/--
For any original-variable `N=64` quotient solution with `k≥32`, the exact
ratio window and `(8/7)^k>64` sharpen the gap bound to `7(m-n)<n+k`.
-/
theorem seven_mul_gap_lt_n_add_k_of_sixtyfour_solution
    {k n m : ℕ} (hk : 32 ≤ k) (hm : m ≥ n + k)
    (hq : (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    7 * (m - n) < n + k := by
  obtain ⟨d, _hd, _hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
  have hgap := seven_mul_gap_lt_n_add_k_of_sixtyfour_gap_solution hk heq
  have hd_eq : m - n = d := by omega
  rwa [hd_eq]

/--
If an odd prime divides a term in the shifted block of a hypothetical
`N=4` solution, then it divides one of the nearby differences `d+i-j`.
-/
lemma prime_dvd_right_block_transfers_four
    {p k n d i : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) (hd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (hdiv : p ∣ n + d + i) :
    ∃ j, j ∈ Finset.Icc 1 k ∧ p ∣ d + i - j := by
  have hprod_left : p ∣ blockProduct k (n + d) := by
    exact dvd_trans hdiv (by simpa [blockProduct] using
      (Finset.dvd_prod_of_mem (fun i => n + d + i) hi))
  have hprod_right_mul : p ∣ 4 * blockProduct k n := by
    simpa [heq] using hprod_left
  have hp_not_dvd_four : ¬ p ∣ 4 := odd_prime_not_dvd_four hp hpodd
  have hprod_right : p ∣ blockProduct k n := by
    have hm := (hp.dvd_mul).mp hprod_right_mul
    rcases hm with h4 | hright
    · exact (hp_not_dvd_four h4).elim
    · exact hright
  obtain ⟨j, hj, hjdiv⟩ := (prime_dvd_blockProduct_iff hp).mp hprod_right
  refine ⟨j, hj, ?_⟩
  have hdvd_diff : p ∣ (n + d + i) - (n + j) := Nat.dvd_sub hdiv hjdiv
  have hrewrite : (n + d + i) - (n + j) = d + i - j := by
    have hjle : j ≤ k := (Finset.mem_Icc.mp hj).2
    omega
  simpa [hrewrite] using hdvd_diff

/--
The same transfer in the other direction: an odd-prime divisor of a term in
the original block must divide one of the nearby differences.
-/
lemma prime_dvd_left_block_transfers_four
    {p k n d j : ℕ} (hp : p.Prime) (hd : k ≤ d)
    (hj : j ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (hdiv : p ∣ n + j) :
    ∃ i, i ∈ Finset.Icc 1 k ∧ p ∣ d + i - j := by
  have hprod_right : p ∣ blockProduct k n := by
    exact dvd_trans hdiv (by simpa [blockProduct] using
      (Finset.dvd_prod_of_mem (fun j => n + j) hj))
  have hprod_left : p ∣ blockProduct k (n + d) := by
    have hmul : p ∣ 4 * blockProduct k n := dvd_mul_of_dvd_right hprod_right 4
    simpa [heq] using hmul
  obtain ⟨i, hi, hidiv⟩ := (prime_dvd_blockProduct_iff hp).mp hprod_left
  refine ⟨i, hi, ?_⟩
  have hdvd_diff : p ∣ (n + d + i) - (n + j) := Nat.dvd_sub hidiv hdiv
  have hrewrite : (n + d + i) - (n + j) = d + i - j := by
    have hjle : j ≤ k := (Finset.mem_Icc.mp hj).2
    omega
  simpa [hrewrite] using hdvd_diff

lemma prime_dvd_right_block_dvd_shiftedDiffProduct_four
    {p k n d : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (hprod : p ∣ blockProduct k (n + d)) :
    p ∣ shiftedDiffProduct k d := by
  obtain ⟨i, hi, hidiv⟩ := (prime_dvd_blockProduct_iff hp).mp hprod
  obtain ⟨j, hj, hdiff⟩ := prime_dvd_right_block_transfers_four hp hpodd hd hi heq hidiv
  exact dvd_shiftedDiffProduct_of_term hi hj hdiff

lemma prime_dvd_left_block_dvd_shiftedDiffProduct_four
    {p k n d : ℕ} (hp : p.Prime) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (hprod : p ∣ blockProduct k n) :
    p ∣ shiftedDiffProduct k d := by
  obtain ⟨j, hj, hjdiv⟩ := (prime_dvd_blockProduct_iff hp).mp hprod
  obtain ⟨i, hi, hdiff⟩ := prime_dvd_left_block_transfers_four hp hd hj heq hjdiv
  exact dvd_shiftedDiffProduct_of_term hi hj hdiff

/--
Any odd prime divisor of either block in a hypothetical `N=4` solution must
divide the shifted difference product. This is the Lean-friendly prime-transfer
form of the resultant obstruction for the remaining `N=4`, `k≥5` attack.
-/
theorem odd_prime_factor_dvd_shiftedDiffProduct_four
    {p k n d : ℕ} (hp : p.Prime) (hpodd : p ≠ 2) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (hprod : p ∣ blockProduct k (n + d) * blockProduct k n) :
    p ∣ shiftedDiffProduct k d := by
  have hcases := (hp.dvd_mul).mp hprod
  rcases hcases with hleft | hright
  · exact prime_dvd_right_block_dvd_shiftedDiffProduct_four hp hpodd hd heq hleft
  · exact prime_dvd_left_block_dvd_shiftedDiffProduct_four hp hd heq hright

/--
Prime transfer stated directly from the original quotient form of an `N=4`
solution.
-/
theorem odd_prime_factor_dvd_shiftedDiffProduct_of_four_solution
    {p k n m : ℕ} (hp : p.Prime) (hpodd : p ≠ 2)
    (hm : m ≥ n + k)
    (hq : (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))))
    (hprod : p ∣ blockProduct k m * blockProduct k n) :
    ∃ d : ℕ, k ≤ d ∧ m = n + d ∧ p ∣ shiftedDiffProduct k d := by
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  refine ⟨d, hd, hmd, ?_⟩
  rw [hmd] at hprod
  exact odd_prime_factor_dvd_shiftedDiffProduct_four hp hpodd hd heq hprod

lemma lower_block_term_prime_le_difference_bound_four
    {p k n d i : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (hp : p.Prime) (hdiv : p ∣ n + i) :
    p ≤ d + k - 1 := by
  by_cases hpk : p ≤ k
  · omega
  · have hpodd : p ≠ 2 := by
      intro hp2
      rw [hp2] at hpk
      omega
    obtain ⟨j, hj, hdiff⟩ := prime_dvd_left_block_transfers_four hp hd hi heq hdiv
    have hdiff_pos : 0 < d + j - i := by
      have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
      have hj_ge : 1 ≤ j := (Finset.mem_Icc.mp hj).1
      omega
    have hdiff_le : d + j - i ≤ d + k - 1 := by
      have hj_le : j ≤ k := (Finset.mem_Icc.mp hj).2
      have hi_ge : 1 ≤ i := (Finset.mem_Icc.mp hi).1
      omega
    exact le_trans (Nat.le_of_dvd hdiff_pos hdiff) hdiff_le

lemma upper_block_term_prime_le_difference_bound_four
    {p k n d i : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n)
    (hp : p.Prime) (hdiv : p ∣ n + d + i) :
    p ≤ d + k - 1 := by
  by_cases hpk : p ≤ k
  · omega
  · have hpodd : p ≠ 2 := by
      intro hp2
      rw [hp2] at hpk
      omega
    obtain ⟨j, hj, hdiff⟩ := prime_dvd_right_block_transfers_four hp hpodd hd hi heq hdiv
    have hdiff_pos : 0 < d + i - j := by
      have hi_ge : 1 ≤ i := (Finset.mem_Icc.mp hi).1
      have hj_le : j ≤ k := (Finset.mem_Icc.mp hj).2
      omega
    have hdiff_le : d + i - j ≤ d + k - 1 := by
      have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
      have hj_ge : 1 ≤ j := (Finset.mem_Icc.mp hj).1
      omega
    exact le_trans (Nat.le_of_dvd hdiff_pos hdiff) hdiff_le

theorem smooth_lower_block_four
    {k n d i : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    SmoothUpTo (d + k - 1) (n + i) := by
  intro p hp hdiv
  exact lower_block_term_prime_le_difference_bound_four hk hd hi heq hp hdiv

theorem smooth_upper_block_four
    {k n d i : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (hi : i ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    SmoothUpTo (d + k - 1) (n + d + i) := by
  intro p hp hdiv
  exact upper_block_term_prime_le_difference_bound_four hk hd hi heq hp hdiv

/--
The reflection center forced by an `N=4`, `k≥5` block equality is also smooth
up to the same difference bound `d+k-1`.
-/
theorem smooth_reflection_number_four
    {k n d : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    SmoothUpTo (d + k - 1) (2 * n + d + k + 1) := by
  intro p hp hdivS
  let S := 2 * n + d + k + 1
  by_cases hkeven : Even k
  · have hSdvd : S ∣ 3 * blockProduct k n := by
      simpa [S] using reflection_even hkeven heq
    have hp_prod : p ∣ 3 * blockProduct k n :=
      dvd_trans (by simpa [S] using hdivS) hSdvd
    have hcases := (hp.dvd_mul).mp hp_prod
    rcases hcases with hp3 | hpblock
    · have hp_le3 : p ≤ 3 := Nat.le_of_dvd (by norm_num) hp3
      omega
    · obtain ⟨i, hi, hpi⟩ := (prime_dvd_blockProduct_iff hp).mp hpblock
      have hp_gcd : p ∣ Nat.gcd S (n + i) :=
        Nat.dvd_gcd (by simpa [S] using hdivS) hpi
      have hgcd := reflection_gcd_bound k n d i
      have hp_diff : p ∣ d + k + 1 - 2 * i :=
        dvd_trans hp_gcd (by simpa [S] using hgcd)
      have hdiff_pos : 0 < d + k + 1 - 2 * i := by
        have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
        omega
      have hdiff_le : d + k + 1 - 2 * i ≤ d + k - 1 := by
        have hi_ge : 1 ≤ i := (Finset.mem_Icc.mp hi).1
        omega
      exact le_trans (Nat.le_of_dvd hdiff_pos hp_diff) hdiff_le
  · have hkodd : Odd k := Nat.not_even_iff_odd.mp hkeven
    have hSdvd : S ∣ 5 * blockProduct k n := by
      simpa [S] using reflection_odd hkodd heq
    have hp_prod : p ∣ 5 * blockProduct k n :=
      dvd_trans (by simpa [S] using hdivS) hSdvd
    have hcases := (hp.dvd_mul).mp hp_prod
    rcases hcases with hp5 | hpblock
    · have hp_le5 : p ≤ 5 := Nat.le_of_dvd (by norm_num) hp5
      omega
    · obtain ⟨i, hi, hpi⟩ := (prime_dvd_blockProduct_iff hp).mp hpblock
      have hp_gcd : p ∣ Nat.gcd S (n + i) :=
        Nat.dvd_gcd (by simpa [S] using hdivS) hpi
      have hgcd := reflection_gcd_bound k n d i
      have hp_diff : p ∣ d + k + 1 - 2 * i :=
        dvd_trans hp_gcd (by simpa [S] using hgcd)
      have hdiff_pos : 0 < d + k + 1 - 2 * i := by
        have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
        omega
      have hdiff_le : d + k + 1 - 2 * i ≤ d + k - 1 := by
        have hi_ge : 1 ≤ i := (Finset.mem_Icc.mp hi).1
        omega
      exact le_trans (Nat.le_of_dvd hdiff_pos hp_diff) hdiff_le

/--
Theorem A reduction for the remaining `N=4`, `k≥5` case: any gap-form
solution forces the difference block below `n`, and every term in both
solution blocks has no prime factor larger than `d+k-1`.
-/
theorem smooth_blocks_of_four_gap_solution
    {k n d : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    d + k - 1 < n ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + i)) ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + d + i)) := by
  exact ⟨difference_block_below_n_of_four_solution hk hd heq,
    (by intro i hi; exact smooth_lower_block_four hk hd hi heq),
    (by intro i hi; exact smooth_upper_block_four hk hd hi heq)⟩

/--
Strengthened smoothness reduction: the two solution blocks and the reflected
center `2n+d+k+1` are all smooth up to `d+k-1`.
-/
theorem smooth_blocks_and_reflection_of_four_gap_solution
    {k n d : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    d + k - 1 < n ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + i)) ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + d + i)) ∧
      SmoothUpTo (d + k - 1) (2 * n + d + k + 1) := by
  exact ⟨difference_block_below_n_of_four_solution hk hd heq,
    (by intro i hi; exact smooth_lower_block_four hk hd hi heq),
    (by intro i hi; exact smooth_upper_block_four hk hd hi heq),
    smooth_reflection_number_four hk hd heq⟩

/--
The same smoothness reduction stated directly from the original quotient form
of an `N=4` solution.
-/
theorem smooth_blocks_of_four_solution
    {k n m : ℕ} (hk : 5 ≤ k) (hm : m ≥ n + k)
    (hq : (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    ∃ d : ℕ,
      k ≤ d ∧ m = n + d ∧ d + k - 1 < n ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + i)) ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + d + i)) := by
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  obtain ⟨hbelow, hlower, hupper⟩ := smooth_blocks_of_four_gap_solution hk hd heq
  exact ⟨d, hd, hmd, hbelow, hlower, hupper⟩

/--
The strengthened smoothness reduction in the original quotient variables.
-/
theorem smooth_blocks_and_reflection_of_four_solution
    {k n m : ℕ} (hk : 5 ≤ k) (hm : m ≥ n + k)
    (hq : (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ)))) :
    ∃ d : ℕ,
      k ≤ d ∧ m = n + d ∧ d + k - 1 < n ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + i)) ∧
      (∀ i, i ∈ Finset.Icc 1 k → SmoothUpTo (d + k - 1) (n + d + i)) ∧
      SmoothUpTo (d + k - 1) (2 * n + d + k + 1) := by
  obtain ⟨d, hd, hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
  obtain ⟨hbelow, hlower, hupper, hreflection⟩ :=
    smooth_blocks_and_reflection_of_four_gap_solution hk hd heq
  exact ⟨d, hd, hmd, hbelow, hlower, hupper, hreflection⟩

/--
Cleared integer form of the $k=2$, $N=4$ variant. This elementary case is
also used below to rule out the $k=4$ case.
-/
theorem no_solution_four_two_cleared :
    ¬ ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (m + 1) * (m + 2) = 4 * ((n + 1) * (n + 2)) := by
  rintro ⟨n, m, hm, heq⟩
  by_cases hm_lt : m < 2 * (n + 1) <;> nlinarith

/--
The $k=2$, $N=4$ variant in quotient form: there are no natural numbers
$n,m$ with $m\geq n+2$ and
$$4=\frac{(m+1)(m+2)}{(n+1)(n+2)}.$$
-/
theorem no_solution_four_two :
    ¬ ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hq⟩
  apply no_solution_four_two_cleared
  refine ⟨n, m, hm, ?_⟩
  have hden_ne :
      (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) ≠ 0 := by
    apply ne_of_gt
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    positivity
  rw [eq_comm, div_eq_iff hden_ne] at hq
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton] at hq
  exact_mod_cast hq

private theorem no_solution_square_five_two :
    ¬ ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((5 ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  intro h
  obtain ⟨n, m, u, v, _hgap, _hu_pos, _huv, hprod, hsum, _hdiff⟩ :=
    (square_k_two_representable_iff_factor_pair_data 5 (by norm_num)).mp h
  norm_num at hprod hsum
  have hu_dvd : u ∣ 24 := ⟨v, by simpa using hprod.symm⟩
  have hv_dvd : v ∣ 24 := ⟨u, by simpa [mul_comm] using hprod.symm⟩
  have hu_le : u ≤ 24 := Nat.le_of_dvd (by norm_num : 0 < 24) hu_dvd
  have hv_le : v ≤ 24 := Nat.le_of_dvd (by norm_num : 0 < 24) hv_dvd
  interval_cases u <;> interval_cases v <;> omega

private theorem no_solution_square_seven_two :
    ¬ ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((7 ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  intro h
  obtain ⟨n, m, u, v, _hgap, _hu_pos, _huv, hprod, hsum, _hdiff⟩ :=
    (square_k_two_representable_iff_factor_pair_data 7 (by norm_num)).mp h
  norm_num at hprod hsum
  have hu_dvd : u ∣ 48 := ⟨v, by simpa using hprod.symm⟩
  have hv_dvd : v ∣ 48 := ⟨u, by simpa [mul_comm] using hprod.symm⟩
  have hu_le : u ≤ 48 := Nat.le_of_dvd (by norm_num : 0 < 48) hu_dvd
  have hv_le : v ≤ 48 := Nat.le_of_dvd (by norm_num : 0 < 48) hv_dvd
  interval_cases u <;> interval_cases v <;> omega

private theorem no_solution_square_eight_two :
    ¬ ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((8 ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  intro h
  obtain ⟨n, m, u, v, _hgap, _hu_pos, _huv, hprod, hsum, _hdiff⟩ :=
    (square_k_two_representable_iff_factor_pair_data 8 (by norm_num)).mp h
  norm_num at hprod hsum
  have hu_dvd : u ∣ 63 := ⟨v, by simpa using hprod.symm⟩
  have hv_dvd : v ∣ 63 := ⟨u, by simpa [mul_comm] using hprod.symm⟩
  have hu_le : u ≤ 63 := Nat.le_of_dvd (by norm_num : 0 < 63) hu_dvd
  have hv_le : v ≤ 63 := Nat.le_of_dvd (by norm_num : 0 < 63) hv_dvd
  interval_cases u <;> interval_cases v <;> omega

private theorem no_solution_square_nine_two :
    ¬ ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((9 ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  intro h
  obtain ⟨n, m, u, v, _hgap, _hu_pos, _huv, hprod, hsum, _hdiff⟩ :=
    (square_k_two_representable_iff_factor_pair_data 9 (by norm_num)).mp h
  norm_num at hprod hsum
  have hu_dvd : u ∣ 80 := ⟨v, by simpa using hprod.symm⟩
  have hv_dvd : v ∣ 80 := ⟨u, by simpa [mul_comm] using hprod.symm⟩
  have hu_le : u ≤ 80 := Nat.le_of_dvd (by norm_num : 0 < 80) hu_dvd
  have hv_le : v ≤ 80 := Nat.le_of_dvd (by norm_num : 0 < 80) hv_dvd
  interval_cases u <;> interval_cases v <;> omega

/--
The five first unresolved square roots have no `k=2` quotient representation.
The proof is a finite factor-pair obstruction for `a^2 - 1`, with the
`a=2` case supplied by the earlier direct `N=4` proof.
-/
theorem no_solution_holdout_square_two
    {a : ℕ} (ha : a = 2 ∨ a = 5 ∨ a = 7 ∨ a = 8 ∨ a = 9) :
    ¬ ∃ n m : ℕ,
      m ≥ n + 2 ∧
      (((a ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 2, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n + i : ℕ) : ℚ))) := by
  rcases ha with rfl | rfl | rfl | rfl | rfl
  · simpa using no_solution_four_two
  · exact no_solution_square_five_two
  · exact no_solution_square_seven_two
  · exact no_solution_square_eight_two
  · exact no_solution_square_nine_two

private lemma even_prod_succ_one_succ_four (x : ℕ) :
    2 ∣ (x + 1) * (x + 4) := by
  rcases Nat.even_or_odd x with ⟨t, ht⟩ | ⟨t, ht⟩
  · use (x + 1) * (t + 2)
    rw [ht]
    ring
  · use (t + 1) * (x + 4)
    rw [ht]
    ring

private lemma two_le_prod_succ_one_succ_four (x : ℕ) :
    2 ≤ (x + 1) * (x + 4) := by
  nlinarith [show 1 ≤ x + 1 by omega, show 2 ≤ x + 4 by omega]

/--
Four consecutive factors can be folded into a doubled pair of consecutive
integers:
`(x+1)(x+2)(x+3)(x+4) = 4 A(A+1)` for
`A = ((x+1)(x+4))/2`.
-/
private lemma four_block_to_two_block_data (x : ℕ) :
    ∃ A : ℕ,
      0 < A ∧
      (x + 1) * (x + 4) = 2 * A ∧
      (x + 2) * (x + 3) = 2 * (A + 1) := by
  let A := ((x + 1) * (x + 4)) / 2
  refine ⟨A, ?_, ?_, ?_⟩
  · dsimp [A]
    exact Nat.div_pos (two_le_prod_succ_one_succ_four x) (by norm_num)
  · dsimp [A]
    have hdiv := Nat.div_mul_cancel (even_prod_succ_one_succ_four x)
    omega
  · dsimp [A]
    have hdiv := Nat.div_mul_cancel (even_prod_succ_one_succ_four x)
    nlinarith

private lemma blockProduct_four_eq_two_from_data
    (x A : ℕ) (hApos : 0 < A)
    (hA1 : (x + 1) * (x + 4) = 2 * A)
    (_hA2 : (x + 2) * (x + 3) = 2 * (A + 1)) :
    blockProduct 4 x = 4 * blockProduct 2 (A - 1) := by
  have hA_sub1 : A - 1 + 1 = A := by omega
  have hA_sub2 : A - 1 + 2 = A + 1 := by omega
  norm_num [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
  rw [hA_sub1, hA_sub2]
  nlinarith

/--
Every block of four consecutive factors is four times a block of two
consecutive factors.
-/
lemma blockProduct_four_folds_to_two (x : ℕ) :
    ∃ y : ℕ, blockProduct 4 x = 4 * blockProduct 2 y := by
  obtain ⟨A, hApos, hA1, hA2⟩ := four_block_to_two_block_data x
  exact ⟨A - 1, blockProduct_four_eq_two_from_data x A hApos hA1 hA2⟩

/--
A cleared `k=4` block-product representation gives a cleared `k=2`
representation with the same multiplier.
-/
lemma k_four_blockProduct_solution_to_k_two
    {N n m : ℕ} (hm : m ≥ n + 4)
    (heq : blockProduct 4 m = N * blockProduct 4 n) :
    ∃ n' m' : ℕ,
      m' ≥ n' + 2 ∧ blockProduct 2 m' = N * blockProduct 2 n' := by
  obtain ⟨An, hAnpos, hAn1, hAn2⟩ := four_block_to_two_block_data n
  obtain ⟨Am, hAmpos, hAm1, hAm2⟩ := four_block_to_two_block_data m
  have hAm_ge : Am ≥ An + 2 := by
    nlinarith
  refine ⟨An - 1, Am - 1, by omega, ?_⟩
  have hmfold := blockProduct_four_eq_two_from_data m Am hAmpos hAm1 hAm2
  have hnfold := blockProduct_four_eq_two_from_data n An hAnpos hAn1 hAn2
  rw [hmfold, hnfold] at heq
  have hright :
      N * (4 * blockProduct 2 (An - 1)) = 4 * (N * blockProduct 2 (An - 1)) := by
    ring
  rw [hright] at heq
  exact Nat.mul_left_cancel (by norm_num : 0 < 4) heq

lemma k_four_quotient_solution_to_k_two
    {N n m : ℕ} (hm : m ≥ n + 4)
    (hq : (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 4, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 4, (((n + i : ℕ) : ℚ)))) :
    ∃ n' m' : ℕ,
      m' ≥ n' + 2 ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 2, (((m' + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 2, (((n' + i : ℕ) : ℚ))) := by
  have heq := (quotient_eq_iff_blockProduct_eq N 4 n m).mp hq
  obtain ⟨n', m', hgap, hblock⟩ := k_four_blockProduct_solution_to_k_two hm heq
  exact ⟨n', m', hgap, (quotient_eq_iff_blockProduct_eq N 2 n' m').mpr hblock⟩

/--
The five first unresolved square roots have no `k=4` quotient representation:
any such solution folds to a forbidden `k=2` representation of the same square.
-/
theorem no_solution_holdout_square_four
    {a : ℕ} (ha : a = 2 ∨ a = 5 ∨ a = 7 ∨ a = 8 ∨ a = 9) :
    ¬ ∃ n m : ℕ,
      m ≥ n + 4 ∧
      (((a ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 4, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 4, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hq⟩
  obtain ⟨n', m', hgap, hq2⟩ :=
    k_four_quotient_solution_to_k_two (N := a ^ 2) hm hq
  exact no_solution_holdout_square_two ha ⟨n', m', hgap, hq2⟩

/--
For the five first unresolved square roots `a ∈ {2,5,7,8,9}`, the `k=2` and
`k=4` constructive lanes are both impossible.
-/
theorem no_solution_holdout_square_two_or_four
    {a k : ℕ} (ha : a = 2 ∨ a = 5 ∨ a = 7 ∨ a = 8 ∨ a = 9)
    (hk : k = 2 ∨ k = 4) :
    ¬ ∃ n m : ℕ,
      m ≥ n + k ∧
      (((a ^ 2 : ℕ) : ℚ)) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hk with rfl | rfl
  · simpa using no_solution_holdout_square_two ha
  · simpa using no_solution_holdout_square_four ha

private lemma sixtyfour_three_nonneg_branch_pos
    (K r : ℤ) (hK : 2 ≤ K) (hr : 0 ≤ r) :
    0 < r ^ 3 + 12 * K * r ^ 2 + 48 * K ^ 2 * r + 60 * K - r := by
  by_cases hr0 : r = 0
  · subst r
    nlinarith
  · have hr1 : 1 ≤ r := by omega
    nlinarith [sq_nonneg r, sq_nonneg (r - 1), sq_nonneg K]

private lemma sixtyfour_three_negative_branch_neg
    (K h : ℤ) (hK : 2 ≤ K) (hh1 : 1 ≤ h) (hh3 : h ≤ 3 * K - 3) :
    -48 * K ^ 2 * h + 12 * K * h ^ 2 + 60 * K - h ^ 3 + h < 0 := by
  nlinarith [sq_nonneg (h - 4 * K), sq_nonneg (h - 1), sq_nonneg (3 * K - 3 - h)]

/--
The square `N=64` has no `k=3` quotient representation.  Writing
`K=n+2`, `M=m+2`, the equation is `M^3-M = 64(K^3-K)`.  Comparing the two
integer branches around `M=4K` gives opposite signs for
`M^3-M-64(K^3-K)`.
-/
theorem no_solution_sixtyfour_three :
    ¬ ∃ n m : ℕ,
      m ≥ n + 3 ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 3, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 3, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hgap, hq⟩
  let K : ℤ := n + 2
  let M : ℤ := m + 2
  have hK : 2 ≤ K := by
    dsimp [K]
    omega
  have hgapz : K + 3 ≤ M := by
    dsimp [K, M]
    omega
  have hblock := (quotient_eq_iff_blockProduct_eq 64 3 n m).mp hq
  have heq : M ^ 3 - M = 64 * (K ^ 3 - K) := by
    have hblockz : (((m + 1) * (m + 2) * (m + 3) : ℕ) : ℤ) =
        64 * (((n + 1) * (n + 2) * (n + 3) : ℕ) : ℤ) := by
      norm_num [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self,
        Finset.prod_singleton] at hblock
      exact_mod_cast hblock
    dsimp [M, K]
    norm_num [Nat.cast_mul, Nat.cast_add, Nat.cast_pow] at hblockz ⊢
    nlinarith
  have hzero : M ^ 3 - M - 64 * (K ^ 3 - K) = 0 := by linarith
  by_cases hge : 4 * K ≤ M
  · let r : ℤ := M - 4 * K
    have hr : 0 ≤ r := by
      dsimp [r]
      linarith
    have hM : M = 4 * K + r := by
      dsimp [r]
      ring
    have hdiff :
        M ^ 3 - M - 64 * (K ^ 3 - K) =
          r ^ 3 + 12 * K * r ^ 2 + 48 * K ^ 2 * r + 60 * K - r := by
      rw [hM]
      ring
    have hpos := sixtyfour_three_nonneg_branch_pos K r hK hr
    linarith
  · let h : ℤ := 4 * K - M
    have hh1 : 1 ≤ h := by
      dsimp [h]
      omega
    have hh3 : h ≤ 3 * K - 3 := by
      dsimp [h]
      linarith
    have hM : M = 4 * K - h := by
      dsimp [h]
      ring
    have hdiff :
        M ^ 3 - M - 64 * (K ^ 3 - K) =
          -48 * K ^ 2 * h + 12 * K * h ^ 2 + 60 * K - h ^ 3 + h := by
      rw [hM]
      ring
    have hneg := sixtyfour_three_negative_branch_neg K h hK hh1 hh3
    linarith

private lemma blockProduct_six_twice_three_lt_64 (n : ℕ) (hn : 3 ≤ n) :
    blockProduct 6 (2 * n + 3) < 64 * blockProduct 6 n := by
  apply (Nat.cast_lt (α := ℤ)).mp
  norm_num [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton,
    Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
  have hnz : (3 : ℤ) ≤ n := by exact_mod_cast hn
  let z : ℤ := n
  have hdiff :
      64 * ((z + 1) * (z + 2) * (z + 3) * (z + 4) * (z + 5) * (z + 6)) -
        ((2 * z + 3 + 1) * (2 * z + 3 + 2) * (2 * z + 3 + 3) *
          (2 * z + 3 + 4) * (2 * z + 3 + 5) * (2 * z + 3 + 6)) =
        24 * (z + 2) * (z + 3) * (z + 4) * (4 * z ^ 2 + 14 * z - 25) := by
    ring
  have hpos : 0 < 24 * (z + 2) * (z + 3) * (z + 4) * (4 * z ^ 2 + 14 * z - 25) := by
    have hz : 3 ≤ z := by simpa [z] using hnz
    have hlast : 0 < 4 * z ^ 2 + 14 * z - 25 := by nlinarith [sq_nonneg z]
    positivity
  dsimp [z] at hdiff hpos
  linarith

private lemma sixtyfour_lt_blockProduct_six_twice_four (n : ℕ) :
    64 * blockProduct 6 n < blockProduct 6 (2 * n + 4) := by
  apply (Nat.cast_lt (α := ℤ)).mp
  norm_num [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton,
    Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
  let z : ℤ := n
  have hdiff :
      ((2 * z + 4 + 1) * (2 * z + 4 + 2) * (2 * z + 4 + 3) *
          (2 * z + 4 + 4) * (2 * z + 4 + 5) * (2 * z + 4 + 6)) -
        64 * ((z + 1) * (z + 2) * (z + 3) * (z + 4) * (z + 5) * (z + 6)) =
        24 * (z + 3) * (z + 4) * (z + 5) * (4 * z ^ 2 + 42 * z + 73) := by
    ring
  have hpos : 0 < 24 * (z + 3) * (z + 4) * (z + 5) * (4 * z ^ 2 + 42 * z + 73) := by
    have hz0 : 0 ≤ z := by
      dsimp [z]
      exact_mod_cast Nat.zero_le n
    have hlast : 0 < 4 * z ^ 2 + 42 * z + 73 := by nlinarith [sq_nonneg z]
    positivity
  dsimp [z] at hdiff hpos
  linarith

/--
The square `N=64` has no `k=6` quotient representation.  Splitting on whether
`m ≤ 2n+3` or `m ≥ 2n+4`, monotonicity of six-term blocks puts the numerator
strictly below or strictly above `64 * blockProduct 6 n`.
-/
theorem no_solution_sixtyfour_six :
    ¬ ∃ n m : ℕ,
      m ≥ n + 6 ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 6, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 6, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hgap, hq⟩
  have hblock := (quotient_eq_iff_blockProduct_eq 64 6 n m).mp hq
  by_cases hle : m ≤ 2 * n + 3
  · have hn3 : 3 ≤ n := by omega
    have hmono := blockProduct_mono 6 m (2 * n + 3) hle
    have hend := blockProduct_six_twice_three_lt_64 n hn3
    omega
  · have hge : 2 * n + 4 ≤ m := by omega
    have hmono := blockProduct_mono 6 (2 * n + 4) m hge
    have hend := sixtyfour_lt_blockProduct_six_twice_four n
    omega

private lemma eightMain_mod_eight (x : ℕ) :
    eightMain x % 8 = 4 := by
  let q := x / 8
  let r := x % 8
  have hr : r < 8 := by
    dsimp [r]
    exact Nat.mod_lt x (by norm_num)
  have hx : x = 8 * q + r := by
    dsimp [q, r]
    have hdiv := Nat.div_add_mod x 8
    omega
  interval_cases r <;> rw [hx] <;>
    norm_num [eightMain, eightBlockPair, Nat.add_mod, Nat.mul_mod, Nat.pow_mod]

private lemma int_abs_ge_four_of_emod_eq_four {z : ℤ} (hz : z % 8 = 4) :
    (4 : ℤ) ≤ |z| := by
  by_contra h
  have hzrange : -3 ≤ z ∧ z ≤ 3 := by
    rw [not_le] at h
    rw [abs_lt] at h
    omega
  have hlow : -3 ≤ z := hzrange.1
  have hhigh : z ≤ 3 := hzrange.2
  interval_cases z <;> norm_num at hz

private lemma eightMain_diff_abs_ge_four (n m : ℕ) :
    (4 : ℤ) ≤ |(eightMain m : ℤ) - 8 * (eightMain n : ℤ)| := by
  apply int_abs_ge_four_of_emod_eq_four
  have hm := eightMain_mod_eight m
  omega

private lemma sixtyfour_eight_edge_abs_lt_main_sum
    (n m : ℕ) (hgap : m ≥ n + 8) :
    |((eightEdge m : ℤ)^2 - 64 * (eightEdge n : ℤ)^2)|
      < 4 * ((eightMain m : ℤ) + 8 * (eightMain n : ℤ)) := by
  let e : ℤ := (m : ℤ) - (n : ℤ) - 8
  have he : 0 ≤ e := by
    dsimp [e]
    omega
  have hm : (m : ℤ) = (n : ℤ) + e + 8 := by
    dsimp [e]
    ring
  rw [abs_lt]
  constructor
  · simp only [eightBlockPair, eightMain, eightEdge,
      Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
    rw [hm]
    ring_nf
    have hn : (0 : ℤ) ≤ n := by exact_mod_cast Nat.zero_le n
    have hpos : (0 : ℤ) <
        24704 + (n : ℤ) * 3576 + (n : ℤ) * e * 7544 +
          (n : ℤ) * e ^ 2 * 600 + (n : ℤ) * e ^ 3 * 16 +
          (n : ℤ) ^ 2 * 3228 + (n : ℤ) ^ 2 * e * 600 +
          (n : ℤ) ^ 2 * e ^ 2 * 24 + (n : ℤ) ^ 3 * 776 +
          (n : ℤ) ^ 3 * e * 16 + (n : ℤ) ^ 4 * 36 +
          e * 31800 + e ^ 2 * 3772 + e ^ 3 * 200 + e ^ 4 * 4 := by
      positivity
    nlinarith
  · simp only [eightBlockPair, eightMain, eightEdge,
      Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
    rw [hm]
    ring_nf
    have hn : (0 : ℤ) ≤ n := by exact_mod_cast Nat.zero_le n
    have hpos : (0 : ℤ) <
        170592 + (n : ℤ) * 74104 + (n : ℤ) * e * 7288 +
          (n : ℤ) * e ^ 2 * 600 + (n : ℤ) * e ^ 3 * 16 +
          (n : ℤ) ^ 2 * 11292 + (n : ℤ) ^ 2 * e * 600 +
          (n : ℤ) ^ 2 * e ^ 2 * 24 + (n : ℤ) ^ 3 * 776 +
          (n : ℤ) ^ 3 * e * 16 + (n : ℤ) ^ 4 * 36 +
          e * 28600 + e ^ 2 * 3644 + e ^ 3 * 200 + e ^ 4 * 4 := by
      positivity
    nlinarith

/--
The square `N=64` has no `k=8` quotient representation.  The proof uses the
length-eight split `P_8(x)=A(x)^2-B(x)^2`.  A hypothetical solution gives
`(A(m)-8A(n))(A(m)+8A(n)) = B(m)^2-64B(n)^2`; the first factor is congruent
to `4 mod 8`, while the right side is too small in absolute value once
`m ≥ n+8`.
-/
theorem no_solution_sixtyfour_eight :
    ¬ ∃ n m : ℕ,
      m ≥ n + 8 ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 8, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 8, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hgap, hq⟩
  have hblock := (quotient_eq_iff_blockProduct_eq 64 8 n m).mp hq
  have hblockz : ((blockProduct 8 m : ℕ) : ℤ) =
      64 * ((blockProduct 8 n : ℕ) : ℤ) := by
    exact_mod_cast hblock
  rw [blockProduct_eight_eq_main_sq_sub_edge_sq m,
    blockProduct_eight_eq_main_sq_sub_edge_sq n] at hblockz
  let D : ℤ := (eightMain m : ℤ) - 8 * (eightMain n : ℤ)
  let S : ℤ := (eightMain m : ℤ) + 8 * (eightMain n : ℤ)
  let R : ℤ := (eightEdge m : ℤ)^2 - 64 * (eightEdge n : ℤ)^2
  have hDS : D * S = R := by
    dsimp [D, S, R]
    nlinarith
  have hD : (4 : ℤ) ≤ |D| := by
    dsimp [D]
    exact eightMain_diff_abs_ge_four n m
  have hSpos : 0 < S := by
    dsimp [S]
    have hmpos_nat : 0 < eightMain m := by
      unfold eightMain eightBlockPair
      positivity
    have hmpos : (0 : ℤ) < (eightMain m : ℤ) := by exact_mod_cast hmpos_nat
    have hnnonneg : (0 : ℤ) ≤ (eightMain n : ℤ) := by exact_mod_cast Nat.zero_le _
    nlinarith
  have hRlt : |R| < 4 * S := by
    dsimp [R, S]
    exact sixtyfour_eight_edge_abs_lt_main_sum n m hgap
  have hge : 4 * S ≤ |R| := by
    calc
      4 * S ≤ |D| * S := by nlinarith
      _ = |D * S| := by
        rw [abs_mul]
        have hSabs : |S| = S := abs_of_pos hSpos
        rw [hSabs]
      _ = |R| := by rw [hDS]
  nlinarith

def sixteenF (z : ℤ) : ℤ :=
  (z - 1) * (z - 9) * (z - 25) * (z - 49) *
  (z - 81) * (z - 121) * (z - 169) * (z - 225)

def sixteenR (W V : ℤ) : ℤ :=
  V^4 - 340*V^3 + 31926*V^2 - 862580*V
  - 8*W^4 + 2720*W^3 - 255408*W^2
  + 6900640*W + 15170953

def sixteenQ (W V : ℤ) : ℤ :=
  V^4 - 340*V^3 + 31926*V^2 - 862580*V
  + 8*W^4 - 2720*W^3 + 255408*W^2
  - 6900640*W - 19505511

def sixteenL (W V : ℤ) : ℤ :=
  255*V^3 - 33439*V^2 + 1034705*V
  - 16320*W^3 + 2140096*W^2
  - 66221120*W - 4418001

def sixteenH (W V : ℤ) : ℤ :=
  sixteenQ W V + 512 * sixteenL W V

def sixteenLQ (W V : ℚ) : ℚ :=
  255*V^3 - 33439*V^2 + 1034705*V
  - 16320*W^3 + 2140096*W^2
  - 66221120*W - 4418001

def sixteenQQ (W V : ℚ) : ℚ :=
  V^4 - 340*V^3 + 31926*V^2 - 862580*V
  + 8*W^4 - 2720*W^3 + 255408*W^2
  - 6900640*W - 19505511

def sixteenHQ (W V : ℚ) : ℚ :=
  sixteenQQ W V + 512 * sixteenLQ W V

lemma blockProduct_sixteen_center (n : ℕ) :
  (2 ^ 16 : ℤ) * (blockProduct 16 n : ℤ)
    = sixteenF ((2 * (n : ℤ) + 17)^2) := by
  norm_num [blockProduct, sixteenF, Finset.prod_Icc_succ_top, Finset.Icc_self,
    Finset.prod_singleton, Nat.cast_mul, Nat.cast_add, Nat.cast_pow]
  ring

lemma sixteen_runge_identity (W V : ℤ) :
  sixteenF V - 64 * sixteenF W
    = sixteenR W V * sixteenQ W V - (2 ^ 23 : ℤ) * sixteenL W V := by
  simp only [sixteenF, sixteenR, sixteenQ, sixteenL]
  ring_nf

private lemma sixteen_bpoly_dvd_four (B : ℤ) :
    4 ∣ (-B^4 + 42*B^3 - 483*B^2 + 1562*B) := by
  let q := B / 4
  let r := B % 4
  have hr0 : 0 ≤ r := by
    dsimp [r]
    exact Int.emod_nonneg B (by norm_num)
  have hr4 : r < 4 := by
    dsimp [r]
    exact Int.emod_lt_of_pos B (by norm_num)
  have hB : B = 4 * q + r := by
    dsimp [q, r]
    have h := Int.mul_ediv_add_emod B 4
    omega
  interval_cases r
  · use -64*q^4 + 672*q^3 - 1932*q^2 + 1562*q
    rw [hB]
    ring
  · use -64*q^4 + 608*q^3 - 1452*q^2 + 718*q + 280
    rw [hB]
    ring
  · use -64*q^4 + 544*q^3 - 1020*q^2 + 102*q + 378
    rw [hB]
    ring
  · use -64*q^4 + 480*q^3 - 636*q^2 - 310*q + 348
    rw [hB]
    ring

lemma sixteenR_mod8_dvd (A B : ℤ) :
    ∃ t : ℤ, sixteenR (8*A + 1) (8*B + 1) = (2 ^ 14 : ℤ) * t := by
  let P : ℤ :=
    8*A^4 - 336*A^3 + 3864*A^2 - 12496*A
      - B^4 + 42*B^3 - 483*B^2 + 1562*B - 5124
  have hR : sixteenR (8*A + 1) (8*B + 1) = -4096 * P := by
    dsimp [P]
    simp only [sixteenR]
    ring_nf
  have hA : 4 ∣ 8*A^4 - 336*A^3 + 3864*A^2 - 12496*A := by
    use 2*A^4 - 84*A^3 + 966*A^2 - 3124*A
    ring
  have hB0 : 4 ∣ -B^4 + 42*B^3 - 483*B^2 + 1562*B :=
    sixteen_bpoly_dvd_four B
  have hB : 4 ∣ -B^4 + 42*B^3 - 483*B^2 + 1562*B - 5124 := by
    have hc : 4 ∣ (-5124 : ℤ) := by norm_num
    exact dvd_add hB0 hc
  have hP : 4 ∣ P := by
    dsimp [P]
    have hsum : 4 ∣
        (8*A^4 - 336*A^3 + 3864*A^2 - 12496*A) +
          (-B^4 + 42*B^3 - 483*B^2 + 1562*B - 5124) :=
      dvd_add hA hB
    convert hsum using 1
    ring
  obtain ⟨c, hc⟩ := hP
  use -c
  rw [hR, hc]
  norm_num
  ring

lemma odd_square_eq_eight_mul_add_one (a : ℤ) :
    ∃ A : ℤ, (2*a + 1)^2 = 8*A + 1 := by
  let q := a / 2
  let r := a % 2
  have hr0 : 0 ≤ r := by
    dsimp [r]
    exact Int.emod_nonneg a (by norm_num)
  have hr2 : r < 2 := by
    dsimp [r]
    exact Int.emod_lt_of_pos a (by norm_num)
  have ha : a = 2 * q + r := by
    dsimp [q, r]
    have h := Int.mul_ediv_add_emod a 2
    omega
  interval_cases r
  · use 2*q^2 + q
    rw [ha]
    ring
  · use 2*q^2 + 3*q + 1
    rw [ha]
    ring

lemma sixteenR_sq_odd_dvd (a b : ℤ) :
    ∃ t : ℤ, sixteenR ((2*a+1)^2) ((2*b+1)^2) = (2 ^ 14 : ℤ) * t := by
  obtain ⟨A, hA⟩ := odd_square_eq_eight_mul_add_one a
  obtain ⟨B, hB⟩ := odd_square_eq_eight_mul_add_one b
  rw [hA, hB]
  exact sixteenR_mod8_dvd A B

private lemma phi16_minus_neg {W : ℤ} (hW : 494209 ≤ W) :
    (5*W - 3) * (5*W - 27) * (5*W - 75) * (5*W - 147) *
        (5*W - 243) * (5*W - 363) * (5*W - 507) * (5*W - 675)
      < 64 * (3 ^ 8) * sixteenF W := by
  let t : ℤ := W - 494209
  have ht : 0 ≤ t := by dsimp [t]; omega
  have hW' : W = t + 494209 := by dsimp [t]; ring
  rw [hW']
  norm_num [sixteenF]
  ring_nf
  have hpos : (0 : ℤ) <
      29279*t^8 + 115633402768*t^7 + 199796566895456720*t^6 +
        197266927133851208851648*t^5 +
        121730707274621869158094170272*t^4 +
        48075695382415702304795404684089088*t^3 +
        11866717681063121077105112781908461241600*t^2 +
        1673775417381824692066116044766219659767936000*t +
        103285987129567135618746941028264203688103866617600 := by
    positivity
  nlinarith

private lemma phi16_plus_pos {W : ℤ} (hW : 494209 ≤ W) :
    64 * (10 ^ 8) * sixteenF W <
      (17*W - 10) * (17*W - 90) * (17*W - 250) * (17*W - 490) *
        (17*W - 810) * (17*W - 1210) * (17*W - 1690) * (17*W - 2250) := by
  let t : ℤ := W - 494209
  have ht : 0 ≤ t := by dsimp [t]; omega
  have hW' : W = t + 494209 := by dsimp [t]; ring
  rw [hW']
  norm_num [sixteenF]
  ring_nf
  have hpos : (0 : ℤ) <
      575757441*t^8 + 2277917770296952*t^7 +
        3942886722888282610588*t^6 +
        3899888824759092025507507784*t^5 +
        2410848326088937173179088559568070*t^4 +
        953821796580569901362958162632828104*t^3 +
        235854590298806060865045206947342137257626268*t^2 +
        33325992648454262850563279481439694442468129850232*t +
        2060153746669178421756552685213370956751579093888354561 := by
    positivity
  nlinarith

private lemma sixteen_branch_lower
    {W V : ℤ} (hW : 494209 ≤ W) (hV : 225 < V)
    (hFV : sixteenF V = 64 * sixteenF W) :
    5 * W < 3 * V := by
  by_contra hnot
  have hle : 3 * V ≤ 5 * W := by omega
  have hprod_le :
      (3 ^ 8) * sixteenF V ≤
        (5*W - 3) * (5*W - 27) * (5*W - 75) * (5*W - 147) *
          (5*W - 243) * (5*W - 363) * (5*W - 507) * (5*W - 675) := by
    have h1 : 3 * (V - 1) ≤ 5 * W - 3 := by nlinarith
    have h2 : 3 * (V - 9) ≤ 5 * W - 27 := by nlinarith
    have h3 : 3 * (V - 25) ≤ 5 * W - 75 := by nlinarith
    have h4 : 3 * (V - 49) ≤ 5 * W - 147 := by nlinarith
    have h5 : 3 * (V - 81) ≤ 5 * W - 243 := by nlinarith
    have h6 : 3 * (V - 121) ≤ 5 * W - 363 := by nlinarith
    have h7 : 3 * (V - 169) ≤ 5 * W - 507 := by nlinarith
    have h8 : 3 * (V - 225) ≤ 5 * W - 675 := by nlinarith
    have hp1 : 0 ≤ 3 * (V - 1) := by nlinarith
    have hp2 : 0 ≤ 3 * (V - 9) := by nlinarith
    have hp3 : 0 ≤ 3 * (V - 25) := by nlinarith
    have hp4 : 0 ≤ 3 * (V - 49) := by nlinarith
    have hp5 : 0 ≤ 3 * (V - 81) := by nlinarith
    have hp6 : 0 ≤ 3 * (V - 121) := by nlinarith
    have hp7 : 0 ≤ 3 * (V - 169) := by nlinarith
    have hp8 : 0 ≤ 3 * (V - 225) := by nlinarith
    have hb1 : 0 ≤ 5 * W - 3 := by nlinarith
    have hb2 : 0 ≤ 5 * W - 27 := by nlinarith
    have hb3 : 0 ≤ 5 * W - 75 := by nlinarith
    have hb4 : 0 ≤ 5 * W - 147 := by nlinarith
    have hb5 : 0 ≤ 5 * W - 243 := by nlinarith
    have hb6 : 0 ≤ 5 * W - 363 := by nlinarith
    have hb7 : 0 ≤ 5 * W - 507 := by nlinarith
    have hb8 : 0 ≤ 5 * W - 675 := by nlinarith
    have hprod :
        (3 * (V - 1)) * (3 * (V - 9)) * (3 * (V - 25)) * (3 * (V - 49)) *
            (3 * (V - 81)) * (3 * (V - 121)) * (3 * (V - 169)) * (3 * (V - 225))
          ≤
        (5*W - 3) * (5*W - 27) * (5*W - 75) * (5*W - 147) *
            (5*W - 243) * (5*W - 363) * (5*W - 507) * (5*W - 675) := by
      gcongr
    dsimp [sixteenF]
    convert hprod using 1
    ring
  have hphi := phi16_minus_neg (W := W) hW
  rw [hFV] at hprod_le
  nlinarith

private lemma sixteen_branch_upper
    {W V : ℤ} (hW : 494209 ≤ W)
    (hFV : sixteenF V = 64 * sixteenF W) :
    10 * V < 17 * W := by
  by_contra hnot
  have hle : 17 * W ≤ 10 * V := by omega
  have hprod_le :
      (17*W - 10) * (17*W - 90) * (17*W - 250) * (17*W - 490) *
          (17*W - 810) * (17*W - 1210) * (17*W - 1690) * (17*W - 2250)
        ≤ (10 ^ 8) * sixteenF V := by
    have h1 : 17 * W - 10 ≤ 10 * (V - 1) := by nlinarith
    have h2 : 17 * W - 90 ≤ 10 * (V - 9) := by nlinarith
    have h3 : 17 * W - 250 ≤ 10 * (V - 25) := by nlinarith
    have h4 : 17 * W - 490 ≤ 10 * (V - 49) := by nlinarith
    have h5 : 17 * W - 810 ≤ 10 * (V - 81) := by nlinarith
    have h6 : 17 * W - 1210 ≤ 10 * (V - 121) := by nlinarith
    have h7 : 17 * W - 1690 ≤ 10 * (V - 169) := by nlinarith
    have h8 : 17 * W - 2250 ≤ 10 * (V - 225) := by nlinarith
    have ha1 : 0 ≤ 17 * W - 10 := by nlinarith
    have ha2 : 0 ≤ 17 * W - 90 := by nlinarith
    have ha3 : 0 ≤ 17 * W - 250 := by nlinarith
    have ha4 : 0 ≤ 17 * W - 490 := by nlinarith
    have ha5 : 0 ≤ 17 * W - 810 := by nlinarith
    have ha6 : 0 ≤ 17 * W - 1210 := by nlinarith
    have ha7 : 0 ≤ 17 * W - 1690 := by nlinarith
    have ha8 : 0 ≤ 17 * W - 2250 := by nlinarith
    have hb1 : 0 ≤ 10 * (V - 1) := by nlinarith
    have hb2 : 0 ≤ 10 * (V - 9) := by nlinarith
    have hb3 : 0 ≤ 10 * (V - 25) := by nlinarith
    have hb4 : 0 ≤ 10 * (V - 49) := by nlinarith
    have hb5 : 0 ≤ 10 * (V - 81) := by nlinarith
    have hb6 : 0 ≤ 10 * (V - 121) := by nlinarith
    have hb7 : 0 ≤ 10 * (V - 169) := by nlinarith
    have hb8 : 0 ≤ 10 * (V - 225) := by nlinarith
    have hprod :
        (17*W - 10) * (17*W - 90) * (17*W - 250) * (17*W - 490) *
            (17*W - 810) * (17*W - 1210) * (17*W - 1690) * (17*W - 2250)
          ≤
        (10 * (V - 1)) * (10 * (V - 9)) * (10 * (V - 25)) * (10 * (V - 49)) *
            (10 * (V - 81)) * (10 * (V - 121)) * (10 * (V - 169)) * (10 * (V - 225)) := by
      gcongr
    dsimp [sixteenF]
    convert hprod using 1
    ring
  have hphi := phi16_plus_pos (W := W) hW
  rw [hFV] at hprod_le
  nlinarith

private lemma sixteenLQ_strictMono_in_V {W V1 V2 : ℚ}
    (hV1 : 289 ≤ V1) (h12 : V1 < V2) :
    sixteenLQ W V1 < sixteenLQ W V2 := by
  let a : ℚ := V1 - 289
  let b : ℚ := V2 - V1
  have ha : 0 ≤ a := by dsimp [a]; linarith
  have hb : 0 < b := by dsimp [b]; linarith
  have hdiff :
      sixteenLQ W V2 - sixteenLQ W V1 =
        b * (765*a^2 + 765*a*b + 375292*a + 255*b^2 + 187646*b + 45600528) := by
    dsimp [sixteenLQ, a, b]
    ring
  have hcoef : 0 < 765*a^2 + 765*a*b + 375292*a + 255*b^2 + 187646*b + 45600528 := by
    positivity
  nlinarith

private lemma sixteenHQ_strictMono_in_V {W V1 V2 : ℚ}
    (hV1 : 289 ≤ V1) (h12 : V1 < V2) :
    sixteenHQ W V1 < sixteenHQ W V2 := by
  let a : ℚ := V1 - 289
  let b : ℚ := V2 - V1
  have ha : 0 ≤ a := by dsimp [a]; linarith
  have hb : 0 < b := by dsimp [b]; linarith
  have hdiff :
      sixteenHQ W V2 - sixteenHQ W V1 =
        b * (4*a^3 + 6*a^2*b + 394128*a^2 + 4*a*b^2 + 394128*a*b +
          192626048*a + b^3 + 131376*b^2 + 96313024*b + 23376419840) := by
    dsimp [sixteenHQ, sixteenQQ, sixteenLQ, a, b]
    ring
  have hcoef : 0 <
      4*a^3 + 6*a^2*b + 394128*a^2 + 4*a*b^2 + 394128*a*b +
        192626048*a + b^3 + 131376*b^2 + 96313024*b + 23376419840 := by
    positivity
  nlinarith

private lemma sixteenLQ_upper_boundary_neg {W : ℚ} (hW : 494209 ≤ W) :
    sixteenLQ W ((17 * W) / 10) < 0 := by
  let t : ℚ := W - 494209
  have ht : 0 ≤ t := by dsimp [t]; linarith
  have hW' : W = t + 494209 := by dsimp [t]; ring
  have hcalc :
      -1000 * sixteenLQ W ((17 * W) / 10) =
        15067185*t^3 + 22336971837705*t^2 +
          11038122684418638235*t + 1818213512756439940568875 := by
    rw [hW']
    norm_num [sixteenLQ]
    ring
  have hpos : 0 <
      15067185*t^3 + 22336971837705*t^2 +
        11038122684418638235*t + 1818213512756439940568875 := by
    positivity
  nlinarith

private lemma sixteenHQ_lower_boundary_pos {W : ℚ} (hW : 494209 ≤ W) :
    0 < sixteenHQ W ((5 * W) / 3) := by
  let t : ℚ := W - 494209
  have ht : 0 ≤ t := by dsimp [t]; linarith
  have hW' : W = t + 494209 := by dsimp [t]; ring
  have hcalc :
      81 * sixteenHQ W ((5 * W) / 3) =
        1273*t^4 + 1888301368*t^3 + 934207034562168*t^2 +
          154415830900689563488*t + 131454106913668568241040 := by
    rw [hW']
    norm_num [sixteenHQ, sixteenQQ, sixteenLQ]
    ring
  have hpos : 0 <
      1273*t^4 + 1888301368*t^3 + 934207034562168*t^2 +
        154415830900689563488*t + 131454106913668568241040 := by
    positivity
  nlinarith

private lemma sixteenL_neg_of_bracket {W V : ℤ}
    (hW : 494209 ≤ W) (hV : 289 ≤ V) (hupper : 10 * V < 17 * W) :
    sixteenL W V < 0 := by
  have hWq : (494209 : ℚ) ≤ W := by exact_mod_cast hW
  have hVq : (289 : ℚ) ≤ V := by exact_mod_cast hV
  have hlt : ((V : ℚ) : ℚ) < (17 * (W : ℚ)) / 10 := by
    have hupperq : (10 : ℚ) * (V : ℚ) < 17 * (W : ℚ) := by exact_mod_cast hupper
    nlinarith
  have hmono := sixteenLQ_strictMono_in_V (W := (W : ℚ)) (V1 := (V : ℚ))
    (V2 := (17 * (W : ℚ)) / 10) hVq hlt
  have hbd := sixteenLQ_upper_boundary_neg (W := (W : ℚ)) hWq
  have hq : sixteenLQ (W : ℚ) (V : ℚ) < 0 := by linarith
  have hcast : ((sixteenL W V : ℤ) : ℚ) = sixteenLQ (W : ℚ) (V : ℚ) := by
    norm_num [sixteenL, sixteenLQ]
  rw [← hcast] at hq
  exact_mod_cast hq

private lemma sixteenH_pos_of_bracket {W V : ℤ}
    (hW : 494209 ≤ W) (hlower : 5 * W < 3 * V) :
    0 < sixteenH W V := by
  have hWq : (494209 : ℚ) ≤ W := by exact_mod_cast hW
  have hVq_lower : (289 : ℚ) ≤ (5 * (W : ℚ)) / 3 := by
    have hWnonneg : (0 : ℚ) ≤ W := by exact_mod_cast (by omega : (0 : ℤ) ≤ W)
    nlinarith
  have hlt : (5 * (W : ℚ)) / 3 < (V : ℚ) := by
    have hlowerq : (5 : ℚ) * (W : ℚ) < 3 * (V : ℚ) := by exact_mod_cast hlower
    nlinarith
  have hmono := sixteenHQ_strictMono_in_V (W := (W : ℚ)) (V1 := (5 * (W : ℚ)) / 3)
    (V2 := (V : ℚ)) hVq_lower hlt
  have hbd := sixteenHQ_lower_boundary_pos (W := (W : ℚ)) hWq
  have hq : 0 < sixteenHQ (W : ℚ) (V : ℚ) := by linarith
  have hcast : ((sixteenH W V : ℤ) : ℚ) = sixteenHQ (W : ℚ) (V : ℚ) := by
    norm_num [sixteenH, sixteenQ, sixteenL, sixteenHQ, sixteenQQ, sixteenLQ]
  rw [← hcast] at hq
  exact_mod_cast hq

private lemma sixteen_W_ge_of_n_ge_343 (n : ℕ) (hn : 343 ≤ n) :
    494209 ≤ (2 * (n : ℤ) + 17)^2 := by
  have hx : (703 : ℤ) ≤ 2 * (n : ℤ) + 17 := by exact_mod_cast (by omega : 703 ≤ 2 * n + 17)
  have hs := sq_nonneg ((2 * (n : ℤ) + 17) - 703)
  nlinarith

private lemma sixteen_V_ge_289 (m : ℕ) :
    289 ≤ (2 * (m : ℤ) + 17)^2 := by
  have hy : (17 : ℤ) ≤ 2 * (m : ℤ) + 17 := by exact_mod_cast (by omega : 17 ≤ 2 * m + 17)
  have hs := sq_nonneg ((2 * (m : ℤ) + 17) - 17)
  nlinarith

private lemma sixteenF_eq_of_block_eq {n m : ℕ}
    (hblock : blockProduct 16 m = 64 * blockProduct 16 n) :
    sixteenF ((2 * (m : ℤ) + 17)^2) =
      64 * sixteenF ((2 * (n : ℤ) + 17)^2) := by
  have hblockz : ((blockProduct 16 m : ℕ) : ℤ) =
      64 * ((blockProduct 16 n : ℕ) : ℤ) := by
    exact_mod_cast hblock
  have hcenterm := blockProduct_sixteen_center m
  have hcentern := blockProduct_sixteen_center n
  nlinarith

private lemma sixteenRQ_eq_of_F_eq {W V : ℤ}
    (hFV : sixteenF V = 64 * sixteenF W) :
    sixteenR W V * sixteenQ W V = (2 ^ 23 : ℤ) * sixteenL W V := by
  have hrunge := sixteen_runge_identity W V
  nlinarith

private lemma sixteenR_bounds_of_RQ
    {R Q L H : ℤ}
    (hRQ : R * Q = (2 ^ 23 : ℤ) * L)
    (hHdef : H = Q + 512 * L)
    (hLneg : L < 0) (hHpos : 0 < H) :
    -((2 ^ 14 : ℤ)) < R ∧ R < 0 := by
  have hQgt : -512 * L < Q := by nlinarith
  have hQpos : 0 < Q := by nlinarith
  have hRprodneg : R * Q < 0 := by nlinarith
  have hRneg : R < 0 := neg_of_mul_neg_left hRprodneg (le_of_lt hQpos)
  have hRgt : -((2 ^ 14 : ℤ)) < R := by
    by_contra hnot
    have hRle : R ≤ -((2 ^ 14 : ℤ)) := by omega
    have hprod_le : R * Q ≤ (-(2 ^ 14 : ℤ)) * Q :=
      mul_le_mul_of_nonneg_right hRle (le_of_lt hQpos)
    have hprod_lt : R * Q < (2 ^ 23 : ℤ) * L := by nlinarith
    nlinarith
  exact ⟨hRgt, hRneg⟩

set_option maxRecDepth 10000 in
set_option maxHeartbeats 20000000 in
-- Verify the polynomial Runge tail for `k=16`, `N=64`, `n ≥ 343`.
theorem no_solution_sixtyfour_sixteen_tail :
    ¬ ∃ n m : ℕ,
      343 ≤ n ∧
      m ≥ n + 16 ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 16, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 16, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hn, _hgap, hq⟩
  let W : ℤ := (2 * (n : ℤ) + 17)^2
  let V : ℤ := (2 * (m : ℤ) + 17)^2
  have hW : 494209 ≤ W := by
    dsimp [W]
    exact sixteen_W_ge_of_n_ge_343 n hn
  have hV289 : 289 ≤ V := by
    dsimp [V]
    exact sixteen_V_ge_289 m
  have hV225 : 225 < V := by omega
  have hblock := (quotient_eq_iff_blockProduct_eq 64 16 n m).mp hq
  have hFV : sixteenF V = 64 * sixteenF W := by
    dsimp [W, V]
    exact sixteenF_eq_of_block_eq hblock
  have hlower : 5 * W < 3 * V := sixteen_branch_lower hW hV225 hFV
  have hupper : 10 * V < 17 * W := sixteen_branch_upper hW hFV
  have hLneg : sixteenL W V < 0 := sixteenL_neg_of_bracket hW hV289 hupper
  have hHpos : 0 < sixteenH W V := sixteenH_pos_of_bracket hW hlower
  have hRQ := sixteenRQ_eq_of_F_eq hFV
  have hbounds := sixteenR_bounds_of_RQ
    (R := sixteenR W V) (Q := sixteenQ W V) (L := sixteenL W V) (H := sixteenH W V)
    hRQ (rfl) hLneg hHpos
  have hRgt : -((2 ^ 14 : ℤ)) < sixteenR W V := hbounds.1
  have hRneg : sixteenR W V < 0 := hbounds.2
  obtain ⟨t, ht0⟩ := sixteenR_sq_odd_dvd ((n : ℤ) + 8) ((m : ℤ) + 8)
  have ht : sixteenR W V = (2 ^ 14 : ℤ) * t := by
    dsimp [W, V]
    convert ht0 using 1
  rw [ht] at hRgt hRneg
  omega

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 20000000 in
-- Kernel-check the bounded `k=16`, `N=64`, `n < 343`, `m < 448` certificate.
private lemma no_solution_sixtyfour_sixteen_low_fin :
    (∀ n : Fin 343, ∀ m : Fin 448,
      n.val + 16 ≤ m.val →
        blockProduct 16 m.val ≠ 64 * blockProduct 16 n.val) := by
  decide

private lemma blockProduct_sixteen_448_gt_64_342 :
    64 * blockProduct 16 342 < blockProduct 16 448 := by
  norm_num [blockProduct, Finset.prod_Icc_succ_top, Finset.Icc_self,
    Finset.prod_singleton]

/--
The square `N=64` has no `k=16` quotient representation in the finite low
range `n < 343`.  The bounded core `n < 343, m < 448` is checked by kernel
`decide`; for `m ≥ 448`, monotonicity and the exact endpoint inequality
`P_16(448) > 64 P_16(342)` finish the range.
-/
theorem no_solution_sixtyfour_sixteen_low_n :
    ¬ ∃ n m : ℕ,
      n < 343 ∧
      m ≥ n + 16 ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 16, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 16, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hn, hgap, hq⟩
  have hblock := (quotient_eq_iff_blockProduct_eq 64 16 n m).mp hq
  by_cases hm : m < 448
  · exact no_solution_sixtyfour_sixteen_low_fin
      ⟨n, hn⟩ ⟨m, hm⟩ hgap hblock
  · have hm448 : 448 ≤ m := by omega
    have hn342 : n ≤ 342 := by omega
    have hmono_m := blockProduct_mono 16 448 m hm448
    have hmono_n := blockProduct_mono 16 n 342 hn342
    have hlt : 64 * blockProduct 16 n < blockProduct 16 m := by
      calc
        64 * blockProduct 16 n ≤ 64 * blockProduct 16 342 :=
          Nat.mul_le_mul_left 64 hmono_n
        _ < blockProduct 16 448 := blockProduct_sixteen_448_gt_64_342
        _ ≤ blockProduct 16 m := hmono_m
    rw [hblock] at hlt
    exact (Nat.lt_irrefl _ hlt)

/--
The square `N=64` has no `k=16` quotient representation.  The proof combines
the finite low range `n < 343` with the Runge tail above `n ≥ 343`.
-/
theorem no_solution_sixtyfour_sixteen :
    ¬ ∃ n m : ℕ,
      m ≥ n + 16 ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 16, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 16, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hgap, hq⟩
  by_cases hn : n < 343
  · exact no_solution_sixtyfour_sixteen_low_n ⟨n, m, hn, hgap, hq⟩
  · have hn_tail : 343 ≤ n := by omega
    exact no_solution_sixtyfour_sixteen_tail ⟨n, m, hn_tail, hgap, hq⟩

/--
The square `N=64` is ruled out for the currently banked rungs
`k ∈ {2,3,4,6}`.
-/
theorem no_solution_sixtyfour_two_three_four_or_six
    {k : ℕ} (hk : k = 2 ∨ k = 3 ∨ k = 4 ∨ k = 6) :
    ¬ ∃ n m : ℕ,
      m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hk with rfl | rfl | rfl | rfl
  · have h := no_solution_holdout_square_two (a := 8)
      (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
    simpa using h
  · simpa using no_solution_sixtyfour_three
  · have h := no_solution_holdout_square_four (a := 8)
      (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
    simpa using h
  · simpa using no_solution_sixtyfour_six

/--
The square `N=64` is ruled out for the currently banked rungs
`k ∈ {2,3,4,6,8}`.
-/
theorem no_solution_sixtyfour_two_three_four_six_or_eight
    {k : ℕ} (hk : k = 2 ∨ k = 3 ∨ k = 4 ∨ k = 6 ∨ k = 8) :
    ¬ ∃ n m : ℕ,
      m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hk with rfl | rfl | rfl | rfl | rfl
  · have h := no_solution_holdout_square_two (a := 8)
      (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
    simpa using h
  · simpa using no_solution_sixtyfour_three
  · have h := no_solution_holdout_square_four (a := 8)
      (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
    simpa using h
  · simpa using no_solution_sixtyfour_six
  · simpa using no_solution_sixtyfour_eight

/--
The square `N=64` is ruled out for the currently banked full rungs
`k ∈ {2,3,4,6,8,16}`.
-/
theorem no_solution_sixtyfour_two_three_four_six_eight_or_sixteen
    {k : ℕ} (hk : k = 2 ∨ k = 3 ∨ k = 4 ∨ k = 6 ∨ k = 8 ∨ k = 16) :
    ¬ ∃ n m : ℕ,
      m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rcases hk with rfl | rfl | rfl | rfl | rfl | rfl
  · have h := no_solution_holdout_square_two (a := 8)
      (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
    simpa using h
  · simpa using no_solution_sixtyfour_three
  · have h := no_solution_holdout_square_four (a := 8)
      (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
    simpa using h
  · simpa using no_solution_sixtyfour_six
  · simpa using no_solution_sixtyfour_eight
  · simpa using no_solution_sixtyfour_sixteen

/--
If the odd-block separation statement is proved for all disjoint blocks of
length at least four, then `N=64` is a full counterexample.  The short lengths
`k=2,3` are already ruled out separately; for `k≥4`, the quotient by `64=2^6`
would force the two odd blocks to be equal.
-/
theorem no_solution_sixtyfour_of_oddBlock_separation
    (hsep : ∀ k n m : ℕ, 4 ≤ k → m ≥ n + k → oddBlock k m ≠ oddBlock k n) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : 4 ≤ k
  · exact (hsep k n m hk4 hm) (sixtyfour_quotient_implies_oddBlock_eq hq)
  · have hk3 : k ≤ 3 := by omega
    have hk23 : k = 2 ∨ k = 3 := by omega
    rcases hk23 with rfl | rfl
    · have h := no_solution_holdout_square_two (a := 8)
        (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
      exact h ⟨n, m, hm, by simpa using hq⟩
    · exact no_solution_sixtyfour_three ⟨n, m, hm, by simpa using hq⟩

/--
The exact formal target for a negative solution of Erdős 686 using `N=64`,
conditional on odd-block separation.
-/
theorem erdos686_false_of_sixtyfour_oddBlock_separation
    (hsep : ∀ k n m : ℕ, 4 ≤ k → m ≥ n + k → oddBlock k m ≠ oddBlock k n) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_oddBlock_separation hsep (hall 64 (by norm_num))

/--
Ratio-window version of the odd-block separation target for `N=64`.  It is
enough to prove odd-block separation for every gap-form candidate satisfying
the exact `N=64` ratio-window inequalities forced by a quotient solution.
-/
theorem no_solution_sixtyfour_of_oddBlock_ratio_window_escape
    (hsep : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      oddBlock k (n + d) ≠ oddBlock k n) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, _hk2, hm, hq⟩
  by_cases hk4 : 4 ≤ k
  · obtain ⟨d, hd, hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_sixtyfour_nat heq
    have hodd : oddBlock k (n + d) = oddBlock k n := by
      simpa [hmd] using sixtyfour_quotient_implies_oddBlock_eq hq
    exact (hsep k n d hk4 hd hlo hup) hodd
  · have hk23 : k = 2 ∨ k = 3 := by omega
    rcases hk23 with rfl | rfl
    · have h := no_solution_holdout_square_two (a := 8)
        (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
      exact h ⟨n, m, hm, by simpa using hq⟩
    · exact no_solution_sixtyfour_three ⟨n, m, hm, by simpa using hq⟩

/--
The exact formal target for a negative solution of Erdős 686 using the
ratio-window odd-block separation target for `N=64`.
-/
theorem erdos686_false_of_sixtyfour_oddBlock_ratio_window_escape
    (hsep : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      oddBlock k (n + d) ≠ oddBlock k n) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_oddBlock_ratio_window_escape hsep (hall 64 (by norm_num))

/--
If every remaining `N=64` gap has a lower term whose odd part is larger than
the corresponding shifted-difference row, then `N=64` is a full counterexample.
This is the row-level version of the odd-block size escape.
-/
theorem no_solution_sixtyfour_of_oddPart_row_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) →
      ∃ j, j ∈ Finset.Icc 1 k ∧ shiftedDiffProductAt k d j < oddPart (n + j)) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : 4 ≤ k
  · let d := m - n
    have hd : k ≤ d := by dsimp [d]; omega
    have hq_gap :
        (64 : ℚ) =
          (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
            (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
      have hmd : n + d = m := by dsimp [d]; omega
      rw [hmd]
      exact hq
    obtain ⟨j, hj, hlt⟩ := hescape k n d hk4 hd hq_gap
    have hodd : oddBlock k (n + d) = oddBlock k n := by
      have hmd : n + d = m := by dsimp [d]; omega
      rw [hmd]
      exact sixtyfour_quotient_implies_oddBlock_eq hq
    exact (oddBlock_ne_of_shiftedDiffProductAt_lt_oddPart hd hj hlt) hodd
  · have hk3 : k ≤ 3 := by omega
    have hk23 : k = 2 ∨ k = 3 := by omega
    rcases hk23 with rfl | rfl
    · have h := no_solution_holdout_square_two (a := 8)
        (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
      exact h ⟨n, m, hm, by simpa using hq⟩
    · exact no_solution_sixtyfour_three ⟨n, m, hm, by simpa using hq⟩

/--
The exact formal target for a negative solution of Erdős 686 using the
row-level odd-part escape for `N=64`.
-/
theorem erdos686_false_of_sixtyfour_oddPart_row_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) →
      ∃ j, j ∈ Finset.Icc 1 k ∧ shiftedDiffProductAt k d j < oddPart (n + j)) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_oddPart_row_escape hescape (hall 64 (by norm_num))

/--
Ratio-window version of the row-level odd-part escape for `N=64`.  The
remaining escape theorem only has to inspect the exact natural ratio window,
not the original quotient equality.
-/
theorem no_solution_sixtyfour_of_oddPart_row_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ shiftedDiffProductAt k d j < oddPart (n + j)) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, _hk2, hm, hq⟩
  by_cases hk4 : 4 ≤ k
  · obtain ⟨d, hd, hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_sixtyfour_nat heq
    obtain ⟨j, hj, hlt⟩ := hescape k n d hk4 hd hlo hup
    have hodd : oddBlock k (n + d) = oddBlock k n := by
      simpa [hmd] using sixtyfour_quotient_implies_oddBlock_eq hq
    exact (oddBlock_ne_of_shiftedDiffProductAt_lt_oddPart hd hj hlt) hodd
  · have hk23 : k = 2 ∨ k = 3 := by omega
    rcases hk23 with rfl | rfl
    · have h := no_solution_holdout_square_two (a := 8)
        (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
      exact h ⟨n, m, hm, by simpa using hq⟩
    · exact no_solution_sixtyfour_three ⟨n, m, hm, by simpa using hq⟩

/--
The exact formal target for a negative solution of Erdős 686 using the
ratio-window row-level odd-part escape for `N=64`.
-/
theorem erdos686_false_of_sixtyfour_oddPart_row_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ shiftedDiffProductAt k d j < oddPart (n + j)) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_oddPart_row_ratio_window_escape hescape (hall 64 (by norm_num))

/--
If every remaining `N=64` gap-form candidate has at least one nonsmooth term
in one of the two blocks, then `N=64` is a full counterexample.  This is the
direct contrapositive form of `smooth_blocks_of_sixtyfour_gap_solution`.
-/
theorem no_solution_sixtyfour_of_not_smooth_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) →
      (∃ i, i ∈ Finset.Icc 1 k ∧ ¬ SmoothUpTo (d + k - 1) (n + i)) ∨
        (∃ i, i ∈ Finset.Icc 1 k ∧ ¬ SmoothUpTo (d + k - 1) (n + d + i))) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : 4 ≤ k
  · let d := m - n
    have hd : k ≤ d := by dsimp [d]; omega
    have hq_gap :
        (64 : ℚ) =
          (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
            (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
      have hmd : n + d = m := by dsimp [d]; omega
      rw [hmd]
      exact hq
    have hsmooth :=
      smooth_blocks_of_sixtyfour_gap_solution
        (k := k) (n := n) (d := d) (by omega : 2 ≤ k) hd hq_gap
    obtain hbad | hbad := hescape k n d hk4 hd hq_gap
    · obtain ⟨i, hi, hnot⟩ := hbad
      exact hnot (hsmooth.1 i hi)
    · obtain ⟨i, hi, hnot⟩ := hbad
      exact hnot (hsmooth.2 i hi)
  · have hk3 : k ≤ 3 := by omega
    have hk23 : k = 2 ∨ k = 3 := by omega
    rcases hk23 with rfl | rfl
    · have h := no_solution_holdout_square_two (a := 8)
        (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
      exact h ⟨n, m, hm, by simpa using hq⟩
    · exact no_solution_sixtyfour_three ⟨n, m, hm, by simpa using hq⟩

/--
The exact formal target for a negative solution of Erdős 686 using the
nonsmooth-term escape for `N=64`.
-/
theorem erdos686_false_of_sixtyfour_not_smooth_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) →
      (∃ i, i ∈ Finset.Icc 1 k ∧ ¬ SmoothUpTo (d + k - 1) (n + i)) ∨
        (∃ i, i ∈ Finset.Icc 1 k ∧ ¬ SmoothUpTo (d + k - 1) (n + d + i))) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_not_smooth_escape hescape (hall 64 (by norm_num))

/--
Ratio-window version of the nonsmooth-term escape for `N=64`: it is enough to
prove nonsmoothness for every candidate satisfying the exact natural
ratio-window inequalities forced by a quotient solution.
-/
theorem no_solution_sixtyfour_of_not_smooth_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∃ i, i ∈ Finset.Icc 1 k ∧ ¬ SmoothUpTo (d + k - 1) (n + i)) ∨
        (∃ i, i ∈ Finset.Icc 1 k ∧ ¬ SmoothUpTo (d + k - 1) (n + d + i))) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : 4 ≤ k
  · obtain ⟨d, hd, hmd, heq⟩ := quotient_solution_with_gap_of_solution 64 hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_sixtyfour_nat heq
    have hq_gap :
        (64 : ℚ) =
          (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
            (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
      rw [← hmd]
      exact hq
    have hsmooth :=
      smooth_blocks_of_sixtyfour_gap_solution
        (k := k) (n := n) (d := d) hk2 hd hq_gap
    obtain hbad | hbad := hescape k n d hk4 hd hlo hup
    · obtain ⟨i, hi, hnot⟩ := hbad
      exact hnot (hsmooth.1 i hi)
    · obtain ⟨i, hi, hnot⟩ := hbad
      exact hnot (hsmooth.2 i hi)
  · have hk23 : k = 2 ∨ k = 3 := by omega
    rcases hk23 with rfl | rfl
    · have h := no_solution_holdout_square_two (a := 8)
        (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
      exact h ⟨n, m, hm, by simpa using hq⟩
    · exact no_solution_sixtyfour_three ⟨n, m, hm, by simpa using hq⟩

/--
The exact formal target for a negative solution of Erdős 686 using the
ratio-window nonsmooth-term escape for `N=64`.
-/
theorem erdos686_false_of_sixtyfour_not_smooth_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∃ i, i ∈ Finset.Icc 1 k ∧ ¬ SmoothUpTo (d + k - 1) (n + i)) ∨
        (∃ i, i ∈ Finset.Icc 1 k ∧ ¬ SmoothUpTo (d + k - 1) (n + d + i))) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_not_smooth_ratio_window_escape hescape (hall 64 (by norm_num))

/--
If every remaining `N=64` gap-form candidate has a prime factor larger than
`d+k-1` in one of the two blocks, then `N=64` is a full counterexample.  This
is the prime-anatomy version of the odd-block attack: an actual `N=64`
solution would force both blocks to be smooth up to `d+k-1`.
-/
theorem no_solution_sixtyfour_of_large_prime_factor_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) →
      (∃ i p, i ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ∣ n + i ∧ d + k - 1 < p) ∨
        (∃ i p, i ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ∣ n + d + i ∧ d + k - 1 < p)) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : 4 ≤ k
  · let d := m - n
    have hd : k ≤ d := by dsimp [d]; omega
    have hq_gap :
        (64 : ℚ) =
          (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
            (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
      have hmd : n + d = m := by dsimp [d]; omega
      rw [hmd]
      exact hq
    have hsmooth :=
      smooth_blocks_of_sixtyfour_gap_solution
        (k := k) (n := n) (d := d) (by omega : 2 ≤ k) hd hq_gap
    obtain hlarge | hlarge := hescape k n d hk4 hd hq_gap
    · obtain ⟨i, p, hi, hp, hdiv, hgt⟩ := hlarge
      exact not_le_of_gt hgt (hsmooth.1 i hi p hp hdiv)
    · obtain ⟨i, p, hi, hp, hdiv, hgt⟩ := hlarge
      exact not_le_of_gt hgt (hsmooth.2 i hi p hp hdiv)
  · have hk3 : k ≤ 3 := by omega
    have hk23 : k = 2 ∨ k = 3 := by omega
    rcases hk23 with rfl | rfl
    · have h := no_solution_holdout_square_two (a := 8)
        (by exact Or.inr (Or.inr (Or.inr (Or.inl rfl))))
      exact h ⟨n, m, hm, by simpa using hq⟩
    · exact no_solution_sixtyfour_three ⟨n, m, hm, by simpa using hq⟩

/--
The exact formal target for a negative solution of Erdős 686 using the
large-prime-factor escape for `N=64`.
-/
theorem erdos686_false_of_sixtyfour_large_prime_factor_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, ((((n + d) + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) →
      (∃ i p, i ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ∣ n + i ∧ d + k - 1 < p) ∨
        (∃ i p, i ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ∣ n + d + i ∧ d + k - 1 < p)) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_large_prime_factor_escape hescape (hall 64 (by norm_num))

/--
Ratio-window version of the large-prime-factor escape for `N=64`.  This is the
same counterexample bridge as `no_solution_sixtyfour_of_large_prime_factor_escape`,
but the remaining escape theorem only has to inspect the exact ratio window,
not the original quotient equality.
-/
theorem no_solution_sixtyfour_of_large_prime_factor_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∃ i p, i ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ∣ n + i ∧ d + k - 1 < p) ∨
        (∃ i p, i ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ∣ n + d + i ∧ d + k - 1 < p)) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  apply no_solution_sixtyfour_of_not_smooth_ratio_window_escape
  intro k n d hk4 hd hlo hup
  obtain hlarge | hlarge := hescape k n d hk4 hd hlo hup
  · obtain ⟨i, p, hi, hp, hdiv, hgt⟩ := hlarge
    exact Or.inl ⟨i, hi, fun hsmooth => not_le_of_gt hgt (hsmooth p hp hdiv)⟩
  · obtain ⟨i, p, hi, hp, hdiv, hgt⟩ := hlarge
    exact Or.inr ⟨i, hi, fun hsmooth => not_le_of_gt hgt (hsmooth p hp hdiv)⟩

/--
The exact formal target for a negative solution of Erdős 686 using the
ratio-window large-prime-factor escape for `N=64`.
-/
theorem erdos686_false_of_sixtyfour_large_prime_factor_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∃ i p, i ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ∣ n + i ∧ d + k - 1 < p) ∨
        (∃ i p, i ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ∣ n + d + i ∧ d + k - 1 < p)) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_large_prime_factor_ratio_window_escape
    hescape (hall 64 (by norm_num))

/--
Ratio-window prime-power row-size escape for `N=64`.  It is enough to find an
upper odd prime power `p^e` whose forced shifted-difference row product is too
small to contain it.
-/
theorem no_solution_sixtyfour_of_upper_large_prime_power_rows_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j p e, j ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ≠ 2 ∧ k < p ∧
        p ∣ oddPart (n + d + j) ∧ p ^ e ∣ n + d + j ∧
        shiftedDiffProductRows k d < p ^ e) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  apply no_solution_sixtyfour_of_oddBlock_ratio_window_escape
  intro k n d hk4 hd hlo hup
  obtain ⟨j, p, e, hj, hp, hp2, hkp, hpjOdd, hpow, hlt⟩ :=
    hescape k n d hk4 hd hlo hup
  exact oddBlock_ne_of_upper_large_prime_power_rows_lt
    hp hp2 hkp hd hj hpjOdd hpow hlt

/--
The exact formal target for a negative solution of Erdős 686 using the
ratio-window prime-power row-size escape for `N=64`.
-/
theorem erdos686_false_of_sixtyfour_upper_large_prime_power_rows_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j p e, j ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ≠ 2 ∧ k < p ∧
        p ∣ oddPart (n + d + j) ∧ p ^ e ∣ n + d + j ∧
        shiftedDiffProductRows k d < p ^ e) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_upper_large_prime_power_rows_ratio_window_escape
    hescape (hall 64 (by norm_num))

/--
Ratio-window pointwise prime-power row-size escape for `N=64`.  This variant
uses the stronger but often easier-to-prove condition that every possible
matched shifted-difference row is smaller than the upper odd prime power.
-/
theorem no_solution_sixtyfour_of_upper_large_prime_power_row_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j p e, j ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ≠ 2 ∧ k < p ∧
        p ∣ oddPart (n + d + j) ∧ p ^ e ∣ n + d + j ∧
        (∀ i, i ∈ Finset.Icc 1 k → shiftedDiffProductAt k d i < p ^ e)) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (64 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  apply no_solution_sixtyfour_of_oddBlock_ratio_window_escape
  intro k n d hk4 hd hlo hup
  obtain ⟨j, p, e, hj, hp, hp2, hkp, hpjOdd, hpow, hrows_lt⟩ :=
    hescape k n d hk4 hd hlo hup
  exact oddBlock_ne_of_upper_large_prime_power_row_lt
    hp hp2 hkp hd hj hpjOdd hpow hrows_lt

/--
The exact formal target for a negative solution of Erdős 686 using the
ratio-window pointwise prime-power row-size escape for `N=64`.
-/
theorem erdos686_false_of_sixtyfour_upper_large_prime_power_row_ratio_window_escape
    (hescape : ∀ k n d : ℕ, 4 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 64 * (n + k) ^ k →
      64 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j p e, j ∈ Finset.Icc 1 k ∧ p.Prime ∧ p ≠ 2 ∧ k < p ∧
        p ∣ oddPart (n + d + j) ∧ p ^ e ∣ n + d + j ∧
        (∀ i, i ∈ Finset.Icc 1 k → shiftedDiffProductAt k d i < p ^ e)) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_sixtyfour_of_upper_large_prime_power_row_ratio_window_escape
    hescape (hall 64 (by norm_num))

/--
Cleared integer form of the $k=4$, $N=4$ variant. Folding each block of four
consecutive factors reduces any such solution to the impossible $k=2$ case.
-/
theorem no_solution_four_four_cleared :
    ¬ ∃ n m : ℕ,
      m ≥ n + 4 ∧
      (m + 1) * (m + 2) * (m + 3) * (m + 4) =
        4 * ((n + 1) * (n + 2) * (n + 3) * (n + 4)) := by
  rintro ⟨n, m, hm, heq⟩
  obtain ⟨An, hAnpos, hAn1, hAn2⟩ := four_block_to_two_block_data n
  obtain ⟨Am, hAmpos, hAm1, hAm2⟩ := four_block_to_two_block_data m
  have hAm_ge : Am ≥ An + 2 := by
    nlinarith
  have hfold_ge : Am - 1 ≥ (An - 1) + 2 := by
    omega
  apply no_solution_four_two_cleared
  refine ⟨An - 1, Am - 1, hfold_ge, ?_⟩
  have hAm_sub1 : Am - 1 + 1 = Am := by omega
  have hAm_sub2 : Am - 1 + 2 = Am + 1 := by omega
  have hAn_sub1 : An - 1 + 1 = An := by omega
  have hAn_sub2 : An - 1 + 2 = An + 1 := by omega
  rw [hAm_sub1, hAm_sub2, hAn_sub1, hAn_sub2]
  have hprod_m :
      (m + 1) * (m + 2) * (m + 3) * (m + 4) = 4 * (Am * (Am + 1)) := by
    nlinarith
  have hprod_n :
      (n + 1) * (n + 2) * (n + 3) * (n + 4) = 4 * (An * (An + 1)) := by
    nlinarith
  rw [hprod_m, hprod_n] at heq
  omega

/--
The $k=3$, $N=4$ variant in quotient form: there are no natural numbers
$n,m$ with $m\geq n+3$ and
$$4=\frac{(m+1)(m+2)(m+3)}{(n+1)(n+2)(n+3)}.$$
-/
theorem no_solution_four_three :
    ¬ ∃ n m : ℕ,
      m ≥ n + 3 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 3, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 3, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hq⟩
  apply no_solution_cleared
  refine ⟨n, m, hm, ?_⟩
  have hden_ne :
      (∏ i ∈ Finset.Icc 1 3, (((n + i : ℕ) : ℚ))) ≠ 0 := by
    apply ne_of_gt
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    positivity
  rw [eq_comm, div_eq_iff hden_ne] at hq
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton] at hq
  exact_mod_cast hq

/--
The $k=4$, $N=4$ variant in quotient form: there are no natural numbers
$n,m$ with $m\geq n+4$ and
$$4=\frac{(m+1)(m+2)(m+3)(m+4)}{(n+1)(n+2)(n+3)(n+4)}.$$
-/
theorem no_solution_four_four :
    ¬ ∃ n m : ℕ,
      m ≥ n + 4 ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 4, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 4, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨n, m, hm, hq⟩
  apply no_solution_four_four_cleared
  refine ⟨n, m, hm, ?_⟩
  have hden_ne :
      (∏ i ∈ Finset.Icc 1 4, (((n + i : ℕ) : ℚ))) ≠ 0 := by
    apply ne_of_gt
    norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton]
    positivity
  rw [eq_comm, div_eq_iff hden_ne] at hq
  norm_num [Finset.prod_Icc_succ_top, Finset.Icc_self, Finset.prod_singleton] at hq
  exact_mod_cast hq

/--
The candidate counterexample $N=4$ is now ruled out for every
$2\leq k\leq4$.
-/
theorem no_solution_four_le_four :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ k ≤ 4 ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hk4, hm, hq⟩
  interval_cases k
  · exact no_solution_four_two ⟨n, m, hm, by simpa using hq⟩
  · exact no_solution_four_three ⟨n, m, hm, by simpa using hq⟩
  · exact no_solution_four_four ⟨n, m, hm, by simpa using hq⟩

/--
If the remaining odd-block separation statement is proved for all disjoint
blocks of length at least four, then `N=4` is a full counterexample.
-/
theorem no_solution_four_of_oddBlock_separation
    (hsep : ∀ k n m : ℕ, 4 ≤ k → m ≥ n + k → oddBlock k m ≠ oddBlock k n) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : k ≤ 4
  · exact no_solution_four_le_four ⟨k, n, m, hk2, hk4, hm, hq⟩
  · have h4k : 4 ≤ k := by omega
    exact (hsep k n m h4k hm) (four_quotient_implies_oddBlock_eq hq)

/--
If the divisor-skeleton escape theorem is proved under the `N=4` ratio
window, then `N=4` is a full counterexample.
-/
theorem no_solution_four_of_divisor_skeleton_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ ¬ n + j ∣ shiftedDiffProductAt k d j) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : k ≤ 4
  · exact no_solution_four_le_four ⟨k, n, m, hk2, hk4, hm, hq⟩
  · have hk5 : 5 ≤ k := by omega
    obtain ⟨d, hd, _hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    obtain ⟨j, hj, hnot⟩ := hescape k n d hk5 hd hlo hup
    exact hnot (individual_divisor_skeleton_four hd hj heq)

/--
Large-prime row escape: if a prime divisor of `n+j` is larger than every factor
in the shifted row product for row `j`, then the row divisibility fails.
-/
theorem row_escape_of_large_prime_in_n_add
    {k n d j p : ℕ}
    (hp : p.Prime) (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (hlarge : d + k - j < p) (hpdiv : p ∣ n + j) :
    ¬ (n + j ∣ shiftedDiffProductAt k d j) := by
  intro hrow
  have hp_prod : p ∣ shiftedDiffProductAt k d j :=
    dvd_trans hpdiv hrow
  have hp_prod' :
      p ∣ ∏ i ∈ Finset.Icc 1 k, (d + i - j) := by
    simpa [shiftedDiffProductAt] using hp_prod
  obtain ⟨i, hi, hpi⟩ := prime_dvd_finset_prod_exists hp hp_prod'
  have hi_pos : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
  have hj_le : j ≤ k := (Finset.mem_Icc.mp hj).2
  have hpos : 0 < d + i - j := by omega
  have hp_le : p ≤ d + i - j := Nat.le_of_dvd hpos hpi
  have hfactor_le : d + i - j ≤ d + k - j := by omega
  omega

/--
Surviving row divisibility forces every prime divisor of the lower term to
appear below the row-specific cap `d+k-j`.
-/
theorem row_dvd_prime_le_row_cap
    {k n d j p : ℕ}
    (hp : p.Prime) (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (hrow : n + j ∣ shiftedDiffProductAt k d j) (hpdiv : p ∣ n + j) :
    p ≤ d + k - j := by
  have hp_prod : p ∣ shiftedDiffProductAt k d j :=
    dvd_trans hpdiv hrow
  have hp_prod' :
      p ∣ ∏ i ∈ Finset.Icc 1 k, (d + i - j) := by
    simpa [shiftedDiffProductAt] using hp_prod
  obtain ⟨i, hi, hpi⟩ := prime_dvd_finset_prod_exists hp hp_prod'
  have hi_pos : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
  have hj_le : j ≤ k := (Finset.mem_Icc.mp hj).2
  have hpos : 0 < d + i - j := by omega
  have hp_le : p ≤ d + i - j := Nat.le_of_dvd hpos hpi
  have hfactor_le : d + i - j ≤ d + k - j := by omega
  omega

private lemma prime_not_dvd_shiftedDiffProductAt_of_large
    {k d j p : ℕ}
    (hp : p.Prime) (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (hlarge : d + k - j < p) :
    ¬ p ∣ shiftedDiffProductAt k d j := by
  intro hp_prod
  have hp_prod' :
      p ∣ ∏ i ∈ Finset.Icc 1 k, (d + i - j) := by
    simpa [shiftedDiffProductAt] using hp_prod
  obtain ⟨i, hi, hpi⟩ := prime_dvd_finset_prod_exists hp hp_prod'
  have hi_pos : 1 ≤ i := (Finset.mem_Icc.mp hi).1
  have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
  have hj_le : j ≤ k := (Finset.mem_Icc.mp hj).2
  have hpos : 0 < d + i - j := by omega
  have hp_le : p ≤ d + i - j := Nat.le_of_dvd hpos hpi
  have hfactor_le : d + i - j ≤ d + k - j := by omega
  omega

private lemma prime_not_dvd_skeletonQuotient_of_large
    {k n d j p : ℕ}
    (hp : p.Prime) (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (hrow : n + j ∣ shiftedDiffProductAt k d j)
    (hlarge : d + k - j < p) :
    ¬ p ∣ skeletonQuotient k n d j := by
  intro hpq
  have hcancel : skeletonQuotient k n d j * (n + j) =
      shiftedDiffProductAt k d j := by
    unfold skeletonQuotient
    exact Nat.div_mul_cancel hrow
  have hp_prod : p ∣ shiftedDiffProductAt k d j := by
    have hmul : p ∣ skeletonQuotient k n d j * (n + j) :=
      dvd_mul_of_dvd_left hpq (n + j)
    simpa [hcancel] using hmul
  exact prime_not_dvd_shiftedDiffProductAt_of_large hp hd hj hlarge hp_prod

/--
Transition-prime obstruction.  If a prime factor of the next lower term
`n+j+1` is too large to occur in the current shifted row product and is not
canceled by the transition overlap `(n+j)(d-j)`, then the transition
denominator cannot divide the current skeleton quotient.

For the remaining `N=4` boundary target this is intended at `j = 15`: it turns
the observed `1427 | n+16` pattern into a clean local proof obligation.
-/
theorem transitionDenom_not_dvd_skeletonQuotient_of_large_prime_next
    {k n d j p : ℕ}
    (hp : p.Prime) (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 (k - 1))
    (hrow : n + j ∣ shiftedDiffProductAt k d j)
    (hpnext : p ∣ n + j + 1)
    (hp_not_prev : ¬ p ∣ n + j)
    (hp_not_edge : ¬ p ∣ d - j)
    (hlarge : d + k - j < p) :
    ¬ transitionDenom k n d j ∣ skeletonQuotient k n d j := by
  have hjk : j ∈ Finset.Icc 1 k := by
    exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp hj).1,
        le_trans (Finset.mem_Icc.mp hj).2 (Nat.sub_le k 1)⟩
  have hq_not : ¬ p ∣ skeletonQuotient k n d j :=
    prime_not_dvd_skeletonQuotient_of_large hp hd hjk hrow hlarge
  have hA : p ∣ (n + j + 1) * (d + k - j) :=
    dvd_mul_of_dvd_left hpnext (d + k - j)
  have hB_not : ¬ p ∣ (n + j) * (d - j) := by
    intro hpB
    rcases (Nat.Prime.dvd_mul hp).mp hpB with hp_prev | hp_edge
    · exact hp_not_prev hp_prev
    · exact hp_not_edge hp_edge
  have hp_denom : p ∣ transitionDenom k n d j := by
    simpa [transitionDenom, Nat.add_assoc] using
      (prime_dvd_div_gcd_of_dvd_left_not_dvd_right
        (a := (n + j + 1) * (d + k - j))
        (b := (n + j) * (d - j)) hp hA hB_not)
  intro htrans
  exact hq_not (dvd_trans hp_denom htrans)

/--
Specialized `j = 15` boundary form.  After rows `1,...,15` divide, a large
uncanceled prime in `n+16` proves row-sixteen escape.
-/
theorem row_sixteen_escape_after_rows_fifteen_of_large_prime_n_add_sixteen
    {k n d p : ℕ} (hk : 16 ≤ k) (hd : k ≤ d)
    (hrows15 : ∀ j, j ∈ Finset.Icc 1 15 →
      n + j ∣ shiftedDiffProductAt k d j)
    (hp : p.Prime)
    (hpnext : p ∣ n + 16)
    (hp_not_prev : ¬ p ∣ n + 15)
    (hp_not_edge : ¬ p ∣ d - 15)
    (hlarge : d + k - 15 < p) :
    ¬ n + 16 ∣ shiftedDiffProductAt k d 16 := by
  have hj : 15 ∈ Finset.Icc 1 (k - 1) := by
    exact Finset.mem_Icc.mpr ⟨by norm_num, by omega⟩
  have hrow15 : n + 15 ∣ shiftedDiffProductAt k d 15 :=
    hrows15 15 (by norm_num)
  have htrans :
      ¬ transitionDenom k n d 15 ∣ skeletonQuotient k n d 15 := by
    apply transitionDenom_not_dvd_skeletonQuotient_of_large_prime_next
      (k := k) (n := n) (d := d) (j := 15) (p := p)
    · exact hp
    · exact hd
    · exact hj
    · exact hrow15
    · simpa [Nat.add_assoc] using hpnext
    · exact hp_not_prev
    · exact hp_not_edge
    · exact hlarge
  exact (row_sixteen_escape_after_rows_fifteen_iff_transition_fifteen_escape
    (k := k) (n := n) (d := d) hk hd hrows15).mp htrans

/--
Same boundary-prime form, with the previous-term nondivisibility discharged
automatically from `p ∣ n+16`.
-/
theorem row_sixteen_escape_after_rows_fifteen_of_large_prime_n_add_sixteen_uncanceled_edge
    {k n d p : ℕ} (hk : 16 ≤ k) (hd : k ≤ d)
    (hrows15 : ∀ j, j ∈ Finset.Icc 1 15 →
      n + j ∣ shiftedDiffProductAt k d j)
    (hp : p.Prime)
    (hpnext : p ∣ n + 16)
    (hp_not_edge : ¬ p ∣ d - 15)
    (hlarge : d + k - 15 < p) :
    ¬ n + 16 ∣ shiftedDiffProductAt k d 16 := by
  have hp_not_prev : ¬ p ∣ n + 15 := by
    apply prime_not_dvd_of_dvd_succ (a := n + 15) hp
    simpa [Nat.add_assoc] using hpnext
  exact row_sixteen_escape_after_rows_fifteen_of_large_prime_n_add_sixteen
    (k := k) (n := n) (d := d) (p := p) hk hd hrows15
    hp hpnext hp_not_prev hp_not_edge hlarge

/--
Boundary-prime form with no explicit cancellation hypotheses: if a prime
divides `n+16` and is larger than the row-15 cap `d+k-15`, then row `16`
fails after rows `1,...,15` divide.
-/
theorem row_sixteen_escape_after_rows_fifteen_of_large_prime_n_add_sixteen_large
    {k n d p : ℕ} (hk : 16 ≤ k) (hd : k ≤ d)
    (hrows15 : ∀ j, j ∈ Finset.Icc 1 15 →
      n + j ∣ shiftedDiffProductAt k d j)
    (hp : p.Prime)
    (hpnext : p ∣ n + 16)
    (hlarge : d + k - 15 < p) :
    ¬ n + 16 ∣ shiftedDiffProductAt k d 16 := by
  have hp_not_edge : ¬ p ∣ d - 15 := by
    apply not_dvd_of_pos_lt
    · omega
    · omega
  exact row_sixteen_escape_after_rows_fifteen_of_large_prime_n_add_sixteen_uncanceled_edge
    (k := k) (n := n) (d := d) (p := p) hk hd hrows15
    hp hpnext hp_not_edge hlarge

/--
Smoothness boundary form: after rows `1,...,15` divide, nonsmoothness of
`n+16` above the row-15 cap `d+k-15` forces row-sixteen escape.
-/
theorem row_sixteen_escape_after_rows_fifteen_of_n_add_sixteen_not_smooth
    {k n d : ℕ} (hk : 16 ≤ k) (hd : k ≤ d)
    (hrows15 : ∀ j, j ∈ Finset.Icc 1 15 →
      n + j ∣ shiftedDiffProductAt k d j)
    (hnotSmooth : ¬ SmoothUpTo (d + k - 15) (n + 16)) :
    ¬ n + 16 ∣ shiftedDiffProductAt k d 16 := by
  rw [SmoothUpTo] at hnotSmooth
  push Not at hnotSmooth
  obtain ⟨p, hp, hpdiv, hpgt⟩ := hnotSmooth
  exact row_sixteen_escape_after_rows_fifteen_of_large_prime_n_add_sixteen_large
    (k := k) (n := n) (d := d) (p := p) hk hd hrows15
    hp hpdiv (by omega)

/--
Prime-existence version of the remaining split.  To prove row-prefix-sixteen
escape, it is enough to prove that every `k >= 16` row-prefix-fifteen survivor
has a large uncanceled prime in `n+16`, and separately prove full-row escape for
the finite range `5 <= k <= 15`.
-/
theorem row_prefix_sixteen_escape_of_large_prime_boundary_and_small_k_escape
    (hboundary : ∀ k n d : ℕ, 16 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      (∀ j, j ∈ Finset.Icc 1 15 →
        n + j ∣ shiftedDiffProductAt k d j) →
      ∃ p, p.Prime ∧ p ∣ n + 16 ∧ ¬ p ∣ n + 15 ∧
        ¬ p ∣ d - 15 ∧ d + k - 15 < p)
    (hsmall : ∀ k n d : ℕ, 5 ≤ k → k ≤ 15 → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ ¬ n + j ∣ shiftedDiffProductAt k d j) :
    ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ n + j ∣ shiftedDiffProductAt k d j := by
  apply row_prefix_sixteen_escape_of_boundary_and_small_k_escape
  · intro k n d hk hd hupper hlower hrows15
    obtain ⟨p, hp, hpnext, hp_not_prev, hp_not_edge, hlarge⟩ :=
      hboundary k n d hk hd hupper hlower hrows15
    exact row_sixteen_escape_after_rows_fifteen_of_large_prime_n_add_sixteen
      (k := k) (n := n) (d := d) (p := p) hk hd hrows15
      hp hpnext hp_not_prev hp_not_edge hlarge
  · exact hsmall

/--
Sharper prime-existence split: the previous-term condition is automatic, so the
boundary target only needs a large prime in `n+16` that is not canceled by
`d-15`.
-/
theorem row_prefix_sixteen_escape_of_large_prime_boundary_edge_and_small_k_escape
    (hboundary : ∀ k n d : ℕ, 16 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      (∀ j, j ∈ Finset.Icc 1 15 →
        n + j ∣ shiftedDiffProductAt k d j) →
      ∃ p, p.Prime ∧ p ∣ n + 16 ∧ ¬ p ∣ d - 15 ∧
        d + k - 15 < p)
    (hsmall : ∀ k n d : ℕ, 5 ≤ k → k ≤ 15 → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ ¬ n + j ∣ shiftedDiffProductAt k d j) :
    ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ n + j ∣ shiftedDiffProductAt k d j := by
  apply row_prefix_sixteen_escape_of_large_prime_boundary_and_small_k_escape
  · intro k n d hk hd hupper hlower hrows15
    obtain ⟨p, hp, hpnext, hp_not_edge, hlarge⟩ :=
      hboundary k n d hk hd hupper hlower hrows15
    have hp_not_prev : ¬ p ∣ n + 15 := by
      apply prime_not_dvd_of_dvd_succ (a := n + 15) hp
      simpa [Nat.add_assoc] using hpnext
    exact ⟨p, hp, hpnext, hp_not_prev, hp_not_edge, hlarge⟩
  · exact hsmall

/--
Largest-prime version of the remaining split: for the `k >= 16` branch, it is
enough to find a prime divisor of `n+16` above the row-15 cap `d+k-15`.
-/
theorem row_prefix_sixteen_escape_of_large_prime_boundary_large_and_small_k_escape
    (hboundary : ∀ k n d : ℕ, 16 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      (∀ j, j ∈ Finset.Icc 1 15 →
        n + j ∣ shiftedDiffProductAt k d j) →
      ∃ p, p.Prime ∧ p ∣ n + 16 ∧ d + k - 15 < p)
    (hsmall : ∀ k n d : ℕ, 5 ≤ k → k ≤ 15 → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ ¬ n + j ∣ shiftedDiffProductAt k d j) :
    ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ n + j ∣ shiftedDiffProductAt k d j := by
  apply row_prefix_sixteen_escape_of_large_prime_boundary_edge_and_small_k_escape
  · intro k n d hk hd hupper hlower hrows15
    obtain ⟨p, hp, hpnext, hlarge⟩ :=
      hboundary k n d hk hd hupper hlower hrows15
    have hp_not_edge : ¬ p ∣ d - 15 := by
      apply not_dvd_of_pos_lt
      · omega
      · omega
    exact ⟨p, hp, hpnext, hp_not_edge, hlarge⟩
  · exact hsmall

/--
Smoothness version of the remaining split: for the `k >= 16` branch, it is
enough to prove that every row-prefix-fifteen survivor has `n+16` nonsmooth
above the row-15 cap `d+k-15`.
-/
theorem row_prefix_sixteen_escape_of_n_add_sixteen_not_smooth_boundary_and_small_k_escape
    (hboundary : ∀ k n d : ℕ, 16 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      (∀ j, j ∈ Finset.Icc 1 15 →
        n + j ∣ shiftedDiffProductAt k d j) →
      ¬ SmoothUpTo (d + k - 15) (n + 16))
    (hsmall : ∀ k n d : ℕ, 5 ≤ k → k ≤ 15 → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ ¬ n + j ∣ shiftedDiffProductAt k d j) :
    ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k)^k →
      4 * (n + 1)^k ≤ (n + d + 1)^k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ n + j ∣ shiftedDiffProductAt k d j := by
  apply row_prefix_sixteen_escape_of_large_prime_boundary_large_and_small_k_escape
  · intro k n d hk hd hupper hlower hrows15
    have hnotSmooth := hboundary k n d hk hd hupper hlower hrows15
    rw [SmoothUpTo] at hnotSmooth
    push Not at hnotSmooth
    obtain ⟨p, hp, hpdiv, hpgt⟩ := hnotSmooth
    exact ⟨p, hp, hpdiv, by omega⟩
  · exact hsmall

/--
Row-survival smoothness form: if row `j` survives, then `n+j` is smooth up to
the row-specific cap `d+k-j`.
-/
theorem row_dvd_smooth_up_to_row_cap
    {k n d j : ℕ} (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (hrow : n + j ∣ shiftedDiffProductAt k d j) :
    SmoothUpTo (d + k - j) (n + j) := by
  intro p hp hpdiv
  exact row_dvd_prime_le_row_cap hp hd hj hrow hpdiv

/--
Prefix form of the large-prime row escape: a large prime in one of the first
sixteen lower terms gives the row-prefix-sixteen escape.
-/
theorem row_prefix_sixteen_escape_of_large_prime_in_prefix
    {k n d : ℕ} (hd : k ≤ d)
    (hlarge : ∃ j p, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧ p.Prime ∧
      d + k - j < p ∧ p ∣ n + j) :
    ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
      ¬ (n + j ∣ shiftedDiffProductAt k d j) := by
  obtain ⟨j, p, hj, hj16, hp, hpgt, hpdiv⟩ := hlarge
  exact ⟨j, hj, hj16,
    row_escape_of_large_prime_in_n_add hp hd hj hpgt hpdiv⟩

/--
If the first sixteen rows all survive, the corresponding lower terms are smooth
with their row-specific caps.  This is the contrapositive shape of the
large-prime row escape.
-/
theorem row_prefix_sixteen_survivor_smooth
    {k n d : ℕ} (hd : k ≤ d)
    (hsurvive : ∀ j, j ∈ Finset.Icc 1 k → j ≤ 16 →
      n + j ∣ shiftedDiffProductAt k d j) :
    ∀ j, j ∈ Finset.Icc 1 k → j ≤ 16 →
      SmoothUpTo (d + k - j) (n + j) := by
  intro j hj hj16
  exact row_dvd_smooth_up_to_row_cap hd hj (hsurvive j hj hj16)

/--
Any hypothetical cleared `N=4` gap-form solution forces row-specific smoothness
for every lower-block term.
-/
theorem row_smooth_of_four_gap_solution
    {k n d j : ℕ} (hd : k ≤ d) (hj : j ∈ Finset.Icc 1 k)
    (heq : blockProduct k (n + d) = 4 * blockProduct k n) :
    SmoothUpTo (d + k - j) (n + j) := by
  exact row_dvd_smooth_up_to_row_cap hd hj
    (individual_divisor_skeleton_four hd hj heq)

/--
Bounded row-prefix version of the divisor-skeleton escape bridge.  It is enough
to find a failed row divisibility among `j=1,...,16` throughout the remaining
`N=4` ratio window.
-/
theorem no_solution_four_of_row_prefix_sixteen_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ (n + j ∣ shiftedDiffProductAt k d j)) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  apply no_solution_four_of_divisor_skeleton_escape
  intro k n d hk hd hupper hlower
  obtain ⟨j, hj, _hj16, hnot⟩ := hescape k n d hk hd hupper hlower
  exact ⟨j, hj, hnot⟩

/--
Two-filter row-prefix bridge.  It is enough to show that every ratio-window
candidate either has a nonsmooth lower term among `j=1,...,16` under the
row-specific cap, or has an actual failed row divisibility among those rows.
-/
theorem no_solution_four_of_row_prefix_sixteen_smooth_or_row_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
          ¬ SmoothUpTo (d + k - j) (n + j)) ∨
        (∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
          ¬ (n + j ∣ shiftedDiffProductAt k d j))) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : k ≤ 4
  · exact no_solution_four_le_four ⟨k, n, m, hk2, hk4, hm, hq⟩
  · have hk5 : 5 ≤ k := by omega
    obtain ⟨d, hd, _hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    rcases hescape k n d hk5 hd hlo hup with hnotSmooth | hnotRow
    · obtain ⟨j, hj, _hj16, hnot⟩ := hnotSmooth
      exact hnot (row_smooth_of_four_gap_solution hd hj heq)
    · obtain ⟨j, hj, _hj16, hnot⟩ := hnotRow
      exact hnot (individual_divisor_skeleton_four hd hj heq)

/--
Sharper two-filter bridge matching the current exact evidence: after
row-specific smoothness for the first sixteen rows, it would be enough to force
a failed row among `j=1,...,4`.
-/
theorem no_solution_four_of_row_prefix_sixteen_smooth_or_row_four_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
          ¬ SmoothUpTo (d + k - j) (n + j)) ∨
        (∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 4 ∧
          ¬ (n + j ∣ shiftedDiffProductAt k d j))) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  apply no_solution_four_of_row_prefix_sixteen_smooth_or_row_escape
  intro k n d hk hd hupper hlower
  rcases hescape k n d hk hd hupper hlower with hnotSmooth | hnotRow
  · exact Or.inl hnotSmooth
  · obtain ⟨j, hj, hj4, hnot⟩ := hnotRow
    exact Or.inr ⟨j, hj, by omega, hnot⟩

/--
If the stronger polynomial-congruence escape theorem is proved under the
`N=4` ratio window, then `N=4` is a full counterexample.  This packages the
congruences at `a=0,1,...,k+1`, including the divisor skeleton as the middle
range `a=1,...,k`.
-/
theorem no_solution_four_of_polynomial_congruence_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 (k + 1) ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : k ≤ 4
  · exact no_solution_four_le_four ⟨k, n, m, hk2, hk4, hm, hq⟩
  · have hk5 : 5 ≤ k := by omega
    obtain ⟨d, hd, _hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    obtain ⟨a, _ha, hnot⟩ := hescape k n d hk5 hd hlo hup
    exact hnot (polynomial_congruence_family_four
      (k := k) (n := n) (d := d) (a := a) heq)

/--
Bounded-prefix version of the polynomial-congruence escape.  It is enough to
find a failed congruence among `a=0,1,...,8` throughout the remaining `N=4`
ratio window.
-/
theorem no_solution_four_of_polynomial_prefix_eight_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 8 ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : k ≤ 4
  · exact no_solution_four_le_four ⟨k, n, m, hk2, hk4, hm, hq⟩
  · have hk5 : 5 ≤ k := by omega
    obtain ⟨d, hd, _hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    obtain ⟨a, _ha, hnot⟩ := hescape k n d hk5 hd hlo hup
    exact hnot (polynomial_congruence_family_four
      (k := k) (n := n) (d := d) (a := a) heq)

/--
General finite-prefix version of the polynomial-congruence escape bridge.
Any fixed finite prefix that always contains a failed congruence throughout
the remaining `N=4` ratio window would make `N=4` a counterexample.
-/
theorem no_solution_four_of_polynomial_prefix_escape
    (B : ℕ)
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 B ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : k ≤ 4
  · exact no_solution_four_le_four ⟨k, n, m, hk2, hk4, hm, hq⟩
  · have hk5 : 5 ≤ k := by omega
    obtain ⟨d, hd, _hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    obtain ⟨a, _ha, hnot⟩ := hescape k n d hk5 hd hlo hup
    exact hnot (polynomial_congruence_family_four
      (k := k) (n := n) (d := d) (a := a) heq)

/--
Current repaired bounded-prefix bridge candidate.  Prefix `a=0,...,8` is
refuted by exact search, but prefix `a=0,...,15` is the smallest currently
unrefuted finite-prefix target recorded in `PROGRESS_Erdos686.md`.
-/
theorem no_solution_four_of_polynomial_prefix_fifteen_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 15 ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  exact no_solution_four_of_polynomial_prefix_escape 15 hescape

/--
Row-prefix escape implies the corresponding polynomial-prefix escape.  This
uses only the row identity for `fourCongruencePolynomial` at indices
`j ∈ {1,...,k}`.
-/
theorem polynomial_prefix_sixteen_escape_of_row_prefix_sixteen_escape
    {k n d : ℕ} (hd : k ≤ d)
    (hrow : ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
      ¬ (n + j ∣ shiftedDiffProductAt k d j)) :
    ∃ a, a ∈ Finset.Icc 0 16 ∧
      ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a := by
  obtain ⟨j, hj, hj16, hnot⟩ := hrow
  refine ⟨j, ?_, ?_⟩
  · exact Finset.mem_Icc.mpr ⟨by omega, hj16⟩
  · intro hcong
    have hpoly :
        fourCongruencePolynomial k d j =
          (shiftedDiffProductAt k d j : ℤ) :=
      fourCongruencePolynomial_eq_shiftedDiffProductAt hd hj
    have hrowInt :
        ((n + j : ℕ) : ℤ) ∣
          ((shiftedDiffProductAt k d j : ℕ) : ℤ) := by
      simpa [← hpoly] using hcong
    have hrowNat : n + j ∣ shiftedDiffProductAt k d j := by
      exact_mod_cast hrowInt
    exact hnot hrowNat

/--
Ratio-window corollary: a row-prefix-sixteen escape theorem implies the
polynomial-prefix-sixteen escape theorem.
-/
theorem polynomial_prefix_sixteen_escape_in_ratio_window_of_row_prefix_sixteen_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ (n + j ∣ shiftedDiffProductAt k d j))
    {k n d : ℕ} (hk : 5 ≤ k) (hd : k ≤ d)
    (hupper : (n + d + k) ^ k ≤ 4 * (n + k) ^ k)
    (hlower : 4 * (n + 1) ^ k ≤ (n + d + 1) ^ k) :
    ∃ a, a ∈ Finset.Icc 0 16 ∧
      ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a := by
  exact polynomial_prefix_sixteen_escape_of_row_prefix_sixteen_escape hd
    (hescape k n d hk hd hupper hlower)

/--
Local `a=8` support lemma for the bounded-prefix strategy.  If a prime larger
than every factor in the row product `H_{k,d}(8)` divides `n+8`, then the
`a=8` congruence cannot hold.
-/
theorem polynomial_prefix_eight_escape_of_large_prime_in_n_add_eight
    {k n d p : ℕ}
    (hp : p.Prime) (hd : k ≤ d) (hk8 : 8 ≤ k)
    (hlarge : d + k - 8 < p) (hpdiv : p ∣ n + 8) :
    ∃ a, a ∈ Finset.Icc 0 8 ∧
      ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a := by
  refine ⟨8, by norm_num, ?_⟩
  intro hcong
  have h8mem : 8 ∈ Finset.Icc 1 k := by
    simp [hk8]
  have hpoly :
      fourCongruencePolynomial k d (8 : ℕ) =
        (shiftedDiffProductAt k d 8 : ℤ) :=
    fourCongruencePolynomial_eq_shiftedDiffProductAt hd h8mem
  have hrowInt :
      ((n + 8 : ℕ) : ℤ) ∣ ((shiftedDiffProductAt k d 8 : ℕ) : ℤ) := by
    simpa [← hpoly] using hcong
  have hrow : n + 8 ∣ shiftedDiffProductAt k d 8 := by
    exact_mod_cast hrowInt
  have hp_prod : p ∣ shiftedDiffProductAt k d 8 :=
    dvd_trans hpdiv hrow
  have hp_prod' :
      p ∣ ∏ i ∈ Finset.Icc 1 k, (d + i - 8) := by
    simpa [shiftedDiffProductAt] using hp_prod
  obtain ⟨i, hi, hpi⟩ := prime_dvd_finset_prod_exists hp hp_prod'
  have hi_le : i ≤ k := (Finset.mem_Icc.mp hi).2
  have hpos : 0 < d + i - 8 := by
    have hi_pos : 1 ≤ i := (Finset.mem_Icc.mp hi).1
    omega
  have hp_le : p ≤ d + i - 8 := Nat.le_of_dvd hpos hpi
  have hfactor_le : d + i - 8 ≤ d + k - 8 := by
    omega
  omega

/--
Wrapper for the next finite-prime reduction: to prove the bounded
`a=0,...,8` escape it is enough either to find an earlier prefix failure
among `a=0,...,7`, or to force a prime `p > d+k-8` dividing `n+8`.
-/
theorem polynomial_prefix_eight_escape_of_prefix_seven_failure_or_large_prime
    {k n d : ℕ}
    (hd : k ≤ d) (hk8 : 8 ≤ k)
    (h :
      (∃ a, a ∈ Finset.Icc 0 7 ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) ∨
      ∃ p, p.Prime ∧ d + k - 8 < p ∧ p ∣ n + 8) :
    ∃ a, a ∈ Finset.Icc 0 8 ∧
      ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a := by
  rcases h with hprefix | hlarge
  · obtain ⟨a, ha7, hnot⟩ := hprefix
    refine ⟨a, ?_, hnot⟩
    exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp ha7).1,
        le_trans (Finset.mem_Icc.mp ha7).2 (by norm_num)⟩
  · obtain ⟨p, hp, hgt, hpdiv⟩ := hlarge
    exact polynomial_prefix_eight_escape_of_large_prime_in_n_add_eight
      (k := k) (n := n) (d := d) (p := p) hp hd hk8 hgt hpdiv

/--
Conditional `k≥8` form of the bounded-prefix strategy.  Once the prefix-seven
large-prime theorem is available, the corrected `a=0,...,8` escape follows
throughout the ratio window for every `k≥8`.
-/
theorem polynomial_prefix_eight_escape_in_ratio_window_of_prefix_seven_large_prime
    (hforce : ∀ k n d : ℕ, 8 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∀ a, a ∈ Finset.Icc 0 7 →
        ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) →
      ∃ p, p.Prime ∧ d + k - 8 < p ∧ p ∣ n + 8)
    {k n d : ℕ} (hk8 : 8 ≤ k) (hd : k ≤ d)
    (hupper : (n + d + k) ^ k ≤ 4 * (n + k) ^ k)
    (hlower : 4 * (n + 1) ^ k ≤ (n + d + 1) ^ k) :
    ∃ a, a ∈ Finset.Icc 0 8 ∧
      ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a := by
  by_cases hprefix :
      ∃ a, a ∈ Finset.Icc 0 7 ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a
  · exact polynomial_prefix_eight_escape_of_prefix_seven_failure_or_large_prime
      (k := k) (n := n) (d := d) hd hk8 (Or.inl hprefix)
  · have hall : ∀ a, a ∈ Finset.Icc 0 7 →
        ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a := by
      intro a ha
      by_contra hnot
      exact hprefix ⟨a, ha, hnot⟩
    exact polynomial_prefix_eight_escape_of_prefix_seven_failure_or_large_prime
      (k := k) (n := n) (d := d) hd hk8
      (Or.inr (hforce k n d hk8 hd hupper hlower hall))

/--
Finite-difference escape bridge: if the `N=4` ratio window always makes the
finite-difference certificate nonzero for every integer quotient system
`(n+a)q_a=H_{k,d}(a)`, then `N=4` is a full counterexample.
-/
theorem no_solution_four_of_finite_difference_nonzero
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∀ q : ℕ → ℤ,
        (∀ a, a ∈ Finset.range (k + 1) →
          ((n + a : ℕ) : ℤ) * q a = fourCongruencePolynomial k d a) →
        (∑ a ∈ Finset.range (k + 1),
          ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * q a) ≠ 0) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : k ≤ 4
  · exact no_solution_four_le_four ⟨k, n, m, hk2, hk4, hm, hq⟩
  · have hk5 : 5 ≤ k := by omega
    obtain ⟨d, hd, _hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    have hn : 0 < n := by
      have hbelow := difference_block_below_n_of_four_solution hk5 hd heq
      omega
    obtain ⟨q, hqpoly, hzero⟩ :=
      exists_finite_difference_quotients_of_four_gap_solution
        (by omega : 1 ≤ k) hn heq
    exact (hescape k n d hk5 hd hlo hup q hqpoly) hzero

/--
The centered-lcm escape target is stronger than the localized divisor-skeleton
escape target: if the lower lcm cannot divide the centered difference product,
then at least one localized row divisibility must fail.
-/
theorem divisor_skeleton_escape_of_lower_lcm_centered_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d) :
    ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ ¬ n + j ∣ shiftedDiffProductAt k d j := by
  intro k n d hk hd hlo hup
  by_contra hno_escape
  have hall : ∀ j, j ∈ Finset.Icc 1 k → n + j ∣ shiftedDiffProductAt k d j := by
    intro j hj
    by_contra hnot
    exact hno_escape ⟨j, hj, hnot⟩
  exact (hescape k n d hk hd hlo hup)
    (lower_lcm_dvd_centeredDiffProduct_of_individual_skeleton hall)

/--
An even sharper remaining target: if the ratio window always prevents the
lower block lcm from dividing the centered difference product, then `N=4` is a
full counterexample.
-/
theorem no_solution_four_of_lower_lcm_centered_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  rintro ⟨k, n, m, hk2, hm, hq⟩
  by_cases hk4 : k ≤ 4
  · exact no_solution_four_le_four ⟨k, n, m, hk2, hk4, hm, hq⟩
  · have hk5 : 5 ≤ k := by omega
    obtain ⟨d, hd, _hmd, heq⟩ := four_solution_with_gap_of_solution hm hq
    obtain ⟨hlo, hup⟩ := ratio_window_four_nat heq
    exact (hescape k n d hk5 hd hlo hup) (lower_lcm_dvd_centeredDiffProduct_four hd heq)

/--
Equivalent working target in the form seen in the exact searches: it is enough
to find one lower-block term whose `p`-adic valuation exceeds the valuation
available in the centered difference product.
-/
theorem no_solution_four_of_lower_term_factorization_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j p, j ∈ Finset.Icc 1 k ∧
        (centeredDiffProduct k d).factorization p < (n + j).factorization p) :
    ¬ ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (4 : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  apply no_solution_four_of_lower_lcm_centered_escape
  intro k n d hk hd hlo hup
  obtain ⟨j, p, hj, hval⟩ := hescape k n d hk hd hlo hup
  exact lower_term_factorization_obstructs_lower_lcm_of_gap (by omega) hd hj hval

/--
The exact formal target for a negative solution of Erdős 686, conditional on
odd-block separation: the universal representation statement is false because
`N=4` is not represented.
-/
theorem erdos686_false_of_oddBlock_separation
    (hsep : ∀ k n m : ℕ, 4 ≤ k → m ≥ n + k → oddBlock k m ≠ oddBlock k n) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_oddBlock_separation hsep (hall 4 (by norm_num))

/--
The exact formal target for a negative solution of Erdős 686, conditional on
the divisor-skeleton escape theorem.
-/
theorem erdos686_false_of_divisor_skeleton_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ ¬ n + j ∣ shiftedDiffProductAt k d j) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_divisor_skeleton_escape hescape (hall 4 (by norm_num))

/--
Global bridge for the row-prefix-sixteen target: a failed row among
`j=1,...,16` throughout the remaining `N=4` ratio window refutes the universal
Erdős 686 representation statement via `N=4`.
-/
theorem erdos686_false_of_row_prefix_sixteen_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
        ¬ (n + j ∣ shiftedDiffProductAt k d j)) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_row_prefix_sixteen_escape
    hescape (hall 4 (by norm_num))

/--
Global two-filter row-prefix bridge: a proof that every `N=4` ratio-window
candidate either has a nonsmooth first-sixteen lower term or a failed
first-sixteen row divisibility refutes the universal Erdős 686 statement via
`N=4`.
-/
theorem erdos686_false_of_row_prefix_sixteen_smooth_or_row_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
          ¬ SmoothUpTo (d + k - j) (n + j)) ∨
        (∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
          ¬ (n + j ∣ shiftedDiffProductAt k d j))) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_row_prefix_sixteen_smooth_or_row_escape
    hescape (hall 4 (by norm_num))

/--
Global row-four version of the two-filter bridge: row-cap nonsmoothness in the
first sixteen rows, or failed row divisibility among the first four rows,
throughout the `N=4` ratio window would refute the universal statement via
`N=4`.
-/
theorem erdos686_false_of_row_prefix_sixteen_smooth_or_row_four_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 16 ∧
          ¬ SmoothUpTo (d + k - j) (n + j)) ∨
        (∃ j, j ∈ Finset.Icc 1 k ∧ j ≤ 4 ∧
          ¬ (n + j ∣ shiftedDiffProductAt k d j))) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_row_prefix_sixteen_smooth_or_row_four_escape
    hescape (hall 4 (by norm_num))

/--
The exact formal target for a negative solution of Erdős 686, conditional on
the polynomial-congruence escape theorem.
-/
theorem erdos686_false_of_polynomial_congruence_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 (k + 1) ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_polynomial_congruence_escape hescape (hall 4 (by norm_num))

/--
The exact formal target for a negative solution of Erdős 686, conditional on
the bounded polynomial-prefix escape theorem for `a=0,1,...,8`.
-/
theorem erdos686_false_of_polynomial_prefix_eight_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 8 ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_polynomial_prefix_eight_escape
    hescape (hall 4 (by norm_num))

/--
General finite-prefix global bridge: any fixed finite polynomial-prefix escape
throughout the remaining `N=4` ratio window refutes the universal Erdős 686
representation statement via `N=4`.
-/
theorem erdos686_false_of_polynomial_prefix_escape
    (B : ℕ)
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 B ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_polynomial_prefix_escape
    B hescape (hall 4 (by norm_num))

/--
Global bridge for the current repaired finite-prefix candidate `a=0,...,15`.
-/
theorem erdos686_false_of_polynomial_prefix_fifteen_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 15 ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  exact erdos686_false_of_polynomial_prefix_escape 15 hescape

/--
Two-obligation final reduction for the current `N=4` strategy.  It is enough
to prove the bounded-prefix escape directly for the small cases `5≤k≤7`, and
to prove the prefix-seven large-prime theorem for all `k≥8`.
-/
theorem erdos686_false_of_small_prefix_escape_and_prefix_seven_large_prime
    (hsmall : ∀ k n d : ℕ, 5 ≤ k → k ≤ 7 → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 8 ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a)
    (hforce : ∀ k n d : ℕ, 8 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∀ a, a ∈ Finset.Icc 0 7 →
        ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) →
      ∃ p, p.Prime ∧ d + k - 8 < p ∧ p ∣ n + 8) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  apply erdos686_false_of_polynomial_prefix_eight_escape
  intro k n d hk5 hd hupper hlower
  by_cases hk8 : 8 ≤ k
  · exact polynomial_prefix_eight_escape_in_ratio_window_of_prefix_seven_large_prime
      hforce hk8 hd hupper hlower
  · have hk7 : k ≤ 7 := by omega
    exact hsmall k n d hk5 hk7 hd hupper hlower

/--
Sharper small-case variant of the two-obligation reduction.  The exact
small-`k` searches suggest that for `5≤k≤7` a failed congruence should already
occur among `a=0,1,2,3`; this theorem packages that sharper obligation with
the same `k≥8` prefix-seven large-prime target.
-/
theorem erdos686_false_of_small_prefix_three_escape_and_prefix_seven_large_prime
    (hsmall : ∀ k n d : ℕ, 5 ≤ k → k ≤ 7 → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ a, a ∈ Finset.Icc 0 3 ∧
        ¬ ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a)
    (hforce : ∀ k n d : ℕ, 8 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      (∀ a, a ∈ Finset.Icc 0 7 →
        ((n + a : ℕ) : ℤ) ∣ fourCongruencePolynomial k d a) →
      ∃ p, p.Prime ∧ d + k - 8 < p ∧ p ∣ n + 8) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  apply erdos686_false_of_small_prefix_escape_and_prefix_seven_large_prime
  · intro k n d hk5 hk7 hd hupper hlower
    obtain ⟨a, ha3, hnot⟩ := hsmall k n d hk5 hk7 hd hupper hlower
    refine ⟨a, ?_, hnot⟩
    exact Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp ha3).1,
        le_trans (Finset.mem_Icc.mp ha3).2 (by norm_num)⟩
  · exact hforce

/--
The exact formal target for a negative solution of Erdős 686, conditional on
the finite-difference certificate being nonzero throughout the remaining
`N=4`, `k≥5` ratio window.
-/
theorem erdos686_false_of_finite_difference_nonzero
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∀ q : ℕ → ℤ,
        (∀ a, a ∈ Finset.range (k + 1) →
          ((n + a : ℕ) : ℤ) * q a = fourCongruencePolynomial k d a) →
        (∑ a ∈ Finset.range (k + 1),
          ((-1 : ℤ) ^ (k - a) * (Nat.choose k a : ℤ)) * q a) ≠ 0) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_finite_difference_nonzero hescape (hall 4 (by norm_num))

/--
The exact formal target for a negative solution of Erdős 686, conditional on
the lower centered-lcm escape theorem.
-/
theorem erdos686_false_of_lower_lcm_centered_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ¬ lowerBlockLcm k n ∣ centeredDiffProduct k d) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_lower_lcm_centered_escape hescape (hall 4 (by norm_num))

/--
The same final counterexample bridge, with the remaining escape theorem stated
as a single lower-term `p`-adic valuation gap.
-/
theorem erdos686_false_of_lower_term_factorization_escape
    (hescape : ∀ k n d : ℕ, 5 ≤ k → k ≤ d →
      (n + d + k) ^ k ≤ 4 * (n + k) ^ k →
      4 * (n + 1) ^ k ≤ (n + d + 1) ^ k →
      ∃ j p, j ∈ Finset.Icc 1 k ∧
        (centeredDiffProduct k d).factorization p < (n + j).factorization p) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ,
      2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) =
        (∏ i ∈ Finset.Icc 1 k, (((m + i : ℕ) : ℚ))) /
          (∏ i ∈ Finset.Icc 1 k, (((n + i : ℕ) : ℚ))) := by
  intro hall
  exact no_solution_four_of_lower_term_factorization_escape hescape (hall 4 (by norm_num))

end Erdos686Variant

end Erdos686
