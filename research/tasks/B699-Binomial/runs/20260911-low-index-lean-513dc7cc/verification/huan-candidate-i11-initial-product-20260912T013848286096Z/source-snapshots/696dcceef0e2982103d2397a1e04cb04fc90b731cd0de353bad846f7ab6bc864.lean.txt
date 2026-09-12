import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Scaled.SelectedEdge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Scaled.SmallCertificates

/-! UNCOMPILED CANDIDATE. Exact fixed-seed assembly. Remaining inputs are
actual Q/E polynomial GrowthTrees and eight explicit finite numeric certificates.
No actual determinant, G bound, standard growth bound, scaled bound, or target
edge is an input. This remains conditional until those concrete data are accepted. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ScaledBounds
open Math.B699.I11ActualPadeEdge Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem five_three_edge_of_fixed_certificates
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 3 (rowDelta row) (1 / 4375))
      (qCore 5 3 (1 / 4375)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 3 (rowDelta row) (1 / 4375))
      (eCore 5 3 (1 / 4375)))
    (hAbase : (48 : ℚ) < qRate qBase ^ 213)
    (hprevious : fiveThreeZ ^ (fiveThreeM - 1) ≤ 4 * fiveThreeY0)
    (hrateP : (5 : ℕ) ^ 20000 ≤ fiveThreeZ ^ 646)
    (hbaseP : ((5 : ℕ) ^ 20000) ^ fiveThreeM ≤ fiveThreeY0 ^ 646)
    (hlookP : (4 : ℕ) ^ 646 * (5 ^ 20000) ^ (fiveThreeM + 1) ≤
      fiveThreeZ ^ (646 * fiveThreeM))
    (hrateQ : (3 : ℕ) ^ 35000 ≤ fiveThreeZ ^ 772)
    (hbaseQ : ((3 : ℕ) ^ 35000) ^ fiveThreeM ≤ fiveThreeY0 ^ 772)
    (hlookQ : (4 : ℕ) ^ 772 * (3 ^ 35000) ^ (fiveThreeM + 1) ≤
      fiveThreeZ ^ (772 * fiveThreeM))
    (Y e f A C : ℕ) (hY : fiveThreeY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 5 ^ e * A) (hwindowQ : Y ≤ 3 ^ f * C)
    (hupperQ : 3 ^ f * C ≤ 2 * Y)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (3 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 354 ≤ A ^ 1000 ∨ Y ^ 228 ≤ C ^ 1000 := by
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees qt et
    fixed_initial_q_cap fixed_initial_e_cap
  exact five_three_edge_of_actual_growth qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2 hQ hE
    fixed_qRate_ge_one hAbase fixed_wRate_ge_Z
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11ScaledBounds
#print axioms Math.B699.I11ScaledBounds.five_three_edge_of_fixed_certificates
