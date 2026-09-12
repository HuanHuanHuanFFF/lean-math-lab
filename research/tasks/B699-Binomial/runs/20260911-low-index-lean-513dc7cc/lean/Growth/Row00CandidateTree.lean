import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Row00CandidateShared
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Row00CandidateLeaves
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.Partition

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.GrowthTreeRow00Candidate.Tree

 
open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.GrowthTreeRow00Candidate.Shared

theorem qTreeNodeLLRRLLRRLRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf006.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf006.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf006.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf006.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf006.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf006.leaf_delta0)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf007.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf007.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf007.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf007.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf007.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf007.leaf_delta0)

theorem qTreeNodeLLRRLLRRLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight)) ((qSeedCore).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf005.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf005.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf005.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf005.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf005.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf005.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLRRDelta0)

theorem qTreeNodeLLRRLLRRLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf004.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf004.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf004.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf004.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf004.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf004.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLRDelta0)

theorem qTreeNodeLLRRLLRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLDelta0)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf008.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf008.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf008.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf008.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf008.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf008.leaf_delta0)

theorem qTreeNodeLLRRLLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf003.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf003.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf003.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf003.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf003.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf003.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRDelta0)

theorem qTreeNodeLLRRLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf002.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf002.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf002.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf002.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf002.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRDelta0)

theorem qTreeNodeLLRRLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLDelta0)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf009.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf009.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf009.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf009.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf009.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf009.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf009.leaf_delta0)

theorem qTreeNodeLLRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLDelta0)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf010.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf010.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf010.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf010.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf010.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf010.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf010.leaf_delta0)

theorem qTreeNodeLLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf001.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf001.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf001.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf001.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf001.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRDelta0)

theorem qTreeNodeLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf000.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf000.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf000.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf000.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf000.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta0)

theorem qTreeNodeLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta0)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf011.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf011.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf011.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf011.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf011.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf011.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf011.leaf_delta0)

theorem qTreeNodeRootDelta0 : GrowthTree qLam qSeedWeight0 qSeedCore := by
  exact GrowthTree.split (lam := qLam) (w := qSeedWeight0) (f := qSeedCore)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta0)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf012.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf012.localWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf012.seedWeight0, Math.B699.GrowthTreeRow00Candidate.QLeaf012.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf012.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf012.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf012.leaf_delta0)

theorem q_tree_delta0 : GrowthTree qLam qSeedWeight0 qSeedCore := by
  exact qTreeNodeRootDelta0

theorem qTreeNodeLLRRLLRRLRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf006.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf006.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf006.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf006.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf006.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf006.leaf_delta1)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf007.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf007.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf007.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf007.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf007.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf007.leaf_delta1)

theorem qTreeNodeLLRRLLRRLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight)) ((qSeedCore).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf005.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf005.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf005.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf005.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf005.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf005.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLRRDelta1)

theorem qTreeNodeLLRRLLRRLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf004.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf004.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf004.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf004.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf004.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf004.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLRDelta1)

theorem qTreeNodeLLRRLLRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRLDelta1)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf008.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf008.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf008.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf008.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf008.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf008.leaf_delta1)

theorem qTreeNodeLLRRLLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf003.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf003.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf003.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf003.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf003.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf003.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRRDelta1)

theorem qTreeNodeLLRRLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf002.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf002.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf002.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf002.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf002.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLRDelta1)

theorem qTreeNodeLLRRLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLLDelta1)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf009.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf009.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf009.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf009.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf009.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf009.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf009.leaf_delta1)

theorem qTreeNodeLLRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRLDelta1)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf010.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf010.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf010.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf010.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf010.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf010.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf010.leaf_delta1)

theorem qTreeNodeLLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf001.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf001.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf001.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf001.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf001.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRRDelta1)

theorem qTreeNodeLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf000.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf000.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf000.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf000.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf000.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLRDelta1)

theorem qTreeNodeLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta1)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf011.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf011.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf011.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf011.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf011.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf011.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf011.leaf_delta1)

theorem qTreeNodeRootDelta1 : GrowthTree qLam qSeedWeight1 qSeedCore := by
  exact GrowthTree.split (lam := qLam) (w := qSeedWeight1) (f := qSeedCore)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta1)
    (by simpa only [Math.B699.GrowthTreeRow00Candidate.QLeaf012.lam, Math.B699.GrowthTreeRow00Candidate.Shared.qLam, Math.B699.GrowthTreeRow00Candidate.QLeaf012.localWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf012.seedWeight1, Math.B699.GrowthTreeRow00Candidate.QLeaf012.localCore, Math.B699.GrowthTreeRow00Candidate.QLeaf012.seedCore, Math.B699.GrowthTreeRow00Candidate.QLeaf012.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.GrowthTreeRow00Candidate.QLeaf012.leaf_delta1)

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
