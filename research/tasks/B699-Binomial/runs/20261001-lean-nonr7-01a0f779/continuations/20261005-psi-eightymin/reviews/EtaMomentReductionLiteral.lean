import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaMomentReduction
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699PsiEightyVerify20261005
theorem symmetric_integer_moment_literal (n : Nat) :
    (∫ u : ℝ in (-1 : ℝ)..1, (1 - u ^ 2) ^ n) =
      2 * (4 : ℝ) ^ n * (n.factorial : ℝ) ^ 2 / ((2 * n + 1).factorial : ℝ) :=
  B699EtaMoments20261005.symmetric_integer_moment n
end B699PsiEightyVerify20261005
#print axioms B699PsiEightyVerify20261005.symmetric_integer_moment_literal
