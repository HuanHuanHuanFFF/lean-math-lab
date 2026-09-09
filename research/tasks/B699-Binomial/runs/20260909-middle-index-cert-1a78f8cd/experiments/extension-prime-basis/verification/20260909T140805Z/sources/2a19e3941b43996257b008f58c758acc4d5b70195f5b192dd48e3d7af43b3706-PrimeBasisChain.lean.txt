import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasis
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.PrimeChain

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension

/-- A prime chain checked against a complete reusable small-prime basis. -/
def basisChainCheck (B : Nat) (ps : List Nat) (gap p : Nat) : List Nat → Bool
  | [] => basisPrimeCheck B ps p
  | q :: qs => basisPrimeCheck B ps p && decide (p < q ∧ q ≤ p + gap) &&
      basisChainCheck B ps gap q qs

theorem basisChainCheck_sound {B gap p : Nat} {ps qs : List Nat}
    (hcomplete : BasisComplete B ps) (hcheck : basisChainCheck B ps gap p qs = true) :
    B699MiddleIndex.PrimeChain gap p (B699MiddleIndex.chainEnd p qs) := by
  induction qs generalizing p with
  | nil =>
      exact .singleton (basisPrimeCheck_sound (B := B) (ps := ps) (p := p) hcomplete hcheck)
  | cons q qs ih =>
      simp only [basisChainCheck, Bool.and_eq_true, decide_eq_true_eq] at hcheck
      exact .step
        (basisPrimeCheck_sound (B := B) (ps := ps) (p := p) hcomplete hcheck.1.1)
        hcheck.1.2.1 hcheck.1.2.2 (ih hcheck.2)

end B699MiddleExtension

#print axioms B699MiddleExtension.basisChainCheck_sound
