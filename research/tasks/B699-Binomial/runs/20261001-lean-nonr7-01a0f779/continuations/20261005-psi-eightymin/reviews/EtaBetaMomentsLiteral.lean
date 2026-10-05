import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaBetaMoments
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699PsiEightyVerify20261005
theorem beta_integer_moment_literal (m n : Nat) :
    (∫ t : ℝ in (0 : ℝ)..1, t ^ m * (1 - t) ^ n) =
      (m.factorial : ℝ) * (n.factorial : ℝ) / ((m + n + 1).factorial : ℝ) :=
  B699EtaMoments20261005.beta_integer_moment m n
end B699PsiEightyVerify20261005
#print axioms B699PsiEightyVerify20261005.beta_integer_moment_literal
