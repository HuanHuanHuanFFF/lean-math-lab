import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.CofactorCover
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.SmallPowerIntervals

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CriticalM64Windows
open B699LowIndex B699LargePrimeStructure

def fullExponent (n i p : ℕ) : ℕ :=
  (n.choose i).factorization p + i.factorization p

def M64Parameters (i r s : ℕ) : Prop :=
  2 ≤ i ∧ i ≤ 34 ∧ s < i ∧ 2 ≤ smallPrimeCount i ∧ 0 < 2 * s - r ∧
    i * (i - 1) ≤ 4097 ∧ i * (2 * s - r) = heightExponent i r s ∧
      (2 * i.factorial) ^ (2 * s - r) ≤
        windowConstant i r s * 64 ^ ((2 * s - r) * (smallPrimeCount i - 1))

instance instDecidableM64Parameters (i r s : ℕ) : Decidable (M64Parameters i r s) := by
  unfold M64Parameters
  infer_instance

/-- The original complete binomial component is retained in the large-power
inequality; the window exponent additionally includes the entire index part. -/
def M64Window (n i p a A : ℕ) : Prop :=
  a < i ∧ 1 ≤ A ∧ i.factorization p < fullExponent n i p ∧
    A * p ^ i.factorization p ≤ 64 ∧
    n ≤ 64 * p ^ (n.choose i).factorization p ∧
    n = A * p ^ fullExponent n i p + a

def signedGap (n i p q A B : ℕ) : ℤ :=
  ((A * p ^ fullExponent n i p : ℕ) : ℤ) -
    ((B * q ^ fullExponent n i q : ℕ) : ℤ)

def M64PairData (n i p q a b A B : ℕ) : Prop :=
  p.Prime ∧ p < i ∧ q.Prime ∧ q < i ∧ p < q ∧
    M64Window n i p a A ∧ M64Window n i q b B ∧ a ≠ b ∧
    signedGap n i p q A B = (b : ℤ) - (a : ℤ) ∧
    (1 : ℤ) ≤ |signedGap n i p q A B| ∧ |signedGap n i p q A B| ≤ 33

def M64Pair (n i : ℕ) : Prop :=
  ∃ p q a b A B : ℕ, M64PairData n i p q a b A B

end Math.B699.CriticalM64Windows
