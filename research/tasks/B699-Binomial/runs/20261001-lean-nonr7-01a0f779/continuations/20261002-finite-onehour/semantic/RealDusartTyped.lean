module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.DusartAdapter

/-! Literal same-D/Y domains and explicitly conditional Dusart input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteSemantic

theorem nat_real_gap_exact (D Y : Nat) :
    (∀ y : Nat, Y ≤ y → ∃ p : Nat, p.Prime ∧ y < p ∧ D * (p - y) ≤ y) ↔
    (∀ x : Real, (Y : Real) ≤ x → ∃ p : Nat,
      p.Prime ∧ x < (p : Real) ∧ (D : Real) * ((p : Real) - x) ≤ x) :=
  B699TailGap.nat_gap_iff_real_gap

theorem dusart_gap_exact
    (dusart : ∀ x : Real, (396738 : Real) < x → ∃ p : Nat,
      p.Prime ∧ x < (p : Real) ∧ (p : Real) ≤ x * (1 + 1 / (25 * (Real.log x) ^ 2))) :
    ∀ y : Nat, 10000000 ≤ y → ∃ p : Nat,
      p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := B699TailGap.nat_gap_of_dusart dusart

end B699FiniteSemantic
#print B699FiniteSemantic.nat_real_gap_exact
#print B699FiniteSemantic.dusart_gap_exact
#print axioms B699FiniteSemantic.nat_real_gap_exact
#print axioms B699FiniteSemantic.dusart_gap_exact
