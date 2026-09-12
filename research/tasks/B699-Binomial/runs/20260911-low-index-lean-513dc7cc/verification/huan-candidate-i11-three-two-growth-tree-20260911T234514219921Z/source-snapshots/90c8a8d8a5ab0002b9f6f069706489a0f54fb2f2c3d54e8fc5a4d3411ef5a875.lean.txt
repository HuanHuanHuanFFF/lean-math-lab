import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11ThreeTwoShared
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11ThreeTwoLeaves
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11ThreeTwoGrowth.Tree

open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.I11ThreeTwoGrowth.Shared

theorem qTreeNodeLLRRRLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf003.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf003.localWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf003.seedWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf003.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf003.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf003.leaf_delta0)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf004.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf004.localWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf004.seedWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf004.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf004.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf004.leaf_delta0)

theorem qTreeNodeLLRRRLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLLDelta0)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf005.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf005.localWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf005.seedWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf005.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf005.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf005.leaf_delta0)

theorem qTreeNodeLLRRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLDelta0)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf006.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf006.localWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf006.seedWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf006.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf006.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf006.leaf_delta0)

theorem qTreeNodeLLRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf002.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf002.localWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf002.seedWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf002.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf002.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRDelta0)

theorem qTreeNodeLLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf001.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf001.localWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf001.seedWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf001.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf001.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRDelta0)

theorem qTreeNodeLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf000.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf000.localWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf000.seedWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf000.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf000.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta0)

theorem qTreeNodeLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta0)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf007.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf007.localWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf007.seedWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf007.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf007.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf007.leaf_delta0)

theorem qTreeNodeRootDelta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta0)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf008.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf008.localWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf008.seedWeight0, Math.B699.I11ThreeTwoGrowth.QLeaf008.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf008.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf008.leaf_delta0)

theorem q_tree_delta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact qTreeNodeRootDelta0

theorem qTreeNodeLLRRRLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf003.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf003.localWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf003.seedWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf003.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf003.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf003.leaf_delta1)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf004.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf004.localWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf004.seedWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf004.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf004.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf004.leaf_delta1)

theorem qTreeNodeLLRRRLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLLDelta1)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf005.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf005.localWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf005.seedWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf005.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf005.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf005.leaf_delta1)

theorem qTreeNodeLLRRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRLDelta1)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf006.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf006.localWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf006.seedWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf006.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf006.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf006.leaf_delta1)

theorem qTreeNodeLLRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf002.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf002.localWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf002.seedWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf002.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf002.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRRDelta1)

theorem qTreeNodeLLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf001.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf001.localWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf001.seedWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf001.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf001.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRDelta1)

theorem qTreeNodeLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf000.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf000.localWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf000.seedWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf000.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf000.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta1)

theorem qTreeNodeLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta1)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf007.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf007.localWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf007.seedWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf007.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf007.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf007.leaf_delta1)

theorem qTreeNodeRootDelta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta1)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.QLeaf008.lam, Math.B699.I11ThreeTwoGrowth.Shared.qLam, Math.B699.I11ThreeTwoGrowth.QLeaf008.localWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf008.seedWeight1, Math.B699.I11ThreeTwoGrowth.QLeaf008.localCore, Math.B699.I11ThreeTwoGrowth.QLeaf008.seedCore, Math.B699.I11ThreeTwoGrowth.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.QLeaf008.leaf_delta1)

theorem q_tree_delta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact qTreeNodeRootDelta1

theorem eTreeNodeLRRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf005.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf005.localWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf005.seedWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf005.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf005.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf005.leaf_delta0)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf006.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf006.localWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf006.seedWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf006.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf006.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf006.leaf_delta0)

theorem eTreeNodeLRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf004.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf004.localWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf004.seedWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf004.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf004.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf004.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta0)

theorem eTreeNodeLRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf003.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf003.localWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf003.seedWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf003.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf003.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf003.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta0)

theorem eTreeNodeLRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf002.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf002.localWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf002.seedWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf002.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf002.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta0)

theorem eTreeNodeLRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf001.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf001.localWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf001.seedWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf001.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf001.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta0)

theorem eTreeNodeLDelta0 : GrowthTree eLam ((eSeedWeight0).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf000.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf000.localWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf000.seedWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf000.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf000.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta0)

theorem eTreeNodeRootDelta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight0)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta0)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf007.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf007.localWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf007.seedWeight0, Math.B699.I11ThreeTwoGrowth.ELeaf007.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf007.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf007.leaf_delta0)

theorem e_tree_delta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact eTreeNodeRootDelta0

theorem eTreeNodeLRRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf005.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf005.localWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf005.seedWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf005.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf005.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf005.leaf_delta1)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf006.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf006.localWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf006.seedWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf006.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf006.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf006.leaf_delta1)

theorem eTreeNodeLRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf004.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf004.localWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf004.seedWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf004.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf004.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf004.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta1)

theorem eTreeNodeLRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf003.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf003.localWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf003.seedWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf003.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf003.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf003.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta1)

theorem eTreeNodeLRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf002.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf002.localWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf002.seedWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf002.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf002.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta1)

theorem eTreeNodeLRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf001.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf001.localWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf001.seedWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf001.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf001.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta1)

theorem eTreeNodeLDelta1 : GrowthTree eLam ((eSeedWeight1).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf000.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf000.localWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf000.seedWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf000.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf000.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta1)

theorem eTreeNodeRootDelta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight1)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta1)
    (by simpa only [Math.B699.I11ThreeTwoGrowth.ELeaf007.lam, Math.B699.I11ThreeTwoGrowth.Shared.eLam, Math.B699.I11ThreeTwoGrowth.ELeaf007.localWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf007.seedWeight1, Math.B699.I11ThreeTwoGrowth.ELeaf007.localCore, Math.B699.I11ThreeTwoGrowth.ELeaf007.seedCore, Math.B699.I11ThreeTwoGrowth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11ThreeTwoGrowth.ELeaf007.leaf_delta1)

theorem e_tree_delta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact eTreeNodeRootDelta1

end Math.B699.I11ThreeTwoGrowth.Tree

#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRRRLLDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRRRLDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRRRDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRRDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeRootDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.q_tree_delta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRRRLLDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRRRLDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRRRDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRRDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLRDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLLDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeLDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.qTreeNodeRootDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.q_tree_delta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRRRRRDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRRRRDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRRRDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRRDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeRootDelta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.e_tree_delta0
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRRRRRDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRRRRDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRRRDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRRDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLRDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeLDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.eTreeNodeRootDelta1
#print axioms Math.B699.I11ThreeTwoGrowth.Tree.e_tree_delta1
