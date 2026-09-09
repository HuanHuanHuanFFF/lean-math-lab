import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.TrialPrimeCheck

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension

/-- Every prime below B occurs in the supplied list. Extra list entries are harmless. -/
def BasisComplete (B : Nat) (ps : List Nat) : Prop :=
  ∀ q : Nat, q.Prime → q < B → q ∈ ps

/-- Use the original small-number checker below B, and the complete basis above B.
No assertion that every supplied basis entry is prime is needed for soundness. -/
def basisPrimeCheck (B : Nat) (ps : List Nat) (p : Nat) : Bool :=
  if p < B then B699LowIndex.trialPrimeCheck p
  else decide (2 ≤ p ∧ p < B * B) && ps.all (fun q => decide (p % q ≠ 0))

theorem basisPrimeCheck_sound {B p : Nat} {ps : List Nat}
    (hcomplete : BasisComplete B ps) (hcheck : basisPrimeCheck B ps p = true) :
    p.Prime := by
  by_cases hsmall : p < B
  · exact B699LowIndex.trialPrimeCheck_sound
      (by simpa only [basisPrimeCheck, if_pos hsmall] using hcheck)
  · have hc : (2 ≤ p ∧ p < B * B) ∧
        ps.all (fun q => decide (p % q ≠ 0)) = true := by
      simpa only [basisPrimeCheck, if_neg hsmall, Bool.and_eq_true, decide_eq_true_eq]
        using hcheck
    refine Nat.prime_def_le_sqrt.mpr ⟨hc.1.1, ?_⟩
    intro d hd hsqrt hdiv
    obtain ⟨q, hq, hqd⟩ := Nat.exists_prime_and_dvd (n := d) (by omega)
    have hqdle : q ≤ d := Nat.le_of_dvd (by omega) hqd
    have hsqrtB : Nat.sqrt p < B := Nat.sqrt_lt.mpr hc.1.2
    have hqB : q < B := by omega
    have hmem : q ∈ ps := hcomplete q hq hqB
    have htest : p % q ≠ 0 :=
      of_decide_eq_true (List.all_eq_true.mp hc.2 q hmem)
    exact htest (Nat.mod_eq_zero_of_dvd (hqd.trans hdiv))

end B699MiddleExtension

#print axioms B699MiddleExtension.basisPrimeCheck_sound
