import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoFinal.RateBasis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoNumeric.Selector
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoEdge.FixedEdge

/-! UNCOMPILED CANDIDATE. Actual rate plus seven officially re-frozen selector statements; And.intro bundle then alias-only normalization. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoFinalConsumers
open Math.B699.I11ThreeTwoScaled
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

theorem actual_rate_eq_rational : qRate qBase = rateRational := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda,
    rateRational, rateNumerator, rateDenominator]

theorem actual_rate_pow162_gt_48 : (48 : ℚ) < qRate qBase ^ 162 := by
  rw [actual_rate_eq_rational]
  exact rateRational_pow162_gt_48

theorem actual_numeric_certificates :
    (48 : ℚ) < qRate qBase ^ 162 ∧
    threeTwoZ ^ (threeTwoM - 1) ≤ 4 * threeTwoY0 ∧
    (3 : ℕ) ^ 46000 ≤ threeTwoZ ^ 774 ∧
    ((3 : ℕ) ^ 46000) ^ threeTwoM ≤ threeTwoY0 ^ 774 ∧
    (4 : ℕ) ^ 774 * (3 ^ 46000) ^ (threeTwoM + 1) ≤ threeTwoZ ^ (774 * threeTwoM) ∧
    (2 : ℕ) ^ 69000 ≤ threeTwoZ ^ 732 ∧
    ((2 : ℕ) ^ 69000) ^ threeTwoM ≤ threeTwoY0 ^ 732 ∧
    (4 : ℕ) ^ 732 * (2 ^ 69000) ^ (threeTwoM + 1) ≤ threeTwoZ ^ (732 * threeTwoM) := by
  have h := And.intro actual_rate_pow162_gt_48
    (And.intro Math.B699.I11ThreeTwoNumeric.predecessor
      (And.intro Math.B699.I11ThreeTwoNumeric.p_rate
        (And.intro Math.B699.I11ThreeTwoNumeric.p_base
          (And.intro Math.B699.I11ThreeTwoNumeric.p_lookahead
            (And.intro Math.B699.I11ThreeTwoNumeric.q_rate
              (And.intro Math.B699.I11ThreeTwoNumeric.q_base
                Math.B699.I11ThreeTwoNumeric.q_lookahead))))))
  simpa only [threeTwoZ, Math.B699.I11ThreeTwoNumeric.certificateZ,
    threeTwoM, threeTwoY0] using h

theorem three_two_edge_of_growth_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 23 15 (rowDelta row) (1 / 9))
      (qCore 23 15 (1 / 9)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 23 15 (rowDelta row) (1 / 9))
      (eCore 23 15 (1 / 9)))
    (Y e f A C : ℕ) (hY : threeTwoY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 3 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hupperQ : 2 ^ f * C ≤ 2 * Y)
    (hgap : |(3 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 226 ≤ A ^ 1000 ∨ Y ^ 268 ≤ C ^ 1000 := by
  obtain ⟨hA, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  exact three_two_edge_of_fixed_certificates qt et hA
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11ThreeTwoFinalConsumers
