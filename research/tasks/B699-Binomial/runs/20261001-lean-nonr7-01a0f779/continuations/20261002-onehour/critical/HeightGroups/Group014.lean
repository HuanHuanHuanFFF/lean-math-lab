import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group013
import Lean.Elab.Tactic.Omega
import Mathlib.Data.Nat.Basic
set_option Elab.async false
/- Frozen member 56 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\I11TwoFiveTree.lean 68315d8d101ef9675700c3ae593d2d81151b28ddff5bef4b1543e54adf0186cd -/
section HeightMember056




set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11TwoFiveGrowth.Tree

open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.I11TwoFiveGrowth.Shared

theorem qTreeNodeLLLRRRLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf003.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf003.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf003.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf003.localCore, Math.B699.I11TwoFiveGrowth.QLeaf003.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf003.leaf_delta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf004.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf004.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf004.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf004.localCore, Math.B699.I11TwoFiveGrowth.QLeaf004.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf004.leaf_delta0)

theorem qTreeNodeLLLRRRLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRLLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf005.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf005.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf005.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf005.localCore, Math.B699.I11TwoFiveGrowth.QLeaf005.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf005.leaf_delta0)

theorem qTreeNodeLLLRRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf006.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf006.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf006.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf006.localCore, Math.B699.I11TwoFiveGrowth.QLeaf006.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf006.leaf_delta0)

theorem qTreeNodeLLLRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf002.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf002.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf002.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf002.localCore, Math.B699.I11TwoFiveGrowth.QLeaf002.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRDelta0)

theorem qTreeNodeLLLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf001.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf001.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf001.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf001.localCore, Math.B699.I11TwoFiveGrowth.QLeaf001.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRDelta0)

theorem qTreeNodeLLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfLeft)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf000.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf000.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf000.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf000.localCore, Math.B699.I11TwoFiveGrowth.QLeaf000.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRDelta0)

theorem qTreeNodeLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf007.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf007.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf007.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf007.localCore, Math.B699.I11TwoFiveGrowth.QLeaf007.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf007.leaf_delta0)

theorem qTreeNodeLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf008.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf008.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf008.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf008.localCore, Math.B699.I11TwoFiveGrowth.QLeaf008.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf008.leaf_delta0)

theorem qTreeNodeRootDelta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf009.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf009.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf009.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf009.localCore, Math.B699.I11TwoFiveGrowth.QLeaf009.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf009.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf009.leaf_delta0)

theorem q_tree_delta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact qTreeNodeRootDelta0

theorem qTreeNodeLLLRRRLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf003.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf003.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf003.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf003.localCore, Math.B699.I11TwoFiveGrowth.QLeaf003.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf003.leaf_delta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf004.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf004.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf004.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf004.localCore, Math.B699.I11TwoFiveGrowth.QLeaf004.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf004.leaf_delta1)

theorem qTreeNodeLLLRRRLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRLLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf005.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf005.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf005.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf005.localCore, Math.B699.I11TwoFiveGrowth.QLeaf005.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf005.leaf_delta1)

theorem qTreeNodeLLLRRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf006.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf006.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf006.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf006.localCore, Math.B699.I11TwoFiveGrowth.QLeaf006.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf006.leaf_delta1)

theorem qTreeNodeLLLRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf002.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf002.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf002.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf002.localCore, Math.B699.I11TwoFiveGrowth.QLeaf002.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRDelta1)

theorem qTreeNodeLLLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf001.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf001.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf001.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf001.localCore, Math.B699.I11TwoFiveGrowth.QLeaf001.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRDelta1)

theorem qTreeNodeLLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfLeft)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf000.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf000.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf000.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf000.localCore, Math.B699.I11TwoFiveGrowth.QLeaf000.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRDelta1)

theorem qTreeNodeLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf007.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf007.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf007.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf007.localCore, Math.B699.I11TwoFiveGrowth.QLeaf007.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf007.leaf_delta1)

theorem qTreeNodeLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf008.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf008.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf008.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf008.localCore, Math.B699.I11TwoFiveGrowth.QLeaf008.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf008.leaf_delta1)

theorem qTreeNodeRootDelta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf009.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf009.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf009.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf009.localCore, Math.B699.I11TwoFiveGrowth.QLeaf009.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf009.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf009.leaf_delta1)

theorem q_tree_delta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact qTreeNodeRootDelta1

theorem eTreeNodeLRRRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf006.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf006.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf006.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf006.localCore, Math.B699.I11TwoFiveGrowth.ELeaf006.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf006.leaf_delta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf007.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf007.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf007.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf007.localCore, Math.B699.I11TwoFiveGrowth.ELeaf007.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf007.leaf_delta0)

theorem eTreeNodeLRRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf005.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf005.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf005.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf005.localCore, Math.B699.I11TwoFiveGrowth.ELeaf005.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf005.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRRDelta0)

theorem eTreeNodeLRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf004.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf004.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf004.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf004.localCore, Math.B699.I11TwoFiveGrowth.ELeaf004.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf004.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta0)

theorem eTreeNodeLRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf003.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf003.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf003.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf003.localCore, Math.B699.I11TwoFiveGrowth.ELeaf003.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf003.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta0)

theorem eTreeNodeLRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf002.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf002.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf002.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf002.localCore, Math.B699.I11TwoFiveGrowth.ELeaf002.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta0)

theorem eTreeNodeLRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf001.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf001.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf001.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf001.localCore, Math.B699.I11TwoFiveGrowth.ELeaf001.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta0)

theorem eTreeNodeLDelta0 : GrowthTree eLam ((eSeedWeight0).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf000.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf000.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf000.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf000.localCore, Math.B699.I11TwoFiveGrowth.ELeaf000.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta0)

theorem eTreeNodeRootDelta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight0)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf008.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf008.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf008.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf008.localCore, Math.B699.I11TwoFiveGrowth.ELeaf008.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf008.leaf_delta0)

theorem e_tree_delta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact eTreeNodeRootDelta0

theorem eTreeNodeLRRRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf006.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf006.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf006.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf006.localCore, Math.B699.I11TwoFiveGrowth.ELeaf006.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf006.leaf_delta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf007.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf007.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf007.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf007.localCore, Math.B699.I11TwoFiveGrowth.ELeaf007.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf007.leaf_delta1)

theorem eTreeNodeLRRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf005.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf005.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf005.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf005.localCore, Math.B699.I11TwoFiveGrowth.ELeaf005.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf005.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRRDelta1)

theorem eTreeNodeLRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf004.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf004.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf004.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf004.localCore, Math.B699.I11TwoFiveGrowth.ELeaf004.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf004.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta1)

theorem eTreeNodeLRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf003.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf003.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf003.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf003.localCore, Math.B699.I11TwoFiveGrowth.ELeaf003.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf003.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta1)

theorem eTreeNodeLRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf002.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf002.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf002.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf002.localCore, Math.B699.I11TwoFiveGrowth.ELeaf002.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta1)

theorem eTreeNodeLRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf001.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf001.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf001.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf001.localCore, Math.B699.I11TwoFiveGrowth.ELeaf001.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta1)

theorem eTreeNodeLDelta1 : GrowthTree eLam ((eSeedWeight1).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf000.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf000.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf000.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf000.localCore, Math.B699.I11TwoFiveGrowth.ELeaf000.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta1)

theorem eTreeNodeRootDelta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight1)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf008.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf008.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf008.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf008.localCore, Math.B699.I11TwoFiveGrowth.ELeaf008.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf008.leaf_delta1)

theorem e_tree_delta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact eTreeNodeRootDelta1

end Math.B699.I11TwoFiveGrowth.Tree

#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRLLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeRootDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRLLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeRootDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeRootDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeRootDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta1

end HeightMember056
/- Frozen member 57 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveFinal\ActualInstance.lean c4e4283d7d8ff0a76b0d9b058ef6c75037f9f9af78418d6982b532348d363d08 -/
section HeightMember057



/-! UNCOMPILED. The actual accepted c5d4,z3/128 roots supply all four tree inputs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveFinalConsumers
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFivePrefix
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem q_lambda_eq : Math.B699.I11TwoFiveGrowth.Shared.qLam = qLambda := rfl
theorem e_lambda_eq : Math.B699.I11TwoFiveGrowth.Shared.eLam = eLambda := rfl
theorem row_delta_false : rowDelta false = 1 := rfl
theorem row_delta_true : rowDelta true = 0 := rfl

theorem actual_q_tree_family (row : Bool) :
    GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128)) (qCore 5 4 (3 / 128)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, q_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedWeight1,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta1
  | true =>
    simpa only [row_delta_true, q_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedWeight0,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta0

theorem actual_e_tree_family (row : Bool) :
    GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128)) (eCore 5 4 (3 / 128)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, e_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedWeight1,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta1
  | true =>
    simpa only [row_delta_true, e_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedWeight0,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta0

theorem actual_two_five_cofactor_edge
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  exact two_five_edge_of_growth_trees actual_q_tree_family actual_e_tree_family
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11TwoFiveFinalConsumers

end HeightMember057
/- Frozen member 58 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\TwoFiveGap33\Edge.lean 369c3622e707e52488c4016f7aef1adcade3b56688a661a60c43c90174ecbebc -/
section HeightMember058




/-!
Complete candidate proof text; not compiled by this worker.
All four actual growth trees, actual G, and selector numbers are supplied here.
The height and the original stronger cofactor weights remain unchanged.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.TwoFiveGap33
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFiveFinalConsumers
open Math.B699.DiscretePadeSelector

theorem actual_two_five_strong_edge
    (Y e f A C : ℕ) (hY : (2 : ℕ) ^ 15359 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 33) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 248 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 252 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 248 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 252 := Nat.lt_of_not_ge hQcofactor
  have hYseed : twoFiveY0 ≤ Y := hY
  obtain ⟨_hOldRate, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees
    actual_q_tree_family actual_e_tree_family fixed_initial_q_cap fixed_initial_e_cap
  let m := twoFiveIndex Y
  obtain ⟨he, hf⟩ := extract_same_index Y e f A C hYseed hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 35 * m < e at he
  change 15 * m < f at hf
  have hm : 141 ≤ m := index_ge_m0 Y hYseed hprevious
  have hmM : 329 ≤ m := index_ge_M Y hYseed hprevious
  have hAm : (66 : ℚ) < qRate qBase ^ m := actual_rate_gt_66 m hmM
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (twoFiveZ : ℚ) ^ m := by
    have h := leastExponent_threshold twoFiveZ Y twoFiveZ_gt_one
    change 4 * Y < twoFiveZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate eBase ^ m :=
    lt_of_lt_of_le hthreshold
      (pow_le_pow_left₀ (Nat.cast_nonneg twoFiveZ) fixed_wRate_ge_Z m)
  let V : ℕ := 5 ^ (f - 15 * m) * C
  let Nq : ℕ := 5 ^ f * C
  have hNVnat : (125 : ℕ) ^ (5 * m) * V = Nq := by
    have hpow : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
      calc
        _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
        _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C
      (Nat.le_of_lt hf)
  have hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate eBase ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap_budget m e f A C 33
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (128 : ℤ) ^ (5 * m) ≤
      33 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  have hstrict := actual_integer_gap33_sum_lt m hm row qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

/-- Actual 2–5 weak edge with gap 33; no growth/tree/G or numeric hypothesis. -/
theorem actual_two_five_weak_edge
    (Y e f A C : ℕ) (hY : (2 : ℕ) ^ 15359 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 33) :
    Y ^ 10 ≤ A ^ 1000 ∨ Y ^ 10 ≤ C ^ 1000 := by
  have hpow : 0 < (2 : ℕ) ^ 15359 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hYone : 1 ≤ Y := (Nat.succ_le_of_lt hpow).trans hY
  rcases actual_two_five_strong_edge Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
      with hP | hQ
  · exact Or.inl ((pow_le_pow_right₀ hYone (by decide : 10 ≤ 248)).trans hP)
  · exact Or.inr ((pow_le_pow_right₀ hYone (by decide : 10 ≤ 252)).trans hQ)

end Math.B699.TwoFiveGap33

end HeightMember058
/- Frozen member 59 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11Component\CeilHalf.lean 1df62fa8b16d2af222d1cb55bc15dd46453d31b90cf3177114c3818dba5df890 -/
section HeightMember059



/-! UNCOMPILED CANDIDATE. A common dyadic interval for all eleven numerator
positions. The huge concrete height is kept out of arithmetic normalization. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11FiveThreeComponentEdge

def ceilHalf (n : ℕ) : ℕ := (n + 1) / 2

theorem window_in_ceilHalf_interval {n a : ℕ} (hn : 20 ≤ n) (ha : a < 11) :
    ceilHalf n ≤ n - a ∧ n - a ≤ 2 * ceilHalf n := by
  dsimp only [ceilHalf]
  omega

theorem ceilHalf_lower_of_two_mul_le {n H : ℕ} (h : 2 * H ≤ n) :
    H ≤ ceilHalf n := by
  dsimp only [ceilHalf]
  omega

theorem ceilHalf_power_lower {n k : ℕ} (h : (2 : ℕ) ^ (k + 1) ≤ n) :
    (2 : ℕ) ^ k ≤ ceilHalf n := by
  apply ceilHalf_lower_of_two_mul_le
  calc
    2 * (2 : ℕ) ^ k = (2 : ℕ) ^ (k + 1) := by
      rw [Nat.pow_succ]
      exact Nat.mul_comm _ _
    _ ≤ n := h

theorem twenty_le_of_power_bound {n k : ℕ} (hk : 5 ≤ k) (hn : (2 : ℕ) ^ k ≤ n) :
    20 ≤ n := by
  have h32 : 32 ≤ (2 : ℕ) ^ k := by
    change (2 : ℕ) ^ 5 ≤ (2 : ℕ) ^ k
    exact Nat.pow_le_pow_right (by decide) hk
  exact Nat.le_trans (by decide : 20 ≤ 32) (Nat.le_trans h32 hn)

end B699LowIndex.I11FiveThreeComponentEdge
#print axioms B699LowIndex.I11FiveThreeComponentEdge.window_in_ceilHalf_interval
#print axioms B699LowIndex.I11FiveThreeComponentEdge.ceilHalf_lower_of_two_mul_le
#print axioms B699LowIndex.I11FiveThreeComponentEdge.ceilHalf_power_lower
#print axioms B699LowIndex.I11FiveThreeComponentEdge.twenty_le_of_power_bound

end HeightMember059
