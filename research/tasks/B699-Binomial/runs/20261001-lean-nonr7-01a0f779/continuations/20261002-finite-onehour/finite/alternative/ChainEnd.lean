module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699Finite20261002
def chainEnd : Nat → List Nat → Nat
  | p, [] => p
  | _, q :: qs => chainEnd q qs
end B699Finite20261002
