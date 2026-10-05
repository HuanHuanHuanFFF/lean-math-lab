import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-formal-seventyfive».supply.UniformThetaGapLegacy

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699ThetaVerify20261005

theorem gap_of_uniform_relative_theta_exact (D Y : Nat) (u l : Real)
    (hD : 0 < D) (hY : 0 < Y)
    (hcoeff : (D : Real)*u + ((D : Real)+1)*l < 1)
    (hupper : ∀ x : Real, (Y : Real) ≤ x → Chebyshev.theta x ≤ (1+u)*x)
    (hlower : ∀ x : Real, (Y : Real) ≤ x → (1-l)*x ≤ Chebyshev.theta x) :
    ∀ y : Nat, Y ≤ y →
      ∃ p : Nat, p.Prime ∧ y < p ∧ D*(p-y) ≤ y :=
  B699UniformTheta20261005.gap_of_uniform_relative_theta hD hY hcoeff hupper hlower

theorem gap_4095_of_uniform_relative_theta_exact (D Y : Nat) (u l : Real)
    (hD : 4095 ≤ D) (hY : 0 < Y) (hYmax : Y ≤ 122568684)
    (hcoeff : (D : Real)*u + ((D : Real)+1)*l < 1)
    (hupper : ∀ x : Real, (Y : Real) ≤ x → Chebyshev.theta x ≤ (1+u)*x)
    (hlower : ∀ x : Real, (Y : Real) ≤ x → (1-l)*x ≤ Chebyshev.theta x) :
    ∀ y : Nat, 10000000 ≤ y →
      ∃ p : Nat, p.Prime ∧ y < p ∧ 4095*(p-y) ≤ y :=
  B699UniformTheta20261005.gap_4095_of_uniform_relative_theta hD hY hYmax hcoeff hupper hlower

theorem original_tail_of_uniform_relative_theta_exact (D Y : Nat) (u l : Real)
    (hD : 4095 ≤ D) (hY : 0 < Y) (hYmax : Y ≤ 122568684)
    (hcoeff : (D : Real)*u + ((D : Real)+1)*l < 1)
    (hupper : ∀ x : Real, (Y : Real) ≤ x → Chebyshev.theta x ≤ (1+u)*x)
    (hlower : ∀ x : Real, (Y : Real) ≤ x → (1-l)*x ≤ Chebyshev.theta x) :
    ∀ n i j : Nat, 4883 ≤ i → i < j → j ≤ n/2 →
      ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  B699UniformTheta20261005.original_tail_of_uniform_relative_theta hD hY hYmax hcoeff hupper hlower

end B699ThetaVerify20261005
#print B699ThetaVerify20261005.gap_of_uniform_relative_theta_exact
#print axioms B699ThetaVerify20261005.gap_of_uniform_relative_theta_exact
#print B699ThetaVerify20261005.gap_4095_of_uniform_relative_theta_exact
#print axioms B699ThetaVerify20261005.gap_4095_of_uniform_relative_theta_exact
#print B699ThetaVerify20261005.original_tail_of_uniform_relative_theta_exact
#print axioms B699ThetaVerify20261005.original_tail_of_uniform_relative_theta_exact
