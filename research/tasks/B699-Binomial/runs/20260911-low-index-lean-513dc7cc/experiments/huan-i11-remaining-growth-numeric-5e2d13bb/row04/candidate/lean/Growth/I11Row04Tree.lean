import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11Row04Shared
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11Row04Leaves
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11Row04Growth.Tree

open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.I11Row04Growth.Shared

theorem qTreeNodeLLRRRLLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf004.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf004.localWeight0, Math.B699.I11Row04Growth.QLeaf004.seedWeight0, Math.B699.I11Row04Growth.QLeaf004.localCore, Math.B699.I11Row04Growth.QLeaf004.seedCore, Math.B699.I11Row04Growth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf004.leaf_delta0)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf005.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf005.localWeight0, Math.B699.I11Row04Growth.QLeaf005.seedWeight0, Math.B699.I11Row04Growth.QLeaf005.localCore, Math.B699.I11Row04Growth.QLeaf005.seedCore, Math.B699.I11Row04Growth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf005.leaf_delta0)

theorem qTreeNodeLLRRRLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf003.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf003.localWeight0, Math.B699.I11Row04Growth.QLeaf003.seedWeight0, Math.B699.I11Row04Growth.QLeaf003.localCore, Math.B699.I11Row04Growth.QLeaf003.seedCore, Math.B699.I11Row04Growth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf003.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLLRDelta0)

theorem qTreeNodeLLRRRLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLLDelta0)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf006.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf006.localWeight0, Math.B699.I11Row04Growth.QLeaf006.seedWeight0, Math.B699.I11Row04Growth.QLeaf006.localCore, Math.B699.I11Row04Growth.QLeaf006.seedCore, Math.B699.I11Row04Growth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf006.leaf_delta0)

theorem qTreeNodeLLRRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLDelta0)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf007.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf007.localWeight0, Math.B699.I11Row04Growth.QLeaf007.seedWeight0, Math.B699.I11Row04Growth.QLeaf007.localCore, Math.B699.I11Row04Growth.QLeaf007.seedCore, Math.B699.I11Row04Growth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf007.leaf_delta0)

theorem qTreeNodeLLRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf002.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf002.localWeight0, Math.B699.I11Row04Growth.QLeaf002.seedWeight0, Math.B699.I11Row04Growth.QLeaf002.localCore, Math.B699.I11Row04Growth.QLeaf002.seedCore, Math.B699.I11Row04Growth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRDelta0)

theorem qTreeNodeLLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf001.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf001.localWeight0, Math.B699.I11Row04Growth.QLeaf001.seedWeight0, Math.B699.I11Row04Growth.QLeaf001.localCore, Math.B699.I11Row04Growth.QLeaf001.seedCore, Math.B699.I11Row04Growth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRDelta0)

theorem qTreeNodeLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf000.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf000.localWeight0, Math.B699.I11Row04Growth.QLeaf000.seedWeight0, Math.B699.I11Row04Growth.QLeaf000.localCore, Math.B699.I11Row04Growth.QLeaf000.seedCore, Math.B699.I11Row04Growth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta0)

theorem qTreeNodeLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta0)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf008.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf008.localWeight0, Math.B699.I11Row04Growth.QLeaf008.seedWeight0, Math.B699.I11Row04Growth.QLeaf008.localCore, Math.B699.I11Row04Growth.QLeaf008.seedCore, Math.B699.I11Row04Growth.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf008.leaf_delta0)

theorem qTreeNodeRootDelta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta0)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf009.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf009.localWeight0, Math.B699.I11Row04Growth.QLeaf009.seedWeight0, Math.B699.I11Row04Growth.QLeaf009.localCore, Math.B699.I11Row04Growth.QLeaf009.seedCore, Math.B699.I11Row04Growth.QLeaf009.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf009.leaf_delta0)

theorem q_tree_delta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact qTreeNodeRootDelta0

theorem qTreeNodeLLRRRLLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf004.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf004.localWeight1, Math.B699.I11Row04Growth.QLeaf004.seedWeight1, Math.B699.I11Row04Growth.QLeaf004.localCore, Math.B699.I11Row04Growth.QLeaf004.seedCore, Math.B699.I11Row04Growth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf004.leaf_delta1)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf005.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf005.localWeight1, Math.B699.I11Row04Growth.QLeaf005.seedWeight1, Math.B699.I11Row04Growth.QLeaf005.localCore, Math.B699.I11Row04Growth.QLeaf005.seedCore, Math.B699.I11Row04Growth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf005.leaf_delta1)

theorem qTreeNodeLLRRRLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf003.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf003.localWeight1, Math.B699.I11Row04Growth.QLeaf003.seedWeight1, Math.B699.I11Row04Growth.QLeaf003.localCore, Math.B699.I11Row04Growth.QLeaf003.seedCore, Math.B699.I11Row04Growth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf003.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLLRDelta1)

theorem qTreeNodeLLRRRLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLLDelta1)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf006.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf006.localWeight1, Math.B699.I11Row04Growth.QLeaf006.seedWeight1, Math.B699.I11Row04Growth.QLeaf006.localCore, Math.B699.I11Row04Growth.QLeaf006.seedCore, Math.B699.I11Row04Growth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf006.leaf_delta1)

theorem qTreeNodeLLRRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLDelta1)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf007.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf007.localWeight1, Math.B699.I11Row04Growth.QLeaf007.seedWeight1, Math.B699.I11Row04Growth.QLeaf007.localCore, Math.B699.I11Row04Growth.QLeaf007.seedCore, Math.B699.I11Row04Growth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf007.leaf_delta1)

theorem qTreeNodeLLRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf002.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf002.localWeight1, Math.B699.I11Row04Growth.QLeaf002.seedWeight1, Math.B699.I11Row04Growth.QLeaf002.localCore, Math.B699.I11Row04Growth.QLeaf002.seedCore, Math.B699.I11Row04Growth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRDelta1)

theorem qTreeNodeLLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf001.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf001.localWeight1, Math.B699.I11Row04Growth.QLeaf001.seedWeight1, Math.B699.I11Row04Growth.QLeaf001.localCore, Math.B699.I11Row04Growth.QLeaf001.seedCore, Math.B699.I11Row04Growth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRDelta1)

theorem qTreeNodeLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11Row04Growth.QLeaf000.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf000.localWeight1, Math.B699.I11Row04Growth.QLeaf000.seedWeight1, Math.B699.I11Row04Growth.QLeaf000.localCore, Math.B699.I11Row04Growth.QLeaf000.seedCore, Math.B699.I11Row04Growth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta1)

theorem qTreeNodeLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta1)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf008.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf008.localWeight1, Math.B699.I11Row04Growth.QLeaf008.seedWeight1, Math.B699.I11Row04Growth.QLeaf008.localCore, Math.B699.I11Row04Growth.QLeaf008.seedCore, Math.B699.I11Row04Growth.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf008.leaf_delta1)

theorem qTreeNodeRootDelta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta1)
    (by simpa only [Math.B699.I11Row04Growth.QLeaf009.lam, Math.B699.I11Row04Growth.Shared.qLam, Math.B699.I11Row04Growth.QLeaf009.localWeight1, Math.B699.I11Row04Growth.QLeaf009.seedWeight1, Math.B699.I11Row04Growth.QLeaf009.localCore, Math.B699.I11Row04Growth.QLeaf009.seedCore, Math.B699.I11Row04Growth.QLeaf009.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.QLeaf009.leaf_delta1)

theorem q_tree_delta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact qTreeNodeRootDelta1

theorem eTreeNodeLRRRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf006.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf006.localWeight0, Math.B699.I11Row04Growth.ELeaf006.seedWeight0, Math.B699.I11Row04Growth.ELeaf006.localCore, Math.B699.I11Row04Growth.ELeaf006.seedCore, Math.B699.I11Row04Growth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf006.leaf_delta0)
    (by simpa only [Math.B699.I11Row04Growth.ELeaf007.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf007.localWeight0, Math.B699.I11Row04Growth.ELeaf007.seedWeight0, Math.B699.I11Row04Growth.ELeaf007.localCore, Math.B699.I11Row04Growth.ELeaf007.seedCore, Math.B699.I11Row04Growth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf007.leaf_delta0)

theorem eTreeNodeLRRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf005.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf005.localWeight0, Math.B699.I11Row04Growth.ELeaf005.seedWeight0, Math.B699.I11Row04Growth.ELeaf005.localCore, Math.B699.I11Row04Growth.ELeaf005.seedCore, Math.B699.I11Row04Growth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf005.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRRDelta0)

theorem eTreeNodeLRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf004.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf004.localWeight0, Math.B699.I11Row04Growth.ELeaf004.seedWeight0, Math.B699.I11Row04Growth.ELeaf004.localCore, Math.B699.I11Row04Growth.ELeaf004.seedCore, Math.B699.I11Row04Growth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf004.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta0)

theorem eTreeNodeLRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf003.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf003.localWeight0, Math.B699.I11Row04Growth.ELeaf003.seedWeight0, Math.B699.I11Row04Growth.ELeaf003.localCore, Math.B699.I11Row04Growth.ELeaf003.seedCore, Math.B699.I11Row04Growth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf003.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta0)

theorem eTreeNodeLRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf002.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf002.localWeight0, Math.B699.I11Row04Growth.ELeaf002.seedWeight0, Math.B699.I11Row04Growth.ELeaf002.localCore, Math.B699.I11Row04Growth.ELeaf002.seedCore, Math.B699.I11Row04Growth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta0)

theorem eTreeNodeLRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf001.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf001.localWeight0, Math.B699.I11Row04Growth.ELeaf001.seedWeight0, Math.B699.I11Row04Growth.ELeaf001.localCore, Math.B699.I11Row04Growth.ELeaf001.seedCore, Math.B699.I11Row04Growth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta0)

theorem eTreeNodeLDelta0 : GrowthTree eLam ((eSeedWeight0).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf000.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf000.localWeight0, Math.B699.I11Row04Growth.ELeaf000.seedWeight0, Math.B699.I11Row04Growth.ELeaf000.localCore, Math.B699.I11Row04Growth.ELeaf000.seedCore, Math.B699.I11Row04Growth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta0)

theorem eTreeNodeRootDelta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight0)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta0)
    (by simpa only [Math.B699.I11Row04Growth.ELeaf008.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf008.localWeight0, Math.B699.I11Row04Growth.ELeaf008.seedWeight0, Math.B699.I11Row04Growth.ELeaf008.localCore, Math.B699.I11Row04Growth.ELeaf008.seedCore, Math.B699.I11Row04Growth.ELeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf008.leaf_delta0)

theorem e_tree_delta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact eTreeNodeRootDelta0

theorem eTreeNodeLRRRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf006.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf006.localWeight1, Math.B699.I11Row04Growth.ELeaf006.seedWeight1, Math.B699.I11Row04Growth.ELeaf006.localCore, Math.B699.I11Row04Growth.ELeaf006.seedCore, Math.B699.I11Row04Growth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf006.leaf_delta1)
    (by simpa only [Math.B699.I11Row04Growth.ELeaf007.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf007.localWeight1, Math.B699.I11Row04Growth.ELeaf007.seedWeight1, Math.B699.I11Row04Growth.ELeaf007.localCore, Math.B699.I11Row04Growth.ELeaf007.seedCore, Math.B699.I11Row04Growth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf007.leaf_delta1)

theorem eTreeNodeLRRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf005.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf005.localWeight1, Math.B699.I11Row04Growth.ELeaf005.seedWeight1, Math.B699.I11Row04Growth.ELeaf005.localCore, Math.B699.I11Row04Growth.ELeaf005.seedCore, Math.B699.I11Row04Growth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf005.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRRDelta1)

theorem eTreeNodeLRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf004.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf004.localWeight1, Math.B699.I11Row04Growth.ELeaf004.seedWeight1, Math.B699.I11Row04Growth.ELeaf004.localCore, Math.B699.I11Row04Growth.ELeaf004.seedCore, Math.B699.I11Row04Growth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf004.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta1)

theorem eTreeNodeLRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf003.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf003.localWeight1, Math.B699.I11Row04Growth.ELeaf003.seedWeight1, Math.B699.I11Row04Growth.ELeaf003.localCore, Math.B699.I11Row04Growth.ELeaf003.seedCore, Math.B699.I11Row04Growth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf003.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta1)

theorem eTreeNodeLRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf002.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf002.localWeight1, Math.B699.I11Row04Growth.ELeaf002.seedWeight1, Math.B699.I11Row04Growth.ELeaf002.localCore, Math.B699.I11Row04Growth.ELeaf002.seedCore, Math.B699.I11Row04Growth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta1)

theorem eTreeNodeLRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf001.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf001.localWeight1, Math.B699.I11Row04Growth.ELeaf001.seedWeight1, Math.B699.I11Row04Growth.ELeaf001.localCore, Math.B699.I11Row04Growth.ELeaf001.seedCore, Math.B699.I11Row04Growth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta1)

theorem eTreeNodeLDelta1 : GrowthTree eLam ((eSeedWeight1).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11Row04Growth.ELeaf000.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf000.localWeight1, Math.B699.I11Row04Growth.ELeaf000.seedWeight1, Math.B699.I11Row04Growth.ELeaf000.localCore, Math.B699.I11Row04Growth.ELeaf000.seedCore, Math.B699.I11Row04Growth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta1)

theorem eTreeNodeRootDelta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight1)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta1)
    (by simpa only [Math.B699.I11Row04Growth.ELeaf008.lam, Math.B699.I11Row04Growth.Shared.eLam, Math.B699.I11Row04Growth.ELeaf008.localWeight1, Math.B699.I11Row04Growth.ELeaf008.seedWeight1, Math.B699.I11Row04Growth.ELeaf008.localCore, Math.B699.I11Row04Growth.ELeaf008.seedCore, Math.B699.I11Row04Growth.ELeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11Row04Growth.ELeaf008.leaf_delta1)

theorem e_tree_delta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact eTreeNodeRootDelta1

end Math.B699.I11Row04Growth.Tree

#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRRLLRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRRLLDelta0
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRRLDelta0
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLDelta0
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLDelta0
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeRootDelta0
#print axioms Math.B699.I11Row04Growth.Tree.q_tree_delta0
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRRLLRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRRLLDelta1
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRRLDelta1
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLLDelta1
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeLDelta1
#print axioms Math.B699.I11Row04Growth.Tree.qTreeNodeRootDelta1
#print axioms Math.B699.I11Row04Growth.Tree.q_tree_delta1
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRRRRRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRRRRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRRRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRDelta0
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLDelta0
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeRootDelta0
#print axioms Math.B699.I11Row04Growth.Tree.e_tree_delta0
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRRRRRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRRRRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRRRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLRDelta1
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeLDelta1
#print axioms Math.B699.I11Row04Growth.Tree.eTreeNodeRootDelta1
#print axioms Math.B699.I11Row04Growth.Tree.e_tree_delta1
