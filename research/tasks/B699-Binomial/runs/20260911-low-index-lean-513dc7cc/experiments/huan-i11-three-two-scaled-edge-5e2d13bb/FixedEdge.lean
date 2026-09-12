import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-three-two-scaled-edge-5e2d13bb».SelectedEdge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-three-two-scaled-edge-5e2d13bb».SmallCertificates

/-! UNCOMPILED CANDIDATE. Fixed original (3,2) actual cofactor edge. Only four trees, eight finite numerical facts, and ordinary windows remain. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ThreeTwoScaled
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem three_two_edge_of_fixed_certificates
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 23 15 (rowDelta row) (1 / 9))
      (qCore 23 15 (1 / 9)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 23 15 (rowDelta row) (1 / 9))
      (eCore 23 15 (1 / 9)))
    (hAbase : (48 : ℚ) < qRate qBase ^ 162)
    (hprevious : threeTwoZ ^ (threeTwoM - 1) ≤ 4 * threeTwoY0)
    (hrateP : 3 ^ 46000 ≤ threeTwoZ ^ 774)
    (hbaseP : (3 ^ 46000) ^ threeTwoM ≤ threeTwoY0 ^ 774)
    (hlookP : 4 ^ 774 * (3 ^ 46000) ^ (threeTwoM + 1) ≤ threeTwoZ ^ (774 * threeTwoM))
    (hrateQ : 2 ^ 69000 ≤ threeTwoZ ^ 732)
    (hbaseQ : (2 ^ 69000) ^ threeTwoM ≤ threeTwoY0 ^ 732)
    (hlookQ : 4 ^ 732 * (2 ^ 69000) ^ (threeTwoM + 1) ≤ threeTwoZ ^ (732 * threeTwoM))
    (Y e f A C : ℕ) (hY : threeTwoY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 3 ^ e * A) (hwindowQ : Y ≤ 2 ^ f * C)
    (hupperQ : 2 ^ f * C ≤ 2 * Y)
    (hgap : |(3 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 226 ≤ A ^ 1000 ∨ Y ^ 268 ≤ C ^ 1000 := by
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees qt et
    fixed_initial_q_cap fixed_initial_e_cap
  exact edge_of_actual_growth qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2 hQ hE
    fixed_qRate_ge_one hAbase fixed_wRate_ge_Z
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11ThreeTwoScaled
