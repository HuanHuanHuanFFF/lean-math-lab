import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-two-five-final-consumers-5e2d13bb».RateBasis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TwoFiveNumeric.Selector
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TwoFiveEdge.FixedEdge

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
