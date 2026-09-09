import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.TrialPrimeCheck

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
# Composable positive prime chains

Each constructor records a prime node, strict forward progress, and the supplied
upper bound on the gap. No claim that all intervening primes are listed is used.
The terminal prime is certified too, although the interval consumer uses only
nodes strictly below the right endpoint.
-/

namespace B699MiddleIndex

/-- A finite increasing chain of positive primes, including both endpoints. -/
inductive PrimeChain (gap : ℕ) : ℕ → ℕ → Prop where
  | singleton {p : ℕ} (hp : p.Prime) : PrimeChain gap p p
  | step {p q r : ℕ} (hp : p.Prime) (hpq : p < q)
      (hgap : q ≤ p + gap) (htail : PrimeChain gap q r) : PrimeChain gap p r

theorem PrimeChain.first_prime {gap lo hi : ℕ} (h : PrimeChain gap lo hi) :
    lo.Prime := by
  cases h with
  | singleton hp => exact hp
  | step hp _ _ _ => exact hp

theorem PrimeChain.last_prime {gap lo hi : ℕ} (h : PrimeChain gap lo hi) :
    hi.Prime := by
  induction h with
  | singleton hp => exact hp
  | step _ _ _ _ ih => exact ih

/-- Blocks share exactly one endpoint. The endpoint value fixes the gluing. -/
theorem PrimeChain.trans {gap lo mid hi : ℕ}
    (hleft : PrimeChain gap lo mid) (hright : PrimeChain gap mid hi) :
    PrimeChain gap lo hi := by
  revert hright
  induction hleft with
  | singleton _ =>
      intro hright
      exact hright
  | step hp hpq hgap _ ih =>
      intro hright
      exact .step hp hpq hgap (ih hright)

/-- Every row in the half-open chain interval has a prime less than one gap below it.
The left inequality is non-strict, so the case p=n is retained. -/
theorem PrimeChain.near_top {gap lo hi : ℕ} (hchain : PrimeChain gap lo hi)
    {n : ℕ} (hlo : lo ≤ n) (hhi : n < hi) :
    ∃ p : ℕ, p.Prime ∧ p ≤ n ∧ n < p + gap := by
  induction hchain generalizing n with
  | singleton _ => omega
  | @step p q r hp _ hgap _ ih =>
      by_cases hnq : n < q
      · exact ⟨p, hp, hlo, by omega⟩
      · exact ih (by omega) hhi

/-- Right endpoint of a list whose first node is stored separately. -/
def chainEnd : ℕ → List ℕ → ℕ
  | p, [] => p
  | _, q :: qs => chainEnd q qs

/-- Optional complete reflected checker. Concrete proof blocks may instead use
individual kernel proof terms for primality and the PrimeChain constructors. -/
def trialChainCheck (gap p : ℕ) : List ℕ → Bool
  | [] => B699LowIndex.trialPrimeCheck p
  | q :: qs => B699LowIndex.trialPrimeCheck p &&
      decide (p < q ∧ q ≤ p + gap) && trialChainCheck gap q qs

theorem trialChainCheck_sound {gap p : ℕ} {qs : List ℕ}
    (hcheck : trialChainCheck gap p qs = true) :
    PrimeChain gap p (chainEnd p qs) := by
  induction qs generalizing p with
  | nil =>
      exact .singleton (B699LowIndex.trialPrimeCheck_sound hcheck)
  | cons q qs ih =>
      simp only [trialChainCheck, Bool.and_eq_true, decide_eq_true_eq] at hcheck
      exact .step (B699LowIndex.trialPrimeCheck_sound hcheck.1.1)
        hcheck.1.2.1 hcheck.1.2.2 (ih hcheck.2)

end B699MiddleIndex

#print axioms B699MiddleIndex.PrimeChain.trans
#print axioms B699MiddleIndex.PrimeChain.near_top
#print axioms B699MiddleIndex.trialChainCheck_sound
