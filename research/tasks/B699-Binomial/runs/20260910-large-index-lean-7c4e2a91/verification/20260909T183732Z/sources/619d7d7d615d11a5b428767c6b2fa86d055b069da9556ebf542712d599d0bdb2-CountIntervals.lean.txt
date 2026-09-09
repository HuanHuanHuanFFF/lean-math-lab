import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.SmallPrimeCount
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
namespace B699CountIntervals
open B699Middle B699LargePrimeStructure B699LowIndex
/-- Every integer in [start,start+length) is examined by the complete checker. -/
def intervalCount (start : ℕ) : ℕ → ℕ
  | 0 => 0
  | k + 1 => intervalCount start k + if trialPrimeCheck (start + k) then 1 else 0

theorem smallPrimeCount_add (start length : ℕ) :
    smallPrimeCount (start + length) = smallPrimeCount start + intervalCount start length := by
  have h : fastSmallPrimeCount (start + length) =
      fastSmallPrimeCount start + intervalCount start length := by
    induction length with
    | zero => simp [intervalCount]
    | succ k ih =>
      change fastSmallPrimeCount (start + k) + (if trialPrimeCheck (start + k) then 1 else 0) =
        fastSmallPrimeCount start + (intervalCount start k + (if trialPrimeCheck (start + k) then 1 else 0))
      rw [ih, Nat.add_assoc]
  simpa only [fastSmallPrimeCount_eq] using h

theorem count_extend {start length t d : ℕ}
    (hstart : smallPrimeCount start = t) (hpart : intervalCount start length = d) :
    smallPrimeCount (start + length) = t + d := by
  rw [smallPrimeCount_add, hstart, hpart]
end B699CountIntervals
#print axioms B699CountIntervals.smallPrimeCount_add
#print axioms B699CountIntervals.count_extend
