import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.ThreeWindowSize

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
# Explicit large-divisor witnesses for finite row certificates

The executable checks use only the supplied divisor, factorials, descending
factorials, coprimality, prime witnesses, and exact integer comparisons.
The abstract correctness proof uses the accepted small/large prime-part split;
it does not require factoring the binomial coefficient when a row is checked.
-/

namespace B699LowIndex
open B699LargePrimeStructure

/-- A divisor coprime to (i-1)! belongs entirely to the inclusive p>=i part.
The endpoint p=i is deliberately not excluded by the factorial hypothesis. -/
theorem large_divisor_dvd_prime_part {n i D : ℕ}
    (hin : i ≤ n) (hD : D ∣ n.choose i)
    (hcop : D.Coprime (i - 1).factorial) :
    D ∣ B699BridgeAudit.primePart i (n.choose i) := by
  classical
  have hcopSmall : D.Coprime (smallPrimePart n i) := by
    unfold smallPrimePart
    apply Nat.Coprime.prod_right
    intro p hp
    obtain ⟨hmem, hpi⟩ := Finset.mem_filter.mp hp
    have hprime := Nat.prime_of_mem_primeFactors hmem
    have hpfact : p ∣ (i - 1).factorial :=
      hprime.dvd_factorial.mpr (by omega)
    exact (hcop.of_dvd_right hpfact).pow_right _
  apply hcopSmall.dvd_of_dvd_mul_left
  rw [smallPrimePart_mul_primePart hin]
  exact hD

/-- A supplied positive divisor yields the raw original B699 conclusion.
No complete factorization of C(n,i) appears among the checkable premises. -/
theorem common_of_large_divisor {n i j r s D : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (_hDpos : 0 < D) (hcop : D.Coprime (i - 1).factorial)
    (hnum : i.factorial * D ∣ n.descFactorial i)
    (hcompare : n ^ windowDegree i r s <
      windowConstant i r s * D ^ (2 * s - r)) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  have hin : i ≤ n := by omega
  have hDchoose : D ∣ n.choose i := by
    apply Nat.dvd_of_mul_dvd_mul_left (Nat.factorial_pos i)
    simpa only [Nat.descFactorial_eq_factorial_mul_choose] using hnum
  have hDprime := large_divisor_dvd_prime_part hin hDchoose hcop
  have hprimePos : 0 < B699BridgeAudit.primePart i (n.choose i) := by
    by_contra h
    have hzero : B699BridgeAudit.primePart i (n.choose i) = 0 := by omega
    have hsplit := smallPrimePart_mul_primePart hin
    rw [hzero, Nat.mul_zero] at hsplit
    have hchoose := Nat.choose_pos hin
    omega
  have hDle := Nat.le_of_dvd hprimePos hDprime
  apply common_of_scaled_prime_part hi hij hjn hsi
  exact hcompare.trans_le (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hDle _))

/-- A row range is witnessed either by a terminal prime or by an explicit divisor. -/
inductive RowWitness where
  | topPrime (p : ℕ)
  | largeDivisor (D : ℕ)
  deriving DecidableEq, Repr

/-- Closed integer interval together with its executable witness. -/
structure GoodSegment where
  lower : ℕ
  upper : ℕ
  witness : RowWitness
  deriving DecidableEq, Repr

def goodSegmentBounds (g : GoodSegment) : ℕ × ℕ := (g.lower, g.upper)

/-- Exact finite checks; the large-divisor case is intentionally a singleton. -/
def goodSegmentCheck (i r s : ℕ) (g : GoodSegment) : Bool :=
  match g.witness with
  | .topPrime p =>
      decide (g.lower ≤ g.upper ∧ p.Prime ∧ p ≤ g.lower ∧ g.upper < p + i)
  | .largeDivisor D =>
      decide (g.lower = g.upper ∧ 0 < D ∧ D.Coprime (i - 1).factorial ∧
        i.factorial * D ∣ g.lower.descFactorial i ∧
        g.lower ^ windowDegree i r s < windowConstant i r s * D ^ (2 * s - r))

/-- A checked segment covers every original legal j in each of its rows. -/
theorem goodSegmentCheck_sound {i r s : ℕ} {g : GoodSegment}
    (hi : 2 ≤ i) (hsi : s < i) (hcheck : goodSegmentCheck i r s g = true)
    {n j : ℕ} (hlo : g.lower ≤ n) (hup : n ≤ g.upper)
    (hij : i < j) (hjn : j ≤ n / 2) : Common n i j := by
  cases hw : g.witness with
  | topPrime p =>
      have hc : g.lower ≤ g.upper ∧ p.Prime ∧ p ≤ g.lower ∧ g.upper < p + i :=
        of_decide_eq_true (by simpa only [goodSegmentCheck, hw] using hcheck)
      obtain ⟨_, hp, hplower, hupper⟩ := hc
      exact common_of_top_prime (by omega) hij hjn hp (by omega) (by omega)
  | largeDivisor D =>
      have hc : g.lower = g.upper ∧ 0 < D ∧ D.Coprime (i - 1).factorial ∧
          i.factorial * D ∣ g.lower.descFactorial i ∧
          g.lower ^ windowDegree i r s < windowConstant i r s * D ^ (2 * s - r) :=
        of_decide_eq_true (by simpa only [goodSegmentCheck, hw] using hcheck)
      obtain ⟨heq, hDpos, hcop, hnum, hcompare⟩ := hc
      have hn : n = g.lower := by omega
      subst n
      exact common_of_large_divisor hi hij hjn hsi hDpos hcop hnum hcompare

end B699LowIndex

#print axioms B699LowIndex.large_divisor_dvd_prime_part
#print axioms B699LowIndex.common_of_large_divisor
#print axioms B699LowIndex.goodSegmentCheck_sound
