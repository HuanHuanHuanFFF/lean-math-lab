import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11TwoFiveShared
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11TwoFiveLeaves
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition

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
