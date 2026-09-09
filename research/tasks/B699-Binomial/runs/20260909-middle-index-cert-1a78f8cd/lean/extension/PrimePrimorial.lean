import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasis
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.PrimeChain
import Mathlib.Algebra.BigOperators.Group.List.Lemmas

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension

/-- The large-number branch takes a supplied natural literal P, never a list product. -/
def primorialPrimeCheck (B P p : Nat) : Bool :=
  if p < B then B699LowIndex.trialPrimeCheck p
  else decide (2 ≤ p ∧ p < B * B ∧ Nat.gcd p P = 1)

theorem primorialPrimeCheck_sound {B P p : Nat} {ps : List Nat}
    (hcomplete : BasisComplete B ps) (hprod : ps.prod = P)
    (hcheck : primorialPrimeCheck B P p = true) : p.Prime := by
  by_cases hsmall : p < B
  · exact B699LowIndex.trialPrimeCheck_sound
      (by simpa only [primorialPrimeCheck, if_pos hsmall] using hcheck)
  · have hc : 2 ≤ p ∧ p < B * B ∧ Nat.gcd p P = 1 :=
      of_decide_eq_true (by simpa only [primorialPrimeCheck, if_neg hsmall] using hcheck)
    refine Nat.prime_def_le_sqrt.mpr ⟨hc.1, ?_⟩
    intro d hd hsqrt hdiv
    obtain ⟨q, hq, hqd⟩ := Nat.exists_prime_and_dvd (n := d) (by omega)
    have hqdle : q ≤ d := Nat.le_of_dvd (by omega) hqd
    have hsqrtB : Nat.sqrt p < B := Nat.sqrt_lt.mpr hc.2.1
    have hqB : q < B := by omega
    have hmem : q ∈ ps := hcomplete q hq hqB
    have hqP : q ∣ P := by
      rw [← hprod]
      exact List.dvd_prod hmem
    have hqgcd : q ∣ Nat.gcd p P := Nat.dvd_gcd (hqd.trans hdiv) hqP
    exact hq.not_dvd_one (by simpa only [hc.2.2] using hqgcd)

/-- The same positive-chain certificate, with each prime checked by one gcd. -/
def primorialChainCheck (B P gap p : Nat) : List Nat → Bool
  | [] => primorialPrimeCheck B P p
  | q :: qs => primorialPrimeCheck B P p && decide (p < q ∧ q ≤ p + gap) &&
      primorialChainCheck B P gap q qs

theorem primorialChainCheck_sound {B P gap p : Nat} {ps qs : List Nat}
    (hcomplete : BasisComplete B ps) (hprod : ps.prod = P)
    (hcheck : primorialChainCheck B P gap p qs = true) :
    B699MiddleIndex.PrimeChain gap p (B699MiddleIndex.chainEnd p qs) := by
  induction qs generalizing p with
  | nil =>
      exact .singleton
        (primorialPrimeCheck_sound (B := B) (P := P) (p := p) (ps := ps) hcomplete hprod hcheck)
  | cons q qs ih =>
      simp only [primorialChainCheck, Bool.and_eq_true, decide_eq_true_eq] at hcheck
      exact .step
        (primorialPrimeCheck_sound (B := B) (P := P) (p := p) (ps := ps) hcomplete hprod hcheck.1.1)
        hcheck.1.2.1 hcheck.1.2.2 (ih hcheck.2)

end B699MiddleExtension

#print axioms B699MiddleExtension.primorialPrimeCheck_sound
#print axioms B699MiddleExtension.primorialChainCheck_sound
