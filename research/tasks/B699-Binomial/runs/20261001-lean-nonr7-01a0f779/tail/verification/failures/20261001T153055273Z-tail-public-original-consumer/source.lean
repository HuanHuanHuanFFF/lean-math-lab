module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.NormalizationFromWindows
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.UniformCountTail

/-! Pure-term original consumers of the checked public N/count interfaces.
Scope remains i≥131072 and n≥4096i with every legal j. This file does not
claim the full i≥4883 tail. It imports no additional mathematical premise. -/
public section
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699TailPublic

theorem counterexample_height_131072 {n i j : Nat} (hi : 131072 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    n < 4096 * i :=
  B699TailUniform.normalized_height_131072 hi
    (B699TailWindows.noCommon_normalized_1000
      (Nat.le_trans (by decide : 1000 ≤ 131072) hi) hij hjn
      (fun h => Exists.elim h (fun p hparts =>
        hno ⟨p, hparts.1, hparts.2.1,
          Nat.dvd_trans hparts.2.2 (Nat.gcd_dvd_left _ _),
          Nat.dvd_trans hparts.2.2 (Nat.gcd_dvd_right _ _)⟩)))

theorem common_of_ratio_4096 {n i j : Nat} (hi : 131072 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) (hn : 4096 * i ≤ n) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=
  Classical.byContradiction (fun hno =>
    Nat.not_lt_of_ge hn (counterexample_height_131072 hi hij hjn hno))

end B699TailPublic

#check (B699TailPublic.common_of_ratio_4096 :
  ∀ {n i j : Nat}, 131072 ≤ i → i < j → j ≤ n / 2 → 4096 * i ≤ n →
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j)
#print axioms B699TailPublic.counterexample_height_131072
#print axioms B699TailPublic.common_of_ratio_4096
