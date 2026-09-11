import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.IntervalCover

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.LowIndexLean513dc7cc

/-- Exact list decomposition transfers independently checked rows to the old checker. -/
theorem pairCoverCheck_of_chunks
    {intervals : List ColouredInterval} {cover : List NatInterval}
    {chunks : List (List ColouredInterval)}
    (hEq : chunks.flatten = intervals)
    (hChunks : ∀ block ∈ chunks,
      block.all (fun I => intervals.all (fun J =>
        if I.1 = J.1 then true else
          coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) cover)) = true) :
    pairCoverCheck intervals cover = true := by
  unfold pairCoverCheck
  apply List.all_eq_true.mpr
  intro I hI
  rw [← hEq] at hI
  obtain ⟨block, hblock, hI⟩ := List.mem_flatten.mp hI
  exact List.all_eq_true.mp (hChunks block hblock) I hI

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.pairCoverCheck_of_chunks
