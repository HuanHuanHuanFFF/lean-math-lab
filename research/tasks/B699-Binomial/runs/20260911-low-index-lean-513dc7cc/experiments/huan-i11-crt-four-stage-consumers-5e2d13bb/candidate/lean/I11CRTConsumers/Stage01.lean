import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair23.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair25.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair27.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair35.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair37.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage1Pair57.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.ActualStep
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only consumer. It wires existing grid roots to the fixed CRT API; it does not rebuild any grid. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1024

namespace Math.B699.I11CRTConsumers.Stage01
open B699LowIndex.I11CrtStageMetadata
open Math.B699.I11CRTSixPair

def grid23 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 60
  bmax := 38
  cells := Math.B699.CRTStage1Pair23.CompleteComposer.globalData

def grid25 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 60
  bmax := 25
  cells := Math.B699.CRTStage1Pair25.CompleteComposer.globalData

def grid27 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 60
  bmax := 21
  cells := Math.B699.CRTStage1Pair27.CompleteComposer.globalData

def grid35 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 38
  bmax := 25
  cells := Math.B699.CRTStage1Pair35.CompleteComposer.globalData

def grid37 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 38
  bmax := 21
  cells := Math.B699.CRTStage1Pair37.CompleteComposer.globalData

def grid57 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 25
  bmax := 21
  cells := Math.B699.CRTStage1Pair57.CompleteComposer.globalData

theorem grid23_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 2 3 Stage01.H grid23 = true := by
  have hp : Stage01.H ≤ (2 : ℕ) ^ (60 + 1) := by
    simpa only [Stage01.exponentMax2] using Stage01.cutoff_2
  have hq : Stage01.H ≤ (3 : ℕ) ^ (38 + 1) := by
    simpa only [Stage01.exponentMax3] using Stage01.cutoff_3
  have hprop : 1 < (2 : ℕ) ∧ 1 < (3 : ℕ) ∧
      Stage01.H ≤ (2 : ℕ) ^ (60 + 1) ∧
      Stage01.H ≤ (3 : ℕ) ^ (38 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simpa only [Math.B699.I11CRTSixPair.cutoffCheck, grid23]
    using (decide_eq_true hprop)

theorem grid23_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 2 3 Stage01.H Stage01.M Stage01.upper grid23 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid23_cutoff
    (by simpa only [grid23] using Math.B699.CRTStage1Pair23.CompleteComposer.rectangle_check)

theorem grid25_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 2 5 Stage01.H grid25 = true := by
  have hp : Stage01.H ≤ (2 : ℕ) ^ (60 + 1) := by
    simpa only [Stage01.exponentMax2] using Stage01.cutoff_2
  have hq : Stage01.H ≤ (5 : ℕ) ^ (25 + 1) := by
    simpa only [Stage01.exponentMax5] using Stage01.cutoff_5
  have hprop : 1 < (2 : ℕ) ∧ 1 < (5 : ℕ) ∧
      Stage01.H ≤ (2 : ℕ) ^ (60 + 1) ∧
      Stage01.H ≤ (5 : ℕ) ^ (25 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simpa only [Math.B699.I11CRTSixPair.cutoffCheck, grid25]
    using (decide_eq_true hprop)

theorem grid25_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 2 5 Stage01.H Stage01.M Stage01.upper grid25 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid25_cutoff
    (by simpa only [grid25] using Math.B699.CRTStage1Pair25.CompleteComposer.rectangle_check)

theorem grid27_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 2 7 Stage01.H grid27 = true := by
  have hp : Stage01.H ≤ (2 : ℕ) ^ (60 + 1) := by
    simpa only [Stage01.exponentMax2] using Stage01.cutoff_2
  have hq : Stage01.H ≤ (7 : ℕ) ^ (21 + 1) := by
    simpa only [Stage01.exponentMax7] using Stage01.cutoff_7
  have hprop : 1 < (2 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage01.H ≤ (2 : ℕ) ^ (60 + 1) ∧
      Stage01.H ≤ (7 : ℕ) ^ (21 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simpa only [Math.B699.I11CRTSixPair.cutoffCheck, grid27]
    using (decide_eq_true hprop)

theorem grid27_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 2 7 Stage01.H Stage01.M Stage01.upper grid27 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid27_cutoff
    (by simpa only [grid27] using Math.B699.CRTStage1Pair27.CompleteComposer.rectangle_check)

theorem grid35_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 3 5 Stage01.H grid35 = true := by
  have hp : Stage01.H ≤ (3 : ℕ) ^ (38 + 1) := by
    simpa only [Stage01.exponentMax3] using Stage01.cutoff_3
  have hq : Stage01.H ≤ (5 : ℕ) ^ (25 + 1) := by
    simpa only [Stage01.exponentMax5] using Stage01.cutoff_5
  have hprop : 1 < (3 : ℕ) ∧ 1 < (5 : ℕ) ∧
      Stage01.H ≤ (3 : ℕ) ^ (38 + 1) ∧
      Stage01.H ≤ (5 : ℕ) ^ (25 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simpa only [Math.B699.I11CRTSixPair.cutoffCheck, grid35]
    using (decide_eq_true hprop)

theorem grid35_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 3 5 Stage01.H Stage01.M Stage01.upper grid35 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid35_cutoff
    (by simpa only [grid35] using Math.B699.CRTStage1Pair35.CompleteComposer.rectangle_check)

theorem grid37_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 3 7 Stage01.H grid37 = true := by
  have hp : Stage01.H ≤ (3 : ℕ) ^ (38 + 1) := by
    simpa only [Stage01.exponentMax3] using Stage01.cutoff_3
  have hq : Stage01.H ≤ (7 : ℕ) ^ (21 + 1) := by
    simpa only [Stage01.exponentMax7] using Stage01.cutoff_7
  have hprop : 1 < (3 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage01.H ≤ (3 : ℕ) ^ (38 + 1) ∧
      Stage01.H ≤ (7 : ℕ) ^ (21 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simpa only [Math.B699.I11CRTSixPair.cutoffCheck, grid37]
    using (decide_eq_true hprop)

theorem grid37_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 3 7 Stage01.H Stage01.M Stage01.upper grid37 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid37_cutoff
    (by simpa only [grid37] using Math.B699.CRTStage1Pair37.CompleteComposer.rectangle_check)

theorem grid57_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 5 7 Stage01.H grid57 = true := by
  have hp : Stage01.H ≤ (5 : ℕ) ^ (25 + 1) := by
    simpa only [Stage01.exponentMax5] using Stage01.cutoff_5
  have hq : Stage01.H ≤ (7 : ℕ) ^ (21 + 1) := by
    simpa only [Stage01.exponentMax7] using Stage01.cutoff_7
  have hprop : 1 < (5 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage01.H ≤ (5 : ℕ) ^ (25 + 1) ∧
      Stage01.H ≤ (7 : ℕ) ^ (21 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simpa only [Math.B699.I11CRTSixPair.cutoffCheck, grid57]
    using (decide_eq_true hprop)

theorem grid57_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 5 7 Stage01.H Stage01.M Stage01.upper grid57 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid57_cutoff
    (by simpa only [grid57] using Math.B699.CRTStage1Pair57.CompleteComposer.rectangle_check)

theorem stage01_constants :
    Math.B699.I11CRTSixPair.stageConstantsCheck Stage01.H Stage01.M = true := by
  unfold Math.B699.I11CRTSixPair.stageConstantsCheck
  exact decide_eq_true ⟨Stage01.cap_positive, Stage01.cofactor_certificate⟩

def stage01Data : Math.B699.I11CRTSixPair.SixPairGrids where
  grid23 := grid23
  grid25 := grid25
  grid27 := grid27
  grid35 := grid35
  grid37 := grid37
  grid57 := grid57

theorem stage01_pair_checks :
    Math.B699.I11CRTSixPair.pairGridCheck 2 3 Stage01.H Stage01.M Stage01.upper stage01Data.grid23 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 2 5 Stage01.H Stage01.M Stage01.upper stage01Data.grid25 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 2 7 Stage01.H Stage01.M Stage01.upper stage01Data.grid27 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 3 5 Stage01.H Stage01.M Stage01.upper stage01Data.grid35 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 3 7 Stage01.H Stage01.M Stage01.upper stage01Data.grid37 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 5 7 Stage01.H Stage01.M Stage01.upper stage01Data.grid57 = true := by
  exact ⟨by simpa only [stage01Data] using grid23_pair_check,
    by simpa only [stage01Data] using grid25_pair_check,
    by simpa only [stage01Data] using grid27_pair_check,
    by simpa only [stage01Data] using grid35_pair_check,
    by simpa only [stage01Data] using grid37_pair_check,
    by simpa only [stage01Data] using grid57_pair_check⟩

end Math.B699.I11CRTConsumers.Stage01

#print axioms Math.B699.I11CRTConsumers.Stage01.grid23_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage01.grid23_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage01.grid25_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage01.grid25_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage01.grid27_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage01.grid27_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage01.grid35_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage01.grid35_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage01.grid37_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage01.grid37_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage01.grid57_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage01.grid57_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage01.stage01_constants
#print axioms Math.B699.I11CRTConsumers.Stage01.stage01_pair_checks
