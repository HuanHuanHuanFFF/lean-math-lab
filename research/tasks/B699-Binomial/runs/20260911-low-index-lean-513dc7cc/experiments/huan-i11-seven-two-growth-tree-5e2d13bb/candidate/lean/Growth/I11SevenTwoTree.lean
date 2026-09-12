import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11SevenTwoShared
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11SevenTwoLeaves
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11SevenTwoGrowth.Tree

open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.I11SevenTwoGrowth.Shared

theorem qTreeNodeLRLLRLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft)) ((qSeedCore).comp ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf002.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf002.localWeight0, Math.B699.I11SevenTwoGrowth.QLeaf002.seedWeight0, Math.B699.I11SevenTwoGrowth.QLeaf002.localCore, Math.B699.I11SevenTwoGrowth.QLeaf002.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf002.leaf_delta0)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf003.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf003.localWeight0, Math.B699.I11SevenTwoGrowth.QLeaf003.seedWeight0, Math.B699.I11SevenTwoGrowth.QLeaf003.localCore, Math.B699.I11SevenTwoGrowth.QLeaf003.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf003.leaf_delta0)

theorem qTreeNodeLRLLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLLRLDelta0)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf004.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf004.localWeight0, Math.B699.I11SevenTwoGrowth.QLeaf004.seedWeight0, Math.B699.I11SevenTwoGrowth.QLeaf004.localCore, Math.B699.I11SevenTwoGrowth.QLeaf004.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf004.leaf_delta0)

theorem qTreeNodeLRLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp ((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf001.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf001.localWeight0, Math.B699.I11SevenTwoGrowth.QLeaf001.seedWeight0, Math.B699.I11SevenTwoGrowth.QLeaf001.localCore, Math.B699.I11SevenTwoGrowth.QLeaf001.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLLRDelta0)

theorem qTreeNodeLRLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((halfLeft).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((halfLeft).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((halfLeft).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((halfLeft).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLLDelta0)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf005.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf005.localWeight0, Math.B699.I11SevenTwoGrowth.QLeaf005.seedWeight0, Math.B699.I11SevenTwoGrowth.QLeaf005.localCore, Math.B699.I11SevenTwoGrowth.QLeaf005.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf005.leaf_delta0)

theorem qTreeNodeLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((halfLeft).comp halfRight)) ((qSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLDelta0)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf006.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf006.localWeight0, Math.B699.I11SevenTwoGrowth.QLeaf006.seedWeight0, Math.B699.I11SevenTwoGrowth.QLeaf006.localCore, Math.B699.I11SevenTwoGrowth.QLeaf006.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf006.leaf_delta0)

theorem qTreeNodeLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf000.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf000.localWeight0, Math.B699.I11SevenTwoGrowth.QLeaf000.seedWeight0, Math.B699.I11SevenTwoGrowth.QLeaf000.localCore, Math.B699.I11SevenTwoGrowth.QLeaf000.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRDelta0)

theorem qTreeNodeRootDelta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta0)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf007.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf007.localWeight0, Math.B699.I11SevenTwoGrowth.QLeaf007.seedWeight0, Math.B699.I11SevenTwoGrowth.QLeaf007.localCore, Math.B699.I11SevenTwoGrowth.QLeaf007.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf007.leaf_delta0)

theorem q_tree_delta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact qTreeNodeRootDelta0

theorem qTreeNodeLRLLRLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft)) ((qSeedCore).comp ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf002.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf002.localWeight1, Math.B699.I11SevenTwoGrowth.QLeaf002.seedWeight1, Math.B699.I11SevenTwoGrowth.QLeaf002.localCore, Math.B699.I11SevenTwoGrowth.QLeaf002.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf002.leaf_delta1)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf003.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf003.localWeight1, Math.B699.I11SevenTwoGrowth.QLeaf003.seedWeight1, Math.B699.I11SevenTwoGrowth.QLeaf003.localCore, Math.B699.I11SevenTwoGrowth.QLeaf003.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf003.leaf_delta1)

theorem qTreeNodeLRLLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLLRLDelta1)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf004.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf004.localWeight1, Math.B699.I11SevenTwoGrowth.QLeaf004.seedWeight1, Math.B699.I11SevenTwoGrowth.QLeaf004.localCore, Math.B699.I11SevenTwoGrowth.QLeaf004.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf004.leaf_delta1)

theorem qTreeNodeLRLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp ((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((((halfLeft).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf001.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf001.localWeight1, Math.B699.I11SevenTwoGrowth.QLeaf001.seedWeight1, Math.B699.I11SevenTwoGrowth.QLeaf001.localCore, Math.B699.I11SevenTwoGrowth.QLeaf001.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLLRDelta1)

theorem qTreeNodeLRLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((halfLeft).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((halfLeft).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((halfLeft).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((halfLeft).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLLDelta1)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf005.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf005.localWeight1, Math.B699.I11SevenTwoGrowth.QLeaf005.seedWeight1, Math.B699.I11SevenTwoGrowth.QLeaf005.localCore, Math.B699.I11SevenTwoGrowth.QLeaf005.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf005.leaf_delta1)

theorem qTreeNodeLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((halfLeft).comp halfRight)) ((qSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLDelta1)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf006.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf006.localWeight1, Math.B699.I11SevenTwoGrowth.QLeaf006.seedWeight1, Math.B699.I11SevenTwoGrowth.QLeaf006.localCore, Math.B699.I11SevenTwoGrowth.QLeaf006.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf006.leaf_delta1)

theorem qTreeNodeLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf000.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf000.localWeight1, Math.B699.I11SevenTwoGrowth.QLeaf000.seedWeight1, Math.B699.I11SevenTwoGrowth.QLeaf000.localCore, Math.B699.I11SevenTwoGrowth.QLeaf000.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRDelta1)

theorem qTreeNodeRootDelta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta1)
    (by simpa only [Math.B699.I11SevenTwoGrowth.QLeaf007.lam, Math.B699.I11SevenTwoGrowth.Shared.qLam, Math.B699.I11SevenTwoGrowth.QLeaf007.localWeight1, Math.B699.I11SevenTwoGrowth.QLeaf007.seedWeight1, Math.B699.I11SevenTwoGrowth.QLeaf007.localCore, Math.B699.I11SevenTwoGrowth.QLeaf007.seedCore, Math.B699.I11SevenTwoGrowth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.QLeaf007.leaf_delta1)

theorem q_tree_delta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact qTreeNodeRootDelta1

theorem eTreeNodeLRRRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf006.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf006.localWeight0, Math.B699.I11SevenTwoGrowth.ELeaf006.seedWeight0, Math.B699.I11SevenTwoGrowth.ELeaf006.localCore, Math.B699.I11SevenTwoGrowth.ELeaf006.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf006.leaf_delta0)
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf007.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf007.localWeight0, Math.B699.I11SevenTwoGrowth.ELeaf007.seedWeight0, Math.B699.I11SevenTwoGrowth.ELeaf007.localCore, Math.B699.I11SevenTwoGrowth.ELeaf007.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf007.leaf_delta0)

theorem eTreeNodeLRRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf005.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf005.localWeight0, Math.B699.I11SevenTwoGrowth.ELeaf005.seedWeight0, Math.B699.I11SevenTwoGrowth.ELeaf005.localCore, Math.B699.I11SevenTwoGrowth.ELeaf005.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf005.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRRDelta0)

theorem eTreeNodeLRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf004.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf004.localWeight0, Math.B699.I11SevenTwoGrowth.ELeaf004.seedWeight0, Math.B699.I11SevenTwoGrowth.ELeaf004.localCore, Math.B699.I11SevenTwoGrowth.ELeaf004.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf004.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta0)

theorem eTreeNodeLRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf003.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf003.localWeight0, Math.B699.I11SevenTwoGrowth.ELeaf003.seedWeight0, Math.B699.I11SevenTwoGrowth.ELeaf003.localCore, Math.B699.I11SevenTwoGrowth.ELeaf003.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf003.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta0)

theorem eTreeNodeLRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf002.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf002.localWeight0, Math.B699.I11SevenTwoGrowth.ELeaf002.seedWeight0, Math.B699.I11SevenTwoGrowth.ELeaf002.localCore, Math.B699.I11SevenTwoGrowth.ELeaf002.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta0)

theorem eTreeNodeLRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf001.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf001.localWeight0, Math.B699.I11SevenTwoGrowth.ELeaf001.seedWeight0, Math.B699.I11SevenTwoGrowth.ELeaf001.localCore, Math.B699.I11SevenTwoGrowth.ELeaf001.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta0)

theorem eTreeNodeLDelta0 : GrowthTree eLam ((eSeedWeight0).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf000.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf000.localWeight0, Math.B699.I11SevenTwoGrowth.ELeaf000.seedWeight0, Math.B699.I11SevenTwoGrowth.ELeaf000.localCore, Math.B699.I11SevenTwoGrowth.ELeaf000.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta0)

theorem eTreeNodeRootDelta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight0)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta0)
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf008.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf008.localWeight0, Math.B699.I11SevenTwoGrowth.ELeaf008.seedWeight0, Math.B699.I11SevenTwoGrowth.ELeaf008.localCore, Math.B699.I11SevenTwoGrowth.ELeaf008.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf008.leaf_delta0)

theorem e_tree_delta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact eTreeNodeRootDelta0

theorem eTreeNodeLRRRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf006.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf006.localWeight1, Math.B699.I11SevenTwoGrowth.ELeaf006.seedWeight1, Math.B699.I11SevenTwoGrowth.ELeaf006.localCore, Math.B699.I11SevenTwoGrowth.ELeaf006.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf006.leaf_delta1)
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf007.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf007.localWeight1, Math.B699.I11SevenTwoGrowth.ELeaf007.seedWeight1, Math.B699.I11SevenTwoGrowth.ELeaf007.localCore, Math.B699.I11SevenTwoGrowth.ELeaf007.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf007.leaf_delta1)

theorem eTreeNodeLRRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf005.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf005.localWeight1, Math.B699.I11SevenTwoGrowth.ELeaf005.seedWeight1, Math.B699.I11SevenTwoGrowth.ELeaf005.localCore, Math.B699.I11SevenTwoGrowth.ELeaf005.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf005.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRRDelta1)

theorem eTreeNodeLRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf004.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf004.localWeight1, Math.B699.I11SevenTwoGrowth.ELeaf004.seedWeight1, Math.B699.I11SevenTwoGrowth.ELeaf004.localCore, Math.B699.I11SevenTwoGrowth.ELeaf004.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf004.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta1)

theorem eTreeNodeLRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf003.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf003.localWeight1, Math.B699.I11SevenTwoGrowth.ELeaf003.seedWeight1, Math.B699.I11SevenTwoGrowth.ELeaf003.localCore, Math.B699.I11SevenTwoGrowth.ELeaf003.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf003.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta1)

theorem eTreeNodeLRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf002.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf002.localWeight1, Math.B699.I11SevenTwoGrowth.ELeaf002.seedWeight1, Math.B699.I11SevenTwoGrowth.ELeaf002.localCore, Math.B699.I11SevenTwoGrowth.ELeaf002.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta1)

theorem eTreeNodeLRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf001.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf001.localWeight1, Math.B699.I11SevenTwoGrowth.ELeaf001.seedWeight1, Math.B699.I11SevenTwoGrowth.ELeaf001.localCore, Math.B699.I11SevenTwoGrowth.ELeaf001.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta1)

theorem eTreeNodeLDelta1 : GrowthTree eLam ((eSeedWeight1).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf000.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf000.localWeight1, Math.B699.I11SevenTwoGrowth.ELeaf000.seedWeight1, Math.B699.I11SevenTwoGrowth.ELeaf000.localCore, Math.B699.I11SevenTwoGrowth.ELeaf000.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta1)

theorem eTreeNodeRootDelta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight1)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta1)
    (by simpa only [Math.B699.I11SevenTwoGrowth.ELeaf008.lam, Math.B699.I11SevenTwoGrowth.Shared.eLam, Math.B699.I11SevenTwoGrowth.ELeaf008.localWeight1, Math.B699.I11SevenTwoGrowth.ELeaf008.seedWeight1, Math.B699.I11SevenTwoGrowth.ELeaf008.localCore, Math.B699.I11SevenTwoGrowth.ELeaf008.seedCore, Math.B699.I11SevenTwoGrowth.ELeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11SevenTwoGrowth.ELeaf008.leaf_delta1)

theorem e_tree_delta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact eTreeNodeRootDelta1

end Math.B699.I11SevenTwoGrowth.Tree

#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRLLRLDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRLLRDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRLLDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRLDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeRootDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.q_tree_delta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRLLRLDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRLLRDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRLLDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRLDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLRDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeLDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.qTreeNodeRootDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.q_tree_delta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRRRRRDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRRRRDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRRRDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRRDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeRootDelta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.e_tree_delta0
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRRRRRDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRRRRDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRRRDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRRDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRRDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLRDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeLDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.eTreeNodeRootDelta1
#print axioms Math.B699.I11SevenTwoGrowth.Tree.e_tree_delta1
