module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.Pilot32

/-! An independently stated half-open interval. This does not certify the full
2..20M supplier or an unconditional original tail. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699FiniteSemantic

theorem new_chain_coverage_exact {gap lo hi n : Nat}
    (chain : B699Finite20261002.PrimeChain gap lo hi)
    (lower : lo ≤ n) (upper : n < hi) :
    ∃ p : Nat, p.Prime ∧ p ≤ n ∧ n < p + gap :=
  chain.near_top lower upper

theorem pilot_coverage_exact {n : Nat}
    (lower : 19662301 ≤ n) (upper : n < 19811023) :
    ∃ p : Nat, p.Prime ∧ p ≤ n ∧ n < p + 4883 :=
  B699Finite20261002.Pilot32.chain.near_top lower upper

end B699FiniteSemantic
#print B699FiniteSemantic.new_chain_coverage_exact
#print B699FiniteSemantic.pilot_coverage_exact
#print axioms B699Finite20261002.Pilot32.chain
#print axioms B699FiniteSemantic.new_chain_coverage_exact
#print axioms B699FiniteSemantic.pilot_coverage_exact
