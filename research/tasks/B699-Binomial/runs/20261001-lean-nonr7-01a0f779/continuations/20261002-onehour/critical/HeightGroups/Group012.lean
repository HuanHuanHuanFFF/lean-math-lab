import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group011
set_option Elab.async false
/- Frozen member 48 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\GrowthInputs.lean 1a774dea34ae8389fdfa55519fa0c7fe1b3a91b8850fb792df822cb373c4dc13 -/
section HeightMember048



/-! UNCOMPILED CANDIDATE. Standard actual Q/E bounds are reduced to the
fixed GrowthTree and four m=1 polynomial inequalities, using the actual
all-m (5,4) factorial theorem. The desired growth bound is not a field. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.PadeGrowthNormalization Math.B699.PadeActualGrowth
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf Math.B699.PadeMoment
open Math.B699.ElementaryFactorialBound Math.B699.I11TwoFivePrefix

def qLambda : ℚ := 3471657440109699659204039683 / 79228162514264337593543950336
def eLambda : ℚ := 305863978762465520211566521 / 79228162514264337593543950336
def qBase : ℚ := beta 5 4 * qLambda
def eBase : ℚ := beta 5 4 * eLambda

theorem fixed_bases_pos : 0 < qLambda ∧ 0 < eLambda ∧ 0 < qBase ∧ 0 < eBase := by
  norm_num [qLambda, eLambda, qBase, eBase, beta]

theorem geometric_majorant (F K beta lam weight : ℚ) (m : ℕ)
    (hm : 1 ≤ m) (hbeta : 0 ≤ beta) (hlam : 0 ≤ lam) (hweight : 0 ≤ weight)
    (hF : F ≤ K * beta ^ m) (hcap : K * weight ≤ lam) :
    F * (lam ^ (m - 1) * weight) ≤ (beta * lam) ^ m := by
  calc
    _ ≤ (K * beta ^ m) * (lam ^ (m - 1) * weight) :=
      mul_le_mul_of_nonneg_right hF (mul_nonneg (pow_nonneg hlam _) hweight)
    _ = (beta ^ m * lam ^ (m - 1)) * (K * weight) := by ring
    _ ≤ (beta ^ m * lam ^ (m - 1)) * lam :=
      mul_le_mul_of_nonneg_left hcap (mul_nonneg (pow_nonneg hbeta _) (pow_nonneg hlam _))
    _ = (beta * lam) ^ m := by
      simp only [mul_pow]
      rw [mul_assoc, ← pow_succ, Nat.sub_add_cancel hm]

theorem actual_q_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (qWeight 5 4 delta (3 / 128)) (qCore 5 4 (3 / 128)))
    (hcap : 2 * |actualQ 5 4 delta 1 (3 / 128)| ≤ beta 5 4 * lam) :
    |actualQ 5 4 delta m (3 / 128)| ≤ (beta 5 4 * lam) ^ m := by
  have hd : delta ≤ 4 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 5 4 := by norm_num [beta]
  have hw : 0 ≤ moment (qWeight 5 4 delta (3 / 128)) :=
    bernsteinCone_moment_nonneg (cone_qWeight 5 4 delta (3 / 128) (by norm_num))
  have heq : (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
      moment (qWeight 5 4 delta (3 / 128)) =
      2 * |actualQ 5 4 delta 1 (3 / 128)| / beta 5 4 := by
    rw [actualQ_one_abs 5 4 delta (3 / 128) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
      moment (qWeight 5 4 delta (3 / 128)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 5 4)] using hcap)
  have hsource := actual_q_eval_bound 5 4 delta m (3 / 128) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 5 4 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_5_4 delta m hdelta hm)) hcap')

theorem actual_e_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (eWeight 5 4 delta (3 / 128)) (eCore 5 4 (3 / 128)))
    (hcap : 2 * |actualE 5 4 delta 1 (3 / 128)| ≤ beta 5 4 * lam) :
    |actualE 5 4 delta m (3 / 128)| ≤ (beta 5 4 * lam) ^ m := by
  have hd : delta ≤ 4 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 5 4 := by norm_num [beta]
  have hw : 0 ≤ moment (eWeight 5 4 delta (3 / 128)) :=
    bernsteinCone_moment_nonneg (cone_eWeight 5 4 delta (3 / 128) (by norm_num))
  have heq : (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
      moment (eWeight 5 4 delta (3 / 128)) =
      2 * |actualE 5 4 delta 1 (3 / 128)| / beta 5 4 := by
    rw [actualE_one_abs 5 4 delta (3 / 128) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
      moment (eWeight 5 4 delta (3 / 128)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 5 4)] using hcap)
  have hsource := actual_e_eval_bound 5 4 delta m (3 / 128) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 5 4 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_5_4 delta m hdelta hm)) hcap')

theorem standard_bounds_from_fixed_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128))
      (qCore 5 4 (3 / 128)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128))
      (eCore 5 4 (3 / 128)))
    (qc : ∀ row : Bool, 2 * |actualQ 5 4 (rowDelta row) 1 (3 / 128)| ≤ qBase)
    (ec : ∀ row : Bool, 2 * |actualE 5 4 (rowDelta row) 1 (3 / 128)| ≤ eBase) :
    (∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |qEval m row| ≤ qBase ^ m) ∧
      (∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |eEval m row| ≤ eBase ^ m) := by
  constructor
  · intro m hm row
    exact actual_q_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      qLambda fixed_bases_pos.1 (qt row) (qc row)
  · intro m hm row
    exact actual_e_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      eLambda fixed_bases_pos.2.1 (et row) (ec row)

end Math.B699.I11TwoFiveScaled

end HeightMember048
/- Frozen member 49 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\SmallCertificates.lean 676b688d2d45117b4625f52092397289f324d6db55e7ce9e98025e9a26da1bad -/
section HeightMember049



/-! UNCOMPILED CANDIDATE. Only low-degree actual polynomials and fixed
rational inequalities are evaluated. The 329th-power certificate is deliberately
left for the parent's bounded serial verifier; no giant selector powers occur. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.PadeGrowthNormalization Math.B699.PadeConstruction
open Math.B699.ElementaryFactorialBound Math.B699.I11TwoFivePrefix

theorem fixed_initial_q_cap (row : Bool) :
    2 * |actualQ 5 4 (rowDelta row) 1 (3 / 128)| ≤ qBase := by
  cases row <;>
    norm_num [actualQ, rowDelta, qBase, beta, qLambda, qPolynomial,
      coefficientPolynomial, qCoefficient, qMagnitude, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 5 4 (rowDelta row) 1 (3 / 128)| ≤ eBase := by
  cases row <;>
    norm_num [actualE, rowDelta, eBase, beta, eLambda, ePolynomial,
      coefficientPolynomial, eCoefficient, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_qRate_ge_one : 1 ≤ qRate qBase := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda]

theorem fixed_wRate_ge_Z : (twoFiveZ : ℚ) ≤ wRate eBase := by
  norm_num [twoFiveZ, wRate, wNumerator, wDenominator, contentBase, eBase, beta, eLambda]

end Math.B699.I11TwoFiveScaled

end HeightMember049
/- Frozen member 50 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\FixedEdge.lean c2c3be0c6234bee52adc7591c8b36f6dfcb8f96027adaeea1cffc04e8ad690f9 -/
section HeightMember050



/-!
UNCOMPILED. Final fixed two-five cofactor edge.
Remaining special data: four actual GrowthTrees and eight explicit finite numeric
certificates. All actual rows, Hom identities, G and scaling bounds are constructed.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.I11TwoFivePrefix Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem two_five_edge_of_fixed_certificates
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128))
      (qCore 5 4 (3 / 128)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128))
      (eCore 5 4 (3 / 128)))
    (hAbase : (48 : ℚ) < qRate qBase ^ 329)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees qt et
    fixed_initial_q_cap fixed_initial_e_cap
  exact edge_of_actual_growth qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2 hQ hE
    fixed_qRate_ge_one hAbase fixed_wRate_ge_Z
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11TwoFiveScaled

end HeightMember050
/- Frozen member 51 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveFinal\ActualNumeric.lean 8dc6d55123a66d9834875a7849938c5e570364e6d4b0d93c344ba70412282671 -/
section HeightMember051




/-! UNCOMPILED. Bind the actual rate and build a source bundle before any alias
normalization. Large powers are never resolved by cross-name definitional equality. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveFinalConsumers
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFivePrefix
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

theorem actual_rate_eq_rational : qRate qBase = rateRational := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda,
    rateRational, rateNumerator, rateDenominator]

theorem actual_rate_pow329_gt_48 : (48 : ℚ) < qRate qBase ^ 329 := by
  rw [actual_rate_eq_rational]
  exact rateRational_pow329_gt_48

theorem actual_numeric_certificates :
    (48 : ℚ) < qRate qBase ^ 329 ∧
    twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0 ∧
    (2 : ℕ) ^ 35000 ≤ twoFiveZ ^ 752 ∧
    ((2 : ℕ) ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752 ∧
    (4 : ℕ) ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM) ∧
    (5 : ℕ) ^ 15000 ≤ twoFiveZ ^ 748 ∧
    ((5 : ℕ) ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748 ∧
    (4 : ℕ) ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM) := by
  have h := And.intro actual_rate_pow329_gt_48
    (And.intro Math.B699.I11TwoFiveNumeric.predecessor
      (And.intro Math.B699.I11TwoFiveNumeric.p_rate
        (And.intro Math.B699.I11TwoFiveNumeric.p_base
          (And.intro Math.B699.I11TwoFiveNumeric.p_lookahead
            (And.intro Math.B699.I11TwoFiveNumeric.q_rate
              (And.intro Math.B699.I11TwoFiveNumeric.q_base
                Math.B699.I11TwoFiveNumeric.q_lookahead))))))
  simpa only [twoFiveZ, Math.B699.I11TwoFiveNumeric.certificateZ,
    twoFiveM, twoFiveY0] using h

theorem two_five_edge_of_growth_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128))
      (qCore 5 4 (3 / 128)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128))
      (eCore 5 4 (3 / 128)))
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  obtain ⟨hA, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  exact two_five_edge_of_fixed_certificates qt et hA
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11TwoFiveFinalConsumers

end HeightMember051
