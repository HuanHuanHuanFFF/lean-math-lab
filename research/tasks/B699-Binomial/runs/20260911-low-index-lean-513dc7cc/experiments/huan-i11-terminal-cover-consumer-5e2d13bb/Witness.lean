import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.LargeDivisorWitness
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.IntervalCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Terminal.Special330

/-! UNCOMPILED. Finite terminal witness data for fixed i11,r3,s7.
The only special constructor is n=330, with no parameter or proof field. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11TerminalCover
open B699LargePrimeStructure

inductive Witness where
  | good (segment : GoodSegment)
  | special330
  deriving DecidableEq, Repr

def witnessBounds : Witness → NatInterval
  | .good segment => goodSegmentBounds segment
  | .special330 => (330, 330)

def witnessCheck : Witness → Bool
  | .good segment => goodSegmentCheck 11 3 7 segment
  | .special330 => true

/-- Every original legal j is handled. The prime threshold remains inclusive. -/
theorem witnessCheck_sound {w : Witness} (hcheck : witnessCheck w = true)
    {n j : ℕ} (hIn : intervalMem n (witnessBounds w))
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  cases w with
  | good segment =>
      have hc : goodSegmentCheck 11 3 7 segment = true := by
        simpa only [witnessCheck] using hcheck
      have hn : segment.lower ≤ n ∧ n ≤ segment.upper := by
        simpa only [witnessBounds, goodSegmentBounds, intervalMem] using hIn
      exact goodSegmentCheck_sound (i := 11) (r := 3) (s := 7)
        (g := segment) (by decide) (by decide) hc hn.1 hn.2 hij hjn
  | special330 =>
      have hn : n = 330 := by
        have hb : 330 ≤ n ∧ n ≤ 330 := by
          simpa only [witnessBounds, intervalMem] using hIn
        omega
      subst n
      exact B699LowIndex.I11Terminal330.common_330 j hij hjn

end B699LowIndex.I11TerminalCover
