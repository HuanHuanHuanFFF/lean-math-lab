import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check01
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check02
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check03
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check04
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check05
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check06
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check07
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check08
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check09
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check10
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check11
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check12
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check13
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check14
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check15
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check16
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check17
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check18
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check19
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check20
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check21
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check22
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check23
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check24
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check25
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check26
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check27
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check28
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check29
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check30
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check31
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check32
import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».experiments.finite.«witness-2000-33-20260908T103632747263Z».Check33
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace B677FiniteWitnessGenerated
theorem rep1 : B677Finite.ModRep 2000 1 64 18446744073709551557 row1 :=
  B677Finite.modInitialCheck_sound (by decide +kernel) step_checked1
theorem rep2 : B677Finite.ModRep 2000 2 64 18446744073709551557 row2 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep1 step_checked2
theorem rep3 : B677Finite.ModRep 2000 3 64 18446744073709551557 row3 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep2 step_checked3
theorem rep4 : B677Finite.ModRep 2000 4 64 18446744073709551557 row4 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep3 step_checked4
theorem rep5 : B677Finite.ModRep 2000 5 64 18446744073709551557 row5 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep4 step_checked5
theorem rep6 : B677Finite.ModRep 2000 6 64 18446744073709551557 row6 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep5 step_checked6
theorem rep7 : B677Finite.ModRep 2000 7 64 18446744073709551557 row7 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep6 step_checked7
theorem rep8 : B677Finite.ModRep 2000 8 64 18446744073709551557 row8 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep7 step_checked8
theorem rep9 : B677Finite.ModRep 2000 9 64 18446744073709551557 row9 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep8 step_checked9
theorem rep10 : B677Finite.ModRep 2000 10 64 18446744073709551557 row10 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep9 step_checked10
theorem rep11 : B677Finite.ModRep 2000 11 64 18446744073709551557 row11 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep10 step_checked11
theorem rep12 : B677Finite.ModRep 2000 12 64 18446744073709551557 row12 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep11 step_checked12
theorem rep13 : B677Finite.ModRep 2000 13 64 18446744073709551557 row13 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep12 step_checked13
theorem rep14 : B677Finite.ModRep 2000 14 64 18446744073709551557 row14 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep13 step_checked14
theorem rep15 : B677Finite.ModRep 2000 15 64 18446744073709551557 row15 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep14 step_checked15
theorem rep16 : B677Finite.ModRep 2000 16 64 18446744073709551557 row16 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep15 step_checked16
theorem rep17 : B677Finite.ModRep 2000 17 64 18446744073709551557 row17 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep16 step_checked17
theorem rep18 : B677Finite.ModRep 2000 18 64 18446744073709551557 row18 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep17 step_checked18
theorem rep19 : B677Finite.ModRep 2000 19 64 18446744073709551557 row19 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep18 step_checked19
theorem rep20 : B677Finite.ModRep 2000 20 64 18446744073709551557 row20 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep19 step_checked20
theorem rep21 : B677Finite.ModRep 2000 21 64 18446744073709551557 row21 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep20 step_checked21
theorem rep22 : B677Finite.ModRep 2000 22 64 18446744073709551557 row22 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep21 step_checked22
theorem rep23 : B677Finite.ModRep 2000 23 64 18446744073709551557 row23 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep22 step_checked23
theorem rep24 : B677Finite.ModRep 2000 24 64 18446744073709551557 row24 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep23 step_checked24
theorem rep25 : B677Finite.ModRep 2000 25 64 18446744073709551557 row25 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep24 step_checked25
theorem rep26 : B677Finite.ModRep 2000 26 64 18446744073709551557 row26 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep25 step_checked26
theorem rep27 : B677Finite.ModRep 2000 27 64 18446744073709551557 row27 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep26 step_checked27
theorem rep28 : B677Finite.ModRep 2000 28 64 18446744073709551557 row28 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep27 step_checked28
theorem rep29 : B677Finite.ModRep 2000 29 64 18446744073709551557 row29 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep28 step_checked29
theorem rep30 : B677Finite.ModRep 2000 30 64 18446744073709551557 row30 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep29 step_checked30
theorem rep31 : B677Finite.ModRep 2000 31 64 18446744073709551557 row31 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep30 step_checked31
theorem rep32 : B677Finite.ModRep 2000 32 64 18446744073709551557 row32 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep31 step_checked32
theorem rep33 : B677Finite.ModRep 2000 33 64 18446744073709551557 row33 :=
  B677Finite.witnessedModNextCheck_sound (by decide +kernel) rep32 step_checked33
theorem certified_finite_range : ∀ n m k : ℕ, 0 < k → k ≤ 33 → n+k ≤ m → m < 2000 → B677.intervalLcm n k ≠ B677.intervalLcm m k := by
  intro n m k hk hbound hsep hm
  by_cases h1_33 : k ≤ 17
  ·
    by_cases h1_17 : k ≤ 9
    ·
      by_cases h1_9 : k ≤ 5
      ·
        by_cases h1_5 : k ≤ 3
        ·
          by_cases h1_3 : k ≤ 2
          ·
            by_cases h1_2 : k ≤ 1
            ·
              have he : k = 1 := by omega
              subst k
              exact B677Finite.mod_row_noncollision (by decide +kernel) rep1 sorted_checked1 n m hsep hm
            ·
              have he : k = 2 := by omega
              subst k
              exact B677Finite.mod_row_noncollision (by decide +kernel) rep2 sorted_checked2 n m hsep hm
          ·
            have he : k = 3 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep3 sorted_checked3 n m hsep hm
        ·
          by_cases h4_5 : k ≤ 4
          ·
            have he : k = 4 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep4 sorted_checked4 n m hsep hm
          ·
            have he : k = 5 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep5 sorted_checked5 n m hsep hm
      ·
        by_cases h6_9 : k ≤ 7
        ·
          by_cases h6_7 : k ≤ 6
          ·
            have he : k = 6 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep6 sorted_checked6 n m hsep hm
          ·
            have he : k = 7 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep7 sorted_checked7 n m hsep hm
        ·
          by_cases h8_9 : k ≤ 8
          ·
            have he : k = 8 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep8 sorted_checked8 n m hsep hm
          ·
            have he : k = 9 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep9 sorted_checked9 n m hsep hm
    ·
      by_cases h10_17 : k ≤ 13
      ·
        by_cases h10_13 : k ≤ 11
        ·
          by_cases h10_11 : k ≤ 10
          ·
            have he : k = 10 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep10 sorted_checked10 n m hsep hm
          ·
            have he : k = 11 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep11 sorted_checked11 n m hsep hm
        ·
          by_cases h12_13 : k ≤ 12
          ·
            have he : k = 12 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep12 sorted_checked12 n m hsep hm
          ·
            have he : k = 13 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep13 sorted_checked13 n m hsep hm
      ·
        by_cases h14_17 : k ≤ 15
        ·
          by_cases h14_15 : k ≤ 14
          ·
            have he : k = 14 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep14 sorted_checked14 n m hsep hm
          ·
            have he : k = 15 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep15 sorted_checked15 n m hsep hm
        ·
          by_cases h16_17 : k ≤ 16
          ·
            have he : k = 16 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep16 sorted_checked16 n m hsep hm
          ·
            have he : k = 17 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep17 sorted_checked17 n m hsep hm
  ·
    by_cases h18_33 : k ≤ 25
    ·
      by_cases h18_25 : k ≤ 21
      ·
        by_cases h18_21 : k ≤ 19
        ·
          by_cases h18_19 : k ≤ 18
          ·
            have he : k = 18 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep18 sorted_checked18 n m hsep hm
          ·
            have he : k = 19 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep19 sorted_checked19 n m hsep hm
        ·
          by_cases h20_21 : k ≤ 20
          ·
            have he : k = 20 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep20 sorted_checked20 n m hsep hm
          ·
            have he : k = 21 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep21 sorted_checked21 n m hsep hm
      ·
        by_cases h22_25 : k ≤ 23
        ·
          by_cases h22_23 : k ≤ 22
          ·
            have he : k = 22 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep22 sorted_checked22 n m hsep hm
          ·
            have he : k = 23 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep23 sorted_checked23 n m hsep hm
        ·
          by_cases h24_25 : k ≤ 24
          ·
            have he : k = 24 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep24 sorted_checked24 n m hsep hm
          ·
            have he : k = 25 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep25 sorted_checked25 n m hsep hm
    ·
      by_cases h26_33 : k ≤ 29
      ·
        by_cases h26_29 : k ≤ 27
        ·
          by_cases h26_27 : k ≤ 26
          ·
            have he : k = 26 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep26 sorted_checked26 n m hsep hm
          ·
            have he : k = 27 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep27 sorted_checked27 n m hsep hm
        ·
          by_cases h28_29 : k ≤ 28
          ·
            have he : k = 28 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep28 sorted_checked28 n m hsep hm
          ·
            have he : k = 29 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep29 sorted_checked29 n m hsep hm
      ·
        by_cases h30_33 : k ≤ 31
        ·
          by_cases h30_31 : k ≤ 30
          ·
            have he : k = 30 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep30 sorted_checked30 n m hsep hm
          ·
            have he : k = 31 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep31 sorted_checked31 n m hsep hm
        ·
          by_cases h32_33 : k ≤ 32
          ·
            have he : k = 32 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep32 sorted_checked32 n m hsep hm
          ·
            have he : k = 33 := by omega
            subst k
            exact B677Finite.mod_row_noncollision (by decide +kernel) rep33 sorted_checked33 n m hsep hm
/-- info: 'B677FiniteWitnessGenerated.certified_finite_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms certified_finite_range
end B677FiniteWitnessGenerated
