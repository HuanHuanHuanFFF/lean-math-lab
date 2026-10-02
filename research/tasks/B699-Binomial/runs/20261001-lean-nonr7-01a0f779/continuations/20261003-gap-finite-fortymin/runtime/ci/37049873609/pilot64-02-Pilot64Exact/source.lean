module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261003-gap-halfhour».supply.Pilot64

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section
namespace B699GapFiniteVerify20261003

theorem pilot64_chain_exact :
    B699Finite20261002.PrimeChain 2442 9999889 10149203 :=
  B699GapSlice20261003.chain

theorem pilot64_initial_slice_exact (y : Nat)
    (hy : 10000000 ≤ y) (hyhi : y < 10146761) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y :=
  B699GapSlice20261003.initial_slice hy hyhi

end B699GapFiniteVerify20261003

#print B699GapFiniteVerify20261003.pilot64_chain_exact
#print B699GapFiniteVerify20261003.pilot64_initial_slice_exact
#print axioms B699GapFiniteVerify20261003.pilot64_chain_exact
#print axioms B699GapFiniteVerify20261003.pilot64_initial_slice_exact
