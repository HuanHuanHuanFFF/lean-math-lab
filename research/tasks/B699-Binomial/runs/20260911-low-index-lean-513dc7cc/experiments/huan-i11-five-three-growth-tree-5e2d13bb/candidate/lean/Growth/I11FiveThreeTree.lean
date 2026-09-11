import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11FiveThreeShared
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I11FiveThreeLeaves
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11FiveThreeGrowth.Tree

open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.I11FiveThreeGrowth.Shared

theorem qTreeNodeLRLDelta0 : GrowthTree qLam (qSeedWeight0).comp (((halfLeft).comp halfRight).comp halfLeft) (qSeedCore).comp (((halfLeft).comp halfRight).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp (((halfLeft).comp halfRight).comp halfLeft)) (f := (qSeedCore).comp (((halfLeft).comp halfRight).comp halfLeft))
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf001.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf001.localWeight0, Math.B699.I11FiveThreeGrowth.QLeaf001.seedWeight0, Math.B699.I11FiveThreeGrowth.QLeaf001.localCore, Math.B699.I11FiveThreeGrowth.QLeaf001.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf001.leaf_delta0)
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf002.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf002.localWeight0, Math.B699.I11FiveThreeGrowth.QLeaf002.seedWeight0, Math.B699.I11FiveThreeGrowth.QLeaf002.localCore, Math.B699.I11FiveThreeGrowth.QLeaf002.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf002.leaf_delta0)

theorem qTreeNodeLRDelta0 : GrowthTree qLam (qSeedWeight0).comp ((halfLeft).comp halfRight) (qSeedCore).comp ((halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp ((halfLeft).comp halfRight)) (f := (qSeedCore).comp ((halfLeft).comp halfRight))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLDelta0)
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf003.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf003.localWeight0, Math.B699.I11FiveThreeGrowth.QLeaf003.seedWeight0, Math.B699.I11FiveThreeGrowth.QLeaf003.localCore, Math.B699.I11FiveThreeGrowth.QLeaf003.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf003.leaf_delta0)

theorem qTreeNodeLDelta0 : GrowthTree qLam (qSeedWeight0).comp (halfLeft) (qSeedCore).comp (halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp (halfLeft)) (f := (qSeedCore).comp (halfLeft))
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf000.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf000.localWeight0, Math.B699.I11FiveThreeGrowth.QLeaf000.seedWeight0, Math.B699.I11FiveThreeGrowth.QLeaf000.localCore, Math.B699.I11FiveThreeGrowth.QLeaf000.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRDelta0)

theorem qTreeNodeRootDelta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta0)
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf004.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf004.localWeight0, Math.B699.I11FiveThreeGrowth.QLeaf004.seedWeight0, Math.B699.I11FiveThreeGrowth.QLeaf004.localCore, Math.B699.I11FiveThreeGrowth.QLeaf004.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf004.leaf_delta0)

theorem q_tree_delta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact qTreeNodeRootDelta0

theorem qTreeNodeLRLDelta1 : GrowthTree qLam (qSeedWeight1).comp (((halfLeft).comp halfRight).comp halfLeft) (qSeedCore).comp (((halfLeft).comp halfRight).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp (((halfLeft).comp halfRight).comp halfLeft)) (f := (qSeedCore).comp (((halfLeft).comp halfRight).comp halfLeft))
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf001.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf001.localWeight1, Math.B699.I11FiveThreeGrowth.QLeaf001.seedWeight1, Math.B699.I11FiveThreeGrowth.QLeaf001.localCore, Math.B699.I11FiveThreeGrowth.QLeaf001.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf001.leaf_delta1)
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf002.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf002.localWeight1, Math.B699.I11FiveThreeGrowth.QLeaf002.seedWeight1, Math.B699.I11FiveThreeGrowth.QLeaf002.localCore, Math.B699.I11FiveThreeGrowth.QLeaf002.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf002.leaf_delta1)

theorem qTreeNodeLRDelta1 : GrowthTree qLam (qSeedWeight1).comp ((halfLeft).comp halfRight) (qSeedCore).comp ((halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp ((halfLeft).comp halfRight)) (f := (qSeedCore).comp ((halfLeft).comp halfRight))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRLDelta1)
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf003.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf003.localWeight1, Math.B699.I11FiveThreeGrowth.QLeaf003.seedWeight1, Math.B699.I11FiveThreeGrowth.QLeaf003.localCore, Math.B699.I11FiveThreeGrowth.QLeaf003.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf003.leaf_delta1)

theorem qTreeNodeLDelta1 : GrowthTree qLam (qSeedWeight1).comp (halfLeft) (qSeedCore).comp (halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp (halfLeft)) (f := (qSeedCore).comp (halfLeft))
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf000.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf000.localWeight1, Math.B699.I11FiveThreeGrowth.QLeaf000.seedWeight1, Math.B699.I11FiveThreeGrowth.QLeaf000.localCore, Math.B699.I11FiveThreeGrowth.QLeaf000.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLRDelta1)

theorem qTreeNodeRootDelta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta1)
    (by simpa only [Math.B699.I11FiveThreeGrowth.QLeaf004.lam, Math.B699.I11FiveThreeGrowth.Shared.qLam, Math.B699.I11FiveThreeGrowth.QLeaf004.localWeight1, Math.B699.I11FiveThreeGrowth.QLeaf004.seedWeight1, Math.B699.I11FiveThreeGrowth.QLeaf004.localCore, Math.B699.I11FiveThreeGrowth.QLeaf004.seedCore, Math.B699.I11FiveThreeGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.QLeaf004.leaf_delta1)

theorem q_tree_delta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact qTreeNodeRootDelta1

theorem eTreeNodeLRDelta0 : GrowthTree eLam (eSeedWeight0).comp ((halfLeft).comp halfRight) (eSeedCore).comp ((halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight0).comp ((halfLeft).comp halfRight)) (f := (eSeedCore).comp ((halfLeft).comp halfRight))
    (by simpa only [Math.B699.I11FiveThreeGrowth.ELeaf001.lam, Math.B699.I11FiveThreeGrowth.Shared.eLam, Math.B699.I11FiveThreeGrowth.ELeaf001.localWeight0, Math.B699.I11FiveThreeGrowth.ELeaf001.seedWeight0, Math.B699.I11FiveThreeGrowth.ELeaf001.localCore, Math.B699.I11FiveThreeGrowth.ELeaf001.seedCore, Math.B699.I11FiveThreeGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.ELeaf001.leaf_delta0)
    (by simpa only [Math.B699.I11FiveThreeGrowth.ELeaf002.lam, Math.B699.I11FiveThreeGrowth.Shared.eLam, Math.B699.I11FiveThreeGrowth.ELeaf002.localWeight0, Math.B699.I11FiveThreeGrowth.ELeaf002.seedWeight0, Math.B699.I11FiveThreeGrowth.ELeaf002.localCore, Math.B699.I11FiveThreeGrowth.ELeaf002.seedCore, Math.B699.I11FiveThreeGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.ELeaf002.leaf_delta0)

theorem eTreeNodeLDelta0 : GrowthTree eLam (eSeedWeight0).comp (halfLeft) (eSeedCore).comp (halfLeft) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight0).comp (halfLeft)) (f := (eSeedCore).comp (halfLeft))
    (by simpa only [Math.B699.I11FiveThreeGrowth.ELeaf000.lam, Math.B699.I11FiveThreeGrowth.Shared.eLam, Math.B699.I11FiveThreeGrowth.ELeaf000.localWeight0, Math.B699.I11FiveThreeGrowth.ELeaf000.seedWeight0, Math.B699.I11FiveThreeGrowth.ELeaf000.localCore, Math.B699.I11FiveThreeGrowth.ELeaf000.seedCore, Math.B699.I11FiveThreeGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.ELeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta0)

theorem eTreeNodeRootDelta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight0)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta0)
    (by simpa only [Math.B699.I11FiveThreeGrowth.ELeaf003.lam, Math.B699.I11FiveThreeGrowth.Shared.eLam, Math.B699.I11FiveThreeGrowth.ELeaf003.localWeight0, Math.B699.I11FiveThreeGrowth.ELeaf003.seedWeight0, Math.B699.I11FiveThreeGrowth.ELeaf003.localCore, Math.B699.I11FiveThreeGrowth.ELeaf003.seedCore, Math.B699.I11FiveThreeGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.ELeaf003.leaf_delta0)

theorem e_tree_delta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact eTreeNodeRootDelta0

theorem eTreeNodeLRDelta1 : GrowthTree eLam (eSeedWeight1).comp ((halfLeft).comp halfRight) (eSeedCore).comp ((halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight1).comp ((halfLeft).comp halfRight)) (f := (eSeedCore).comp ((halfLeft).comp halfRight))
    (by simpa only [Math.B699.I11FiveThreeGrowth.ELeaf001.lam, Math.B699.I11FiveThreeGrowth.Shared.eLam, Math.B699.I11FiveThreeGrowth.ELeaf001.localWeight1, Math.B699.I11FiveThreeGrowth.ELeaf001.seedWeight1, Math.B699.I11FiveThreeGrowth.ELeaf001.localCore, Math.B699.I11FiveThreeGrowth.ELeaf001.seedCore, Math.B699.I11FiveThreeGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.ELeaf001.leaf_delta1)
    (by simpa only [Math.B699.I11FiveThreeGrowth.ELeaf002.lam, Math.B699.I11FiveThreeGrowth.Shared.eLam, Math.B699.I11FiveThreeGrowth.ELeaf002.localWeight1, Math.B699.I11FiveThreeGrowth.ELeaf002.seedWeight1, Math.B699.I11FiveThreeGrowth.ELeaf002.localCore, Math.B699.I11FiveThreeGrowth.ELeaf002.seedCore, Math.B699.I11FiveThreeGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.ELeaf002.leaf_delta1)

theorem eTreeNodeLDelta1 : GrowthTree eLam (eSeedWeight1).comp (halfLeft) (eSeedCore).comp (halfLeft) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight1).comp (halfLeft)) (f := (eSeedCore).comp (halfLeft))
    (by simpa only [Math.B699.I11FiveThreeGrowth.ELeaf000.lam, Math.B699.I11FiveThreeGrowth.Shared.eLam, Math.B699.I11FiveThreeGrowth.ELeaf000.localWeight1, Math.B699.I11FiveThreeGrowth.ELeaf000.seedWeight1, Math.B699.I11FiveThreeGrowth.ELeaf000.localCore, Math.B699.I11FiveThreeGrowth.ELeaf000.seedCore, Math.B699.I11FiveThreeGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.ELeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta1)

theorem eTreeNodeRootDelta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight1)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta1)
    (by simpa only [Math.B699.I11FiveThreeGrowth.ELeaf003.lam, Math.B699.I11FiveThreeGrowth.Shared.eLam, Math.B699.I11FiveThreeGrowth.ELeaf003.localWeight1, Math.B699.I11FiveThreeGrowth.ELeaf003.seedWeight1, Math.B699.I11FiveThreeGrowth.ELeaf003.localCore, Math.B699.I11FiveThreeGrowth.ELeaf003.seedCore, Math.B699.I11FiveThreeGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11FiveThreeGrowth.ELeaf003.leaf_delta1)

theorem e_tree_delta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact eTreeNodeRootDelta1

end Math.B699.I11FiveThreeGrowth.Tree

#print axioms Math.B699.I11FiveThreeGrowth.Tree.qTreeNodeLRLDelta0
#print axioms Math.B699.I11FiveThreeGrowth.Tree.qTreeNodeLRDelta0
#print axioms Math.B699.I11FiveThreeGrowth.Tree.qTreeNodeLDelta0
#print axioms Math.B699.I11FiveThreeGrowth.Tree.qTreeNodeRootDelta0
#print axioms Math.B699.I11FiveThreeGrowth.Tree.q_tree_delta0
#print axioms Math.B699.I11FiveThreeGrowth.Tree.qTreeNodeLRLDelta1
#print axioms Math.B699.I11FiveThreeGrowth.Tree.qTreeNodeLRDelta1
#print axioms Math.B699.I11FiveThreeGrowth.Tree.qTreeNodeLDelta1
#print axioms Math.B699.I11FiveThreeGrowth.Tree.qTreeNodeRootDelta1
#print axioms Math.B699.I11FiveThreeGrowth.Tree.q_tree_delta1
#print axioms Math.B699.I11FiveThreeGrowth.Tree.eTreeNodeLRDelta0
#print axioms Math.B699.I11FiveThreeGrowth.Tree.eTreeNodeLDelta0
#print axioms Math.B699.I11FiveThreeGrowth.Tree.eTreeNodeRootDelta0
#print axioms Math.B699.I11FiveThreeGrowth.Tree.e_tree_delta0
#print axioms Math.B699.I11FiveThreeGrowth.Tree.eTreeNodeLRDelta1
#print axioms Math.B699.I11FiveThreeGrowth.Tree.eTreeNodeLDelta1
#print axioms Math.B699.I11FiveThreeGrowth.Tree.eTreeNodeRootDelta1
#print axioms Math.B699.I11FiveThreeGrowth.Tree.e_tree_delta1
