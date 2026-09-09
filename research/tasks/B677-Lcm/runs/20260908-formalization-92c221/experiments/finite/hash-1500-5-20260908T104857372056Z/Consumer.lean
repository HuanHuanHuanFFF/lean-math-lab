import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104857372056Z».Check01
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104857372056Z».Check02
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104857372056Z».Check03
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104857372056Z».Check04
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«hash-1500-5-20260908T104857372056Z».Check05
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteHashGenerated
theorem rep1 : B677Finite.ModRep 1500 1 64 18446744073709551557 row1 :=
  B677Finite.modInitialCheck_sound (by decide +kernel) step_checked1
theorem rep2 : B677Finite.ModRep 1500 2 64 18446744073709551557 row2 :=
  B677Finite.modNextCheck_sound (by decide +kernel) rep1 step_checked2
theorem rep3 : B677Finite.ModRep 1500 3 64 18446744073709551557 row3 :=
  B677Finite.modNextCheck_sound (by decide +kernel) rep2 step_checked3
theorem rep4 : B677Finite.ModRep 1500 4 64 18446744073709551557 row4 :=
  B677Finite.modNextCheck_sound (by decide +kernel) rep3 step_checked4
theorem rep5 : B677Finite.ModRep 1500 5 64 18446744073709551557 row5 :=
  B677Finite.modNextCheck_sound (by decide +kernel) rep4 step_checked5
theorem certified_finite_range : ∀ n m k : ℕ, 0 < k → k ≤ 5 → n+k ≤ m → m < 1500 → B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro n m k hk hbound hsep hm
  by_cases h1_5 : k ≤ 3
  ·
    by_cases h1_3 : k ≤ 2
    ·
      by_cases h1_2 : k ≤ 1
      ·
        have he : k = 1 := by omega
        subst k
        exact B677Finite.hash_rows_noncollision (by decide +kernel) rep1 hash_checked1 n m hsep hm
      ·
        have he : k = 2 := by omega
        subst k
        exact B677Finite.hash_rows_noncollision (by decide +kernel) rep2 hash_checked2 n m hsep hm
    ·
      have he : k = 3 := by omega
      subst k
      exact B677Finite.hash_rows_noncollision (by decide +kernel) rep3 hash_checked3 n m hsep hm
  ·
    by_cases h4_5 : k ≤ 4
    ·
      have he : k = 4 := by omega
      subst k
      exact B677Finite.hash_rows_noncollision (by decide +kernel) rep4 hash_checked4 n m hsep hm
    ·
      have he : k = 5 := by omega
      subst k
      exact B677Finite.hash_rows_noncollision (by decide +kernel) rep5 hash_checked5 n m hsep hm
/-- info: 'B677FiniteHashGenerated.certified_finite_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms certified_finite_range
end B677FiniteHashGenerated
