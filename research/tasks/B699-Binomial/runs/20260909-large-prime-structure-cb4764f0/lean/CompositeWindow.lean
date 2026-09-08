import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.BandConsumer
import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.FiniteBoundary

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- Exact exceptions of the composite-window form of Nair--Shorey (2016). -/
def CompositeWindowException (x i : ℕ) : Prop :=
  (i = 2 ∧ (x = 125 ∨ x = 224 ∨ x = 2400 ∨ x = 4374)) ∨
  (i = 3 ∧ x = 350)

/-- Explicit, unformalized published input. The same-author restatement is
Chim--Nair--Shorey (2018), Theorem 3.1; Grosu--Grosu Theorem 18 explicitly
retains k>=2. The original 2016 publisher PDF was not retrieved in this round.
The surrounding abc applications do not add an abc premise to this theorem.
The bound 221*i < 50*p is exactly p > 4.42*i. -/
def CompositeWindowPrimeBound : Prop :=
  ∀ x i : ℕ, 2 ≤ i → 100 < x →
    (∀ r < i, ¬ Nat.Prime (x + r)) →
    ¬ CompositeWindowException x i →
    ∃ p r : ℕ, p.Prime ∧ r < i ∧ p ∣ x + r ∧ 221 * i < 50 * p

/-- Original counterexamples force every term of the actual numerator window
to be composite; this is not an assumed smoothness structure. -/
theorem terminal_not_prime_of_noCommon {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnone : ¬ Common n i j) : ∀ a < i, ¬ Nat.Prime (n - a) := by
  intro a ha hp
  apply hnone
  exact common_of_top_prime hi hij hjn hp (by omega) (Nat.sub_le n a)

/-- All finite and exceptional source-domain cases are included.
Only the published composite-window theorem remains an explicit premise. -/
theorem common_of_composite_window_bound
    (hsource : CompositeWindowPrimeBound) {n i j d : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnj : n = 2 * j + d) (hdi : i ≤ d) (hband : 50 * d ≤ 171 * i + 50) :
    Common n i j := by
  by_cases hi2 : i ≤ 2
  · exact common_small_index hi hij hjn hi2
  have hi3 : 3 ≤ i := by omega
  have hin : i ≤ n := by omega
  by_contra hnone
  have hcomp := terminal_not_prime_of_noCommon hi hij hjn hnone
  let x := n - i + 1
  by_cases hx : 100 < x
  · by_cases hex : CompositeWindowException x i
    · rcases hex with ⟨h2, _⟩ | ⟨h3, hx350⟩
      · omega
      · have hn352 : n = 352 := by dsimp [x] at hx350; omega
        apply hnone
        apply common_of_gap_prime hi hij hnj (a := 1) (p := 13)
          (by omega) (by decide) (by omega)
        · simpa [hn352] using (show 13 ∣ 351 by decide)
        · omega
        · exact Or.inl (by omega)
    · have hwindow : ∀ r < i, ¬ Nat.Prime (x + r) := by
        intro r hr
        have ha : i - 1 - r < i := by omega
        have heq : x + r = n - (i - 1 - r) := by dsimp [x]; omega
        rw [heq]
        exact hcomp _ ha
      obtain ⟨p, r, hp, hr, hpdvd, hlarge⟩ :=
        hsource x i (by omega) hx hwindow hex
      let a := i - 1 - r
      have ha : a < i := by dsimp [a]; omega
      have heq : x + r = n - a := by dsimp [x, a]; omega
      have hip : i < p := by omega
      have hsize : d + a < p := by omega
      apply hnone
      exact common_of_gap_prime hi hij hnj ha hp hip
        (by simpa only [heq] using hpdvd) hsize (Or.inl (by omega))
  · have hn100 : n ≤ 100 := by
      by_contra hn
      apply hnone
      apply common_of_top_prime hi hij hjn (p := 101) (by decide)
      · dsimp [x] at hx
        omega
      · omega
    exact hnone (common_low_composite_boundary hi3 hij hjn hnj hdi hband hn100 hcomp)

/-- Uniform new region, under two explicitly named published inputs.
There is no EEES premise and no extra parameter-dependent structure hypothesis. -/
theorem common_enlarged_band_assuming_sources
    (hodd : OddProgressionBound) (hcomp : CompositeWindowPrimeBound)
    {n i j : ℕ} (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hband : 50 * (n - 2 * j) ≤ 171 * i + 50) : Common n i j := by
  by_cases hdi : i ≤ n - 2 * j
  · exact common_of_composite_window_bound hcomp hi hij hjn
      (d := n - 2 * j) (by omega) hdi hband
  · exact assuming_odd_progression_bound hodd hi hij hjn (by omega)

/-- An infinite family varying both indices, rather than one fixed numerical j. -/
example (hodd : OddProgressionBound) (hcomp : CompositeWindowPrimeBound)
    (i j : ℕ) (hi : 1 ≤ i) (hij : i < j) : Common (2 * j + 3 * i) i j := by
  apply common_enlarged_band_assuming_sources hodd hcomp hi hij (by omega)
  omega

end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.terminal_not_prime_of_noCommon
#print axioms B699LargePrimeStructure.common_of_composite_window_bound
#print axioms B699LargePrimeStructure.common_enlarged_band_assuming_sources

