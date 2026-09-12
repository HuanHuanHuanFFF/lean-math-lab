import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-final-consumers-5e2d13bb».RateBasis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-growth-tree-5e2d13bb».selector.candidate.lean.I11Numeric.I11SevenTwoSelector
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb».FixedEdge

/-! UNCOMPILED CANDIDATE. Bind the actual c9d5 qRate and the seven exact selector theorems. Build And.intro bundle before alias-only normalization. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11SevenTwoFinalConsumers
open Math.B699.I11SevenTwoScaled
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

theorem actual_rate_eq_rational : qRate qBase = rateRational := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda,
    rateRational, rateNumerator, rateDenominator]

theorem actual_rate_pow285_gt_48 : (48 : ℚ) < qRate qBase ^ 285 := by
  rw [actual_rate_eq_rational]
  exact rateRational_pow285_gt_48

theorem actual_numeric_certificates :
    (48 : ℚ) < qRate qBase ^ 285 ∧
    sevenTwoZ ^ (sevenTwoM - 1) ≤ 4 * sevenTwoY0 ∧
    (7 : ℕ) ^ 18000 ≤ sevenTwoZ ^ 940 ∧
    ((7 : ℕ) ^ 18000) ^ sevenTwoM ≤ sevenTwoY0 ^ 940 ∧
    (4 : ℕ) ^ 940 * (7 ^ 18000) ^ (sevenTwoM + 1) ≤ sevenTwoZ ^ (940 * sevenTwoM) ∧
    (2 : ℕ) ^ 36000 ≤ sevenTwoZ ^ 670 ∧
    ((2 : ℕ) ^ 36000) ^ sevenTwoM ≤ sevenTwoY0 ^ 670 ∧
    (4 : ℕ) ^ 670 * (2 ^ 36000) ^ (sevenTwoM + 1) ≤ sevenTwoZ ^ (670 * sevenTwoM) := by
  have h := And.intro actual_rate_pow285_gt_48
    (And.intro Math.B699.I11SevenTwoNumeric.predecessor
      (And.intro Math.B699.I11SevenTwoNumeric.p_rate
        (And.intro Math.B699.I11SevenTwoNumeric.p_base
          (And.intro Math.B699.I11SevenTwoNumeric.p_lookahead
            (And.intro Math.B699.I11SevenTwoNumeric.q_rate
              (And.intro Math.B699.I11SevenTwoNumeric.q_base
                Math.B699.I11SevenTwoNumeric.q_lookahead))))))
  simpa only [sevenTwoZ, Math.B699.I11SevenTwoNumeric.certificateZ,
    sevenTwoM, sevenTwoY0] using h

theorem seven_two_edge_of_growth_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 9 5 (rowDelta row) (1 / 49))
      (qCore 9 5 (1 / 49)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 9 5 (rowDelta row) (1 / 49))
      (eCore 9 5 (1 / 49)))
    (Y e f A C : ℕ) (hY : sevenTwoY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 7 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hupperQ : 2 ^ f * C ≤ 2 * Y)
    (hgap : |(7 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 60 ≤ A ^ 1000 ∨ Y ^ 330 ≤ C ^ 1000 := by
  obtain ⟨hA, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  exact seven_two_edge_of_fixed_certificates qt et hA
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11SevenTwoFinalConsumers
