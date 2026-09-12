import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-two-five-scaled-edge-5e2d13bb».SelectedEdge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-two-five-scaled-edge-5e2d13bb».SmallCertificates

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
