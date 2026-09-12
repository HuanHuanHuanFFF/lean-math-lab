import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Cover

set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11TerminalCover
theorem witnessesCheck_append {left right : List Witness}
    (hl : witnessesCheck left = true) (hr : witnessesCheck right = true) :
    witnessesCheck (left ++ right) = true := by
  unfold witnessesCheck at hl hr ⊢
  rw [List.all_append]
  exact Bool.and_eq_true_iff.mpr ⟨hl, hr⟩
end B699LowIndex.I11TerminalCover
#print axioms B699LowIndex.I11TerminalCover.witnessesCheck_append
