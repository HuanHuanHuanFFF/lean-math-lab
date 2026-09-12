import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I13C311Shared
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.I13C311Leaves
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I13C311Growth.Tree

open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.I13C311Growth.Shared

theorem qTreeNodeLLRLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfLeft)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfLeft)))
    (by simpa only [Math.B699.I13C311Growth.QLeaf001.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf001.localWeight0, Math.B699.I13C311Growth.QLeaf001.seedWeight0, Math.B699.I13C311Growth.QLeaf001.localCore, Math.B699.I13C311Growth.QLeaf001.seedCore, Math.B699.I13C311Growth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf001.leaf_delta0)
    (by simpa only [Math.B699.I13C311Growth.QLeaf002.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf002.localWeight0, Math.B699.I13C311Growth.QLeaf002.seedWeight0, Math.B699.I13C311Growth.QLeaf002.localCore, Math.B699.I13C311Growth.QLeaf002.seedCore, Math.B699.I13C311Growth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf002.leaf_delta0)

theorem qTreeNodeLLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRLDelta0)
    (by simpa only [Math.B699.I13C311Growth.QLeaf003.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf003.localWeight0, Math.B699.I13C311Growth.QLeaf003.seedWeight0, Math.B699.I13C311Growth.QLeaf003.localCore, Math.B699.I13C311Growth.QLeaf003.seedCore, Math.B699.I13C311Growth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf003.leaf_delta0)

theorem qTreeNodeLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I13C311Growth.QLeaf000.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf000.localWeight0, Math.B699.I13C311Growth.QLeaf000.seedWeight0, Math.B699.I13C311Growth.QLeaf000.localCore, Math.B699.I13C311Growth.QLeaf000.seedCore, Math.B699.I13C311Growth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta0)

theorem qTreeNodeLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta0)
    (by simpa only [Math.B699.I13C311Growth.QLeaf004.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf004.localWeight0, Math.B699.I13C311Growth.QLeaf004.seedWeight0, Math.B699.I13C311Growth.QLeaf004.localCore, Math.B699.I13C311Growth.QLeaf004.seedCore, Math.B699.I13C311Growth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf004.leaf_delta0)

theorem qTreeNodeRootDelta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta0)
    (by simpa only [Math.B699.I13C311Growth.QLeaf005.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf005.localWeight0, Math.B699.I13C311Growth.QLeaf005.seedWeight0, Math.B699.I13C311Growth.QLeaf005.localCore, Math.B699.I13C311Growth.QLeaf005.seedCore, Math.B699.I13C311Growth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf005.leaf_delta0)

theorem q_tree_delta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact qTreeNodeRootDelta0

theorem qTreeNodeLLRLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfLeft)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfLeft)))
    (by simpa only [Math.B699.I13C311Growth.QLeaf001.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf001.localWeight1, Math.B699.I13C311Growth.QLeaf001.seedWeight1, Math.B699.I13C311Growth.QLeaf001.localCore, Math.B699.I13C311Growth.QLeaf001.seedCore, Math.B699.I13C311Growth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf001.leaf_delta1)
    (by simpa only [Math.B699.I13C311Growth.QLeaf002.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf002.localWeight1, Math.B699.I13C311Growth.QLeaf002.seedWeight1, Math.B699.I13C311Growth.QLeaf002.localCore, Math.B699.I13C311Growth.QLeaf002.seedCore, Math.B699.I13C311Growth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf002.leaf_delta1)

theorem qTreeNodeLLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRLDelta1)
    (by simpa only [Math.B699.I13C311Growth.QLeaf003.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf003.localWeight1, Math.B699.I13C311Growth.QLeaf003.seedWeight1, Math.B699.I13C311Growth.QLeaf003.localCore, Math.B699.I13C311Growth.QLeaf003.seedCore, Math.B699.I13C311Growth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf003.leaf_delta1)

theorem qTreeNodeLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I13C311Growth.QLeaf000.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf000.localWeight1, Math.B699.I13C311Growth.QLeaf000.seedWeight1, Math.B699.I13C311Growth.QLeaf000.localCore, Math.B699.I13C311Growth.QLeaf000.seedCore, Math.B699.I13C311Growth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta1)

theorem qTreeNodeLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta1)
    (by simpa only [Math.B699.I13C311Growth.QLeaf004.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf004.localWeight1, Math.B699.I13C311Growth.QLeaf004.seedWeight1, Math.B699.I13C311Growth.QLeaf004.localCore, Math.B699.I13C311Growth.QLeaf004.seedCore, Math.B699.I13C311Growth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf004.leaf_delta1)

theorem qTreeNodeRootDelta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta1)
    (by simpa only [Math.B699.I13C311Growth.QLeaf005.lam, Math.B699.I13C311Growth.Shared.qLam, Math.B699.I13C311Growth.QLeaf005.localWeight1, Math.B699.I13C311Growth.QLeaf005.seedWeight1, Math.B699.I13C311Growth.QLeaf005.localCore, Math.B699.I13C311Growth.QLeaf005.seedCore, Math.B699.I13C311Growth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.QLeaf005.leaf_delta1)

theorem q_tree_delta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact qTreeNodeRootDelta1

theorem eTreeNodeRootDelta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight0)) (f := (eSeedCore))
    (by simpa only [Math.B699.I13C311Growth.ELeaf000.lam, Math.B699.I13C311Growth.Shared.eLam, Math.B699.I13C311Growth.ELeaf000.localWeight0, Math.B699.I13C311Growth.ELeaf000.seedWeight0, Math.B699.I13C311Growth.ELeaf000.localCore, Math.B699.I13C311Growth.ELeaf000.seedCore, Math.B699.I13C311Growth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.ELeaf000.leaf_delta0)
    (by simpa only [Math.B699.I13C311Growth.ELeaf001.lam, Math.B699.I13C311Growth.Shared.eLam, Math.B699.I13C311Growth.ELeaf001.localWeight0, Math.B699.I13C311Growth.ELeaf001.seedWeight0, Math.B699.I13C311Growth.ELeaf001.localCore, Math.B699.I13C311Growth.ELeaf001.seedCore, Math.B699.I13C311Growth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.ELeaf001.leaf_delta0)

theorem e_tree_delta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact eTreeNodeRootDelta0

theorem eTreeNodeRootDelta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight1)) (f := (eSeedCore))
    (by simpa only [Math.B699.I13C311Growth.ELeaf000.lam, Math.B699.I13C311Growth.Shared.eLam, Math.B699.I13C311Growth.ELeaf000.localWeight1, Math.B699.I13C311Growth.ELeaf000.seedWeight1, Math.B699.I13C311Growth.ELeaf000.localCore, Math.B699.I13C311Growth.ELeaf000.seedCore, Math.B699.I13C311Growth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.ELeaf000.leaf_delta1)
    (by simpa only [Math.B699.I13C311Growth.ELeaf001.lam, Math.B699.I13C311Growth.Shared.eLam, Math.B699.I13C311Growth.ELeaf001.localWeight1, Math.B699.I13C311Growth.ELeaf001.seedWeight1, Math.B699.I13C311Growth.ELeaf001.localCore, Math.B699.I13C311Growth.ELeaf001.seedCore, Math.B699.I13C311Growth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I13C311Growth.ELeaf001.leaf_delta1)

theorem e_tree_delta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact eTreeNodeRootDelta1

end Math.B699.I13C311Growth.Tree

#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeLLRLDelta0
#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeLLRDelta0
#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeLLDelta0
#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeLDelta0
#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeRootDelta0
#print axioms Math.B699.I13C311Growth.Tree.q_tree_delta0
#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeLLRLDelta1
#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeLLRDelta1
#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeLLDelta1
#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeLDelta1
#print axioms Math.B699.I13C311Growth.Tree.qTreeNodeRootDelta1
#print axioms Math.B699.I13C311Growth.Tree.q_tree_delta1
#print axioms Math.B699.I13C311Growth.Tree.eTreeNodeRootDelta0
#print axioms Math.B699.I13C311Growth.Tree.e_tree_delta0
#print axioms Math.B699.I13C311Growth.Tree.eTreeNodeRootDelta1
#print axioms Math.B699.I13C311Growth.Tree.e_tree_delta1
