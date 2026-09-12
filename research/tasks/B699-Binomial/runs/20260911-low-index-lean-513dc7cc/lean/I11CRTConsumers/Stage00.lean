import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair23.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair25.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair27.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair35.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair37.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage0Pair57.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.ActualStep
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only consumer. It wires existing grid roots to the fixed CRT API; it does not rebuild any grid. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1024

namespace Math.B699.I11CRTConsumers.Stage00
open B699LowIndex.I11CrtStageMetadata
open Math.B699.I11CRTSixPair

def grid23 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 108
  bmax := 68
  cells := Math.B699.CRTStage0Pair23.CompleteComposer.globalData

def grid25 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 108
  bmax := 46
  cells := Math.B699.CRTStage0Pair25.CompleteComposer.globalData

def grid27 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 108
  bmax := 38
  cells := Math.B699.CRTStage0Pair27.CompleteComposer.globalData

def grid35 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 68
  bmax := 46
  cells := Math.B699.CRTStage0Pair35.CompleteComposer.globalData

def grid37 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 68
  bmax := 38
  cells := Math.B699.CRTStage0Pair37.CompleteComposer.globalData

def grid57 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 46
  bmax := 38
  cells := Math.B699.CRTStage0Pair57.CompleteComposer.globalData

theorem grid23_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 2 3 Stage00.H grid23 = true := by
  have hp : Stage00.H ≤ (2 : ℕ) ^ (108 + 1) := by
    simpa only [Stage00.exponentMax2] using Stage00.cutoff_2
  have hq : Stage00.H ≤ (3 : ℕ) ^ (68 + 1) := by
    simpa only [Stage00.exponentMax3] using Stage00.cutoff_3
  have hprop : 1 < (2 : ℕ) ∧ 1 < (3 : ℕ) ∧
      Stage00.H ≤ (2 : ℕ) ^ (108 + 1) ∧
      Stage00.H ≤ (3 : ℕ) ^ (68 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid23_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 2 3 Stage00.H Stage00.M Stage00.upper grid23 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid23_cutoff
    (by simpa only [grid23] using Math.B699.CRTStage0Pair23.CompleteComposer.rectangle_check)

theorem grid25_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 2 5 Stage00.H grid25 = true := by
  have hp : Stage00.H ≤ (2 : ℕ) ^ (108 + 1) := by
    simpa only [Stage00.exponentMax2] using Stage00.cutoff_2
  have hq : Stage00.H ≤ (5 : ℕ) ^ (46 + 1) := by
    simpa only [Stage00.exponentMax5] using Stage00.cutoff_5
  have hprop : 1 < (2 : ℕ) ∧ 1 < (5 : ℕ) ∧
      Stage00.H ≤ (2 : ℕ) ^ (108 + 1) ∧
      Stage00.H ≤ (5 : ℕ) ^ (46 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid25_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 2 5 Stage00.H Stage00.M Stage00.upper grid25 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid25_cutoff
    (by simpa only [grid25] using Math.B699.CRTStage0Pair25.CompleteComposer.rectangle_check)

theorem grid27_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 2 7 Stage00.H grid27 = true := by
  have hp : Stage00.H ≤ (2 : ℕ) ^ (108 + 1) := by
    simpa only [Stage00.exponentMax2] using Stage00.cutoff_2
  have hq : Stage00.H ≤ (7 : ℕ) ^ (38 + 1) := by
    simpa only [Stage00.exponentMax7] using Stage00.cutoff_7
  have hprop : 1 < (2 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage00.H ≤ (2 : ℕ) ^ (108 + 1) ∧
      Stage00.H ≤ (7 : ℕ) ^ (38 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid27_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 2 7 Stage00.H Stage00.M Stage00.upper grid27 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid27_cutoff
    (by simpa only [grid27] using Math.B699.CRTStage0Pair27.CompleteComposer.rectangle_check)

theorem grid35_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 3 5 Stage00.H grid35 = true := by
  have hp : Stage00.H ≤ (3 : ℕ) ^ (68 + 1) := by
    simpa only [Stage00.exponentMax3] using Stage00.cutoff_3
  have hq : Stage00.H ≤ (5 : ℕ) ^ (46 + 1) := by
    simpa only [Stage00.exponentMax5] using Stage00.cutoff_5
  have hprop : 1 < (3 : ℕ) ∧ 1 < (5 : ℕ) ∧
      Stage00.H ≤ (3 : ℕ) ^ (68 + 1) ∧
      Stage00.H ≤ (5 : ℕ) ^ (46 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid35_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 3 5 Stage00.H Stage00.M Stage00.upper grid35 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid35_cutoff
    (by simpa only [grid35] using Math.B699.CRTStage0Pair35.CompleteComposer.rectangle_check)

theorem grid37_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 3 7 Stage00.H grid37 = true := by
  have hp : Stage00.H ≤ (3 : ℕ) ^ (68 + 1) := by
    simpa only [Stage00.exponentMax3] using Stage00.cutoff_3
  have hq : Stage00.H ≤ (7 : ℕ) ^ (38 + 1) := by
    simpa only [Stage00.exponentMax7] using Stage00.cutoff_7
  have hprop : 1 < (3 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage00.H ≤ (3 : ℕ) ^ (68 + 1) ∧
      Stage00.H ≤ (7 : ℕ) ^ (38 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid37_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 3 7 Stage00.H Stage00.M Stage00.upper grid37 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid37_cutoff
    (by simpa only [grid37] using Math.B699.CRTStage0Pair37.CompleteComposer.rectangle_check)

theorem grid57_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 5 7 Stage00.H grid57 = true := by
  have hp : Stage00.H ≤ (5 : ℕ) ^ (46 + 1) := by
    simpa only [Stage00.exponentMax5] using Stage00.cutoff_5
  have hq : Stage00.H ≤ (7 : ℕ) ^ (38 + 1) := by
    simpa only [Stage00.exponentMax7] using Stage00.cutoff_7
  have hprop : 1 < (5 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage00.H ≤ (5 : ℕ) ^ (46 + 1) ∧
      Stage00.H ≤ (7 : ℕ) ^ (38 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid57_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 5 7 Stage00.H Stage00.M Stage00.upper grid57 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid57_cutoff
    (by simpa only [grid57] using Math.B699.CRTStage0Pair57.CompleteComposer.rectangle_check)

theorem stage00_constants :
    Math.B699.I11CRTSixPair.stageConstantsCheck Stage00.H Stage00.M = true := by
  unfold Math.B699.I11CRTSixPair.stageConstantsCheck
  exact decide_eq_true ⟨Stage00.cap_positive, Stage00.cofactor_certificate⟩

def stage00Data : Math.B699.I11CRTSixPair.SixPairGrids where
  grid23 := grid23
  grid25 := grid25
  grid27 := grid27
  grid35 := grid35
  grid37 := grid37
  grid57 := grid57

theorem stage00_pair_checks :
    Math.B699.I11CRTSixPair.pairGridCheck 2 3 Stage00.H Stage00.M Stage00.upper stage00Data.grid23 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 2 5 Stage00.H Stage00.M Stage00.upper stage00Data.grid25 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 2 7 Stage00.H Stage00.M Stage00.upper stage00Data.grid27 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 3 5 Stage00.H Stage00.M Stage00.upper stage00Data.grid35 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 3 7 Stage00.H Stage00.M Stage00.upper stage00Data.grid37 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 5 7 Stage00.H Stage00.M Stage00.upper stage00Data.grid57 = true := by
  exact ⟨by simpa only [stage00Data] using grid23_pair_check,
    by simpa only [stage00Data] using grid25_pair_check,
    by simpa only [stage00Data] using grid27_pair_check,
    by simpa only [stage00Data] using grid35_pair_check,
    by simpa only [stage00Data] using grid37_pair_check,
    by simpa only [stage00Data] using grid57_pair_check⟩

end Math.B699.I11CRTConsumers.Stage00

#print axioms Math.B699.I11CRTConsumers.Stage00.grid23_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage00.grid23_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage00.grid25_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage00.grid25_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage00.grid27_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage00.grid27_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage00.grid35_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage00.grid35_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage00.grid37_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage00.grid37_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage00.grid57_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage00.grid57_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage00.stage00_constants
#print axioms Math.B699.I11CRTConsumers.Stage00.stage00_pair_checks
