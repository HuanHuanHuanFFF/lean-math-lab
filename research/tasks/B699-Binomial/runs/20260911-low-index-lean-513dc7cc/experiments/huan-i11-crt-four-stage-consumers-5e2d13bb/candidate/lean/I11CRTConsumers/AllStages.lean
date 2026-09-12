import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CRTConsumers.Stage00
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CRTConsumers.Stage01
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CRTConsumers.Stage02
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CRTConsumers.Stage03
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.ActualStep
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only four-stage connection. The only inputs to the original-index root are hij, hjn, hno, and n < 2^109. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1024

namespace Math.B699.I11CRTConsumers.AllStages
open B699LargePrimeStructure
open B699LowIndex.I11CrtStageMetadata

theorem next_height_00 :
    Math.B699.I11CRTSixPair.nextHeight Stage00.M Stage00.upper = Stage01.H := by
  change max Stage00.M (max 109 Stage00.upper) + 1 = Stage01.H
  have hM : Stage00.M ≤ Stage00.upper := by decide +kernel
  have h109 : 109 ≤ Stage00.upper := by decide +kernel
  rw [Nat.max_eq_right hM, Nat.max_eq_right h109]
  exact Stage00.next_height_00.symm

theorem next_height_01 :
    Math.B699.I11CRTSixPair.nextHeight Stage01.M Stage01.upper = Stage02.H := by
  change max Stage01.M (max 109 Stage01.upper) + 1 = Stage02.H
  have hM : Stage01.M ≤ Stage01.upper := by decide +kernel
  have h109 : 109 ≤ Stage01.upper := by decide +kernel
  rw [Nat.max_eq_right hM, Nat.max_eq_right h109]
  exact Stage01.next_height_01.symm

theorem next_height_02 :
    Math.B699.I11CRTSixPair.nextHeight Stage02.M Stage02.upper = Stage03.H := by
  change max Stage02.M (max 109 Stage02.upper) + 1 = Stage03.H
  have hM : Stage02.M ≤ Stage02.upper := by decide +kernel
  have h109 : 109 ≤ Stage02.upper := by decide +kernel
  rw [Nat.max_eq_right hM, Nat.max_eq_right h109]
  exact Stage02.next_height_02.symm

theorem next_height_03 :
    Math.B699.I11CRTSixPair.nextHeight Stage03.M Stage03.upper = Stage04.H := by
  change max Stage03.M (max 109 Stage03.upper) + 1 = Stage04.H
  have hM : Stage03.M ≤ Stage03.upper := by decide +kernel
  have h109 : 109 ≤ Stage03.upper := by decide +kernel
  rw [Nat.max_eq_right hM, Nat.max_eq_right h109]
  exact Stage03.next_height_03.symm

theorem connect_00 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j)
    (hnH : n < Stage00.H) : n < Stage01.H := by
  have h := Math.B699.I11CRTSixPair.actual_i11_next_height
    (data := Math.B699.I11CRTConsumers.Stage00.stage00Data)
    Math.B699.I11CRTConsumers.Stage00.stage00_constants
    (by simpa only [Math.B699.I11CRTConsumers.Stage00.stage00Data] using Math.B699.I11CRTConsumers.Stage00.grid23_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage00.stage00Data] using Math.B699.I11CRTConsumers.Stage00.grid25_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage00.stage00Data] using Math.B699.I11CRTConsumers.Stage00.grid27_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage00.stage00Data] using Math.B699.I11CRTConsumers.Stage00.grid35_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage00.stage00Data] using Math.B699.I11CRTConsumers.Stage00.grid37_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage00.stage00Data] using Math.B699.I11CRTConsumers.Stage00.grid57_pair_check)
    hij hjn hno hnH
  simpa only [next_height_00] using h

theorem connect_01 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j)
    (hnH : n < Stage01.H) : n < Stage02.H := by
  have h := Math.B699.I11CRTSixPair.actual_i11_next_height
    (data := Math.B699.I11CRTConsumers.Stage01.stage01Data)
    Math.B699.I11CRTConsumers.Stage01.stage01_constants
    (by simpa only [Math.B699.I11CRTConsumers.Stage01.stage01Data] using Math.B699.I11CRTConsumers.Stage01.grid23_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage01.stage01Data] using Math.B699.I11CRTConsumers.Stage01.grid25_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage01.stage01Data] using Math.B699.I11CRTConsumers.Stage01.grid27_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage01.stage01Data] using Math.B699.I11CRTConsumers.Stage01.grid35_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage01.stage01Data] using Math.B699.I11CRTConsumers.Stage01.grid37_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage01.stage01Data] using Math.B699.I11CRTConsumers.Stage01.grid57_pair_check)
    hij hjn hno hnH
  simpa only [next_height_01] using h

theorem connect_02 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j)
    (hnH : n < Stage02.H) : n < Stage03.H := by
  have h := Math.B699.I11CRTSixPair.actual_i11_next_height
    (data := Math.B699.I11CRTConsumers.Stage02.stage02Data)
    Math.B699.I11CRTConsumers.Stage02.stage02_constants
    (by simpa only [Math.B699.I11CRTConsumers.Stage02.stage02Data] using Math.B699.I11CRTConsumers.Stage02.grid23_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage02.stage02Data] using Math.B699.I11CRTConsumers.Stage02.grid25_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage02.stage02Data] using Math.B699.I11CRTConsumers.Stage02.grid27_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage02.stage02Data] using Math.B699.I11CRTConsumers.Stage02.grid35_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage02.stage02Data] using Math.B699.I11CRTConsumers.Stage02.grid37_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage02.stage02Data] using Math.B699.I11CRTConsumers.Stage02.grid57_pair_check)
    hij hjn hno hnH
  simpa only [next_height_02] using h

theorem connect_03 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j)
    (hnH : n < Stage03.H) : n < Stage04.H := by
  have h := Math.B699.I11CRTSixPair.actual_i11_next_height
    (data := Math.B699.I11CRTConsumers.Stage03.stage03Data)
    Math.B699.I11CRTConsumers.Stage03.stage03_constants
    (by simpa only [Math.B699.I11CRTConsumers.Stage03.stage03Data] using Math.B699.I11CRTConsumers.Stage03.grid23_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage03.stage03Data] using Math.B699.I11CRTConsumers.Stage03.grid25_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage03.stage03Data] using Math.B699.I11CRTConsumers.Stage03.grid27_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage03.stage03Data] using Math.B699.I11CRTConsumers.Stage03.grid35_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage03.stage03Data] using Math.B699.I11CRTConsumers.Stage03.grid37_pair_check)
    (by simpa only [Math.B699.I11CRTConsumers.Stage03.stage03Data] using Math.B699.I11CRTConsumers.Stage03.grid57_pair_check)
    hij hjn hno hnH
  simpa only [next_height_03] using h

theorem initial_to_stage04 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j)
    (hn109 : n < (2 : ℕ) ^ 109) : n < Stage04.H := by
  have hn00 : n < Stage00.H := by
    simpa only [Stage00.initial_height] using hn109
  have hn01 := connect_00 hij hjn hno hn00
  have hn02 := connect_01 hij hjn hno hn01
  have hn03 := connect_02 hij hjn hno hn02
  exact connect_03 hij hjn hno hn03

theorem initial_to_29294603 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2)
    (hno : ¬ Common n 11 j)
    (hn109 : n < (2 : ℕ) ^ 109) : n < 29294603 := by
  have h := initial_to_stage04 hij hjn hno hn109
  simpa only [Stage04.H] using h

end Math.B699.I11CRTConsumers.AllStages

#print axioms Math.B699.I11CRTConsumers.AllStages.next_height_00
#print axioms Math.B699.I11CRTConsumers.AllStages.next_height_01
#print axioms Math.B699.I11CRTConsumers.AllStages.next_height_02
#print axioms Math.B699.I11CRTConsumers.AllStages.next_height_03
#print axioms Math.B699.I11CRTConsumers.AllStages.connect_00
#print axioms Math.B699.I11CRTConsumers.AllStages.connect_01
#print axioms Math.B699.I11CRTConsumers.AllStages.connect_02
#print axioms Math.B699.I11CRTConsumers.AllStages.connect_03
#print axioms Math.B699.I11CRTConsumers.AllStages.initial_to_stage04
#print axioms Math.B699.I11CRTConsumers.AllStages.initial_to_29294603
