import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.UpperHeight.UpperSmallPart

/-!
UNCOMPILED CANDIDATE. All closed i11 constants use the actual source definitions.
The decide proofs below must still be run by the parent in the Lean kernel.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.UpperHeight

open B699LargePrimeStructure

def i11K : ℕ := 142131407644347048724404082572664265244672000000000

theorem i11_smallPrimeCount : smallPrimeCount 11 = 4 := by decide

theorem i11_windowDegree : windowDegree 11 3 7 = 84 := by decide

theorem i11_windowConstant : windowConstant 11 3 7 = i11K := by decide

theorem i11_heightExponent : heightExponent 11 3 7 = 128 := by decide

theorem i11_upper_exponent : heightExponent 11 3 7 = 11 * (2 * 7 - 3) + 7 := by
  rw [i11_heightExponent]

/-- The full original counterexample forces the actual small-prime-part bound. -/
theorem i11_noCommon_small_part_lower_of_upper_certificate
    {n j H M : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2)
    (hlarge : 110 ≤ n) (hnH : n ≤ H)
    (hcertificate : (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33)
    (hno : ¬ Common n 11 j) :
    n ^ 4 ≤ M ^ 3 * smallPrimePart n 11 := by
  have hcert : (2 * Nat.factorial 11) ^ (2 * 7 - 3) * H ^ 7 ≤
      windowConstant 11 3 7 * M ^ ((2 * 7 - 3) * (smallPrimeCount 11 - 1)) := by
    simpa only [i11_windowConstant, i11_smallPrimeCount] using hcertificate
  have hbound := noCommon_small_part_lower_of_upper_certificate
    (i := 11) (r := 3) (s := 7) (delta := 7)
    (by decide) hij hjn (by decide) (by decide) hlarge hnH
    i11_upper_exponent hcert hno
  simpa only [i11_smallPrimeCount] using hbound

end B699LowIndex.UpperHeight

#print axioms B699LowIndex.UpperHeight.i11K
#print axioms B699LowIndex.UpperHeight.i11_smallPrimeCount
#print axioms B699LowIndex.UpperHeight.i11_windowDegree
#print axioms B699LowIndex.UpperHeight.i11_windowConstant
#print axioms B699LowIndex.UpperHeight.i11_heightExponent
#print axioms B699LowIndex.UpperHeight.i11_upper_exponent
#print axioms B699LowIndex.UpperHeight.i11_noCommon_small_part_lower_of_upper_certificate
