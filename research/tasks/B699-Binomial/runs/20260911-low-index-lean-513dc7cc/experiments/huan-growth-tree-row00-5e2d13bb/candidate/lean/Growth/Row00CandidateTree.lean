import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Row00CandidateShared
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Row00CandidateLeaves
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.GrowthTreeRow00Candidate.Tree

 
open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.GrowthTreeRow00Candidate.Shared

theorem qTreeNodeLLRRLLRRLRRDelta0 : GrowthTree qLam (qSeedWeight0).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight) (qSeedCore).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight)) (f := (qSeedCore).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight))
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf006.leaf_delta0)
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf007.leaf_delta0)

theorem qTreeNodeLLRRLLRRLRDelta0 : GrowthTree qLam (qSeedWeight0).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight) (qSeedCore).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight)) (f := (qSeedCore).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight))
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf005.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLRRDelta0)

theorem qTreeNodeLLRRLLRRLDelta0 : GrowthTree qLam (qSeedWeight0).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft) (qSeedCore).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) (f := (qSeedCore).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft))
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf004.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLRDelta0)

theorem qTreeNodeLLRRLLRRDelta0 : GrowthTree qLam (qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight) (qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) (f := (qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLDelta0)
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf008.leaf_delta0)

theorem qTreeNodeLLRRLLRDelta0 : GrowthTree qLam (qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight) (qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) (f := (qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight))
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf003.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRDelta0)

theorem qTreeNodeLLRRLLDelta0 : GrowthTree qLam (qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft) (qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) (f := (qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRDelta0)

theorem qTreeNodeLLRRLDelta0 : GrowthTree qLam (qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft) (qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) (f := (qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLDelta0)
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf009.leaf_delta0)

theorem qTreeNodeLLRRDelta0 : GrowthTree qLam (qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight) (qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) (f := (qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLDelta0)
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf010.leaf_delta0)

theorem qTreeNodeLLRDelta0 : GrowthTree qLam (qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight) (qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight)) (f := (qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight))
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRDelta0)

theorem qTreeNodeLLDelta0 : GrowthTree qLam (qSeedWeight0).comp ((halfLeft).comp halfLeft) (qSeedCore).comp ((halfLeft).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp ((halfLeft).comp halfLeft)) (f := (qSeedCore).comp ((halfLeft).comp halfLeft))
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta0)

theorem qTreeNodeLDelta0 : GrowthTree qLam (qSeedWeight0).comp (halfLeft) (qSeedCore).comp (halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0).comp (halfLeft)) (f := (qSeedCore).comp (halfLeft))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta0)
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf011.leaf_delta0)

theorem qTreeNodeRootDelta0 : GrowthTree qLam qSeedWeight0 qSeedCore := by
  exact GrowthTree.split (lam := qLam) (w := qSeedWeight0) (f := qSeedCore)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta0)
    (by simpa only [localWeight0, seedWeight0, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf012.leaf_delta0)

theorem q_tree_delta0 : GrowthTree qLam qSeedWeight0 qSeedCore := by
  exact qTreeNodeRootDelta0

theorem qTreeNodeLLRRLLRRLRRDelta1 : GrowthTree qLam (qSeedWeight1).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight) (qSeedCore).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight)) (f := (qSeedCore).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight))
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf006.leaf_delta1)
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf007.leaf_delta1)

theorem qTreeNodeLLRRLLRRLRDelta1 : GrowthTree qLam (qSeedWeight1).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight) (qSeedCore).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight)) (f := (qSeedCore).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight))
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf005.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLRRDelta1)

theorem qTreeNodeLLRRLLRRLDelta1 : GrowthTree qLam (qSeedWeight1).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft) (qSeedCore).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) (f := (qSeedCore).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft))
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf004.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLRDelta1)

theorem qTreeNodeLLRRLLRRDelta1 : GrowthTree qLam (qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight) (qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) (f := (qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLDelta1)
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf008.leaf_delta1)

theorem qTreeNodeLLRRLLRDelta1 : GrowthTree qLam (qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight) (qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) (f := (qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight))
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf003.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRDelta1)

theorem qTreeNodeLLRRLLDelta1 : GrowthTree qLam (qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft) (qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) (f := (qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRDelta1)

theorem qTreeNodeLLRRLDelta1 : GrowthTree qLam (qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft) (qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) (f := (qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLDelta1)
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf009.leaf_delta1)

theorem qTreeNodeLLRRDelta1 : GrowthTree qLam (qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight) (qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) (f := (qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLDelta1)
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf010.leaf_delta1)

theorem qTreeNodeLLRDelta1 : GrowthTree qLam (qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight) (qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight)) (f := (qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight))
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRDelta1)

theorem qTreeNodeLLDelta1 : GrowthTree qLam (qSeedWeight1).comp ((halfLeft).comp halfLeft) (qSeedCore).comp ((halfLeft).comp halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp ((halfLeft).comp halfLeft)) (f := (qSeedCore).comp ((halfLeft).comp halfLeft))
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta1)

theorem qTreeNodeLDelta1 : GrowthTree qLam (qSeedWeight1).comp (halfLeft) (qSeedCore).comp (halfLeft) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1).comp (halfLeft)) (f := (qSeedCore).comp (halfLeft))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta1)
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf011.leaf_delta1)

theorem qTreeNodeRootDelta1 : GrowthTree qLam qSeedWeight1 qSeedCore := by
  exact GrowthTree.split (lam := qLam) (w := qSeedWeight1) (f := qSeedCore)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta1)
    (by simpa only [localWeight1, seedWeight1, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf012.leaf_delta1)

theorem q_tree_delta1 : GrowthTree qLam qSeedWeight1 qSeedCore := by
  exact qTreeNodeRootDelta1

end Math.B699.GrowthTreeRow00Candidate.Tree

#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRRLRRDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRRLRDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRRLDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRRDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeRootDelta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.q_tree_delta0
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRRLRRDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRRLRDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRRLDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRRDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLRDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLLDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRLDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRRDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLRDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLLDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeLDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.qTreeNodeRootDelta1
#print axioms Math.B699.GrowthTreeRow00Candidate.Tree.q_tree_delta1
