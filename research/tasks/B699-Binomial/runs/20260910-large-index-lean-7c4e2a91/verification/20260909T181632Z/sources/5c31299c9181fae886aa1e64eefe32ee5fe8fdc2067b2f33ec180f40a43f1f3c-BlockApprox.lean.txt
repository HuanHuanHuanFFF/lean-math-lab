import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.HeightApprox
import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.HeightBlock
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.TailRange

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace B699HeightBlock
open B699LowIndex B699Middle B699Dyadic B699LargePrimeStructure

/-- One directed-integer comparison for a closed interval of indices.
The count checks every integer below U using the proved complete trial checker. -/
def blockApproxCheck (bits L U r s N t : ℕ) : Bool :=
  decide (2 ≤ L ∧ L ≤ U ∧ s < L ∧ U ≤ N ∧ fastSmallPrimeCount U ≤ t ∧
    exponentValue U r s t ≤ L * (2 * s - r)) &&
  ltCheck (leftUpper bits U r s N t) (rightLower bits L r s N)

theorem tailRange_of_block_approx_check {bits L U r s N t : ℕ}
    (hc : blockApproxCheck bits L U r s N t = true) : TailRange L U N := by
  simp only [blockApproxCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
  rcases hc.1 with ⟨hL, hLU, hsL, hUN, hcount, hdegree⟩
  have ht : smallPrimeCount U ≤ t := by
    simpa only [fastSmallPrimeCount_eq] using hcount
  have he : exponentValue U r s t = t * (2 * s - r) + windowDegree U r s := by
    simp only [exponentValue, degreeValue, window_degree_formula]
  have hd : t * (2 * s - r) + windowDegree U r s ≤ L * (2 * s - r) := by
    simpa only [he] using hdegree
  have hb : U.factorial ^ (2 * s - r) *
      N ^ (t * (2 * s - r) + windowDegree U r s) <
        windowConstant L r s * (N.descFactorial L) ^ (2 * s - r) := by
    have h := (left_le_leftUpper bits U r s N t).trans_lt
      ((ltCheck_sound hc.2).trans_le (rightLower_le bits L r s N))
    simpa only [he] using h
  intro n i j hLi hiU hij hjn hNn
  exact common_of_valid_height
    (heightValid_of_block hL hLi hiU hsL hUN ht hd hb) hij hjn hNn
end B699HeightBlock
#print axioms B699HeightBlock.tailRange_of_block_approx_check
