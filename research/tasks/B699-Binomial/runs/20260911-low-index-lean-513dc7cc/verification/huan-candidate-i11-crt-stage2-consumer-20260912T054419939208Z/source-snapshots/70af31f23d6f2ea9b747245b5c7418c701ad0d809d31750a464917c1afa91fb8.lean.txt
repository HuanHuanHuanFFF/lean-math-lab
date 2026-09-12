import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair23.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair25.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair27.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair35.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair37.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtStage2Pair57.CompleteComposer
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.Meta
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStep.ActualStep
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11CrtStages.NumericMetadata

/-! UNCOMPILED source-only consumer. It wires existing grid roots to the fixed CRT API; it does not rebuild any grid. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1024

namespace Math.B699.I11CRTConsumers.Stage02
open B699LowIndex.I11CrtStageMetadata
open Math.B699.I11CRTSixPair

def grid23 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 38
  bmax := 24
  cells := Math.B699.CRTStage2Pair23.CompleteComposer.globalData

def grid25 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 38
  bmax := 16
  cells := Math.B699.CRTStage2Pair25.CompleteComposer.globalData

def grid27 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 38
  bmax := 13
  cells := Math.B699.CRTStage2Pair27.CompleteComposer.globalData

def grid35 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 24
  bmax := 16
  cells := Math.B699.CRTStage2Pair35.CompleteComposer.globalData

def grid37 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 24
  bmax := 13
  cells := Math.B699.CRTStage2Pair37.CompleteComposer.globalData

def grid57 : Math.B699.I11CRTSixPair.PairGridData where
  amax := 16
  bmax := 13
  cells := Math.B699.CRTStage2Pair57.CompleteComposer.globalData

theorem grid23_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 2 3 Stage02.H grid23 = true := by
  have hp : Stage02.H ≤ (2 : ℕ) ^ (38 + 1) := by
    simpa only [Stage02.exponentMax2] using Stage02.cutoff_2
  have hq : Stage02.H ≤ (3 : ℕ) ^ (24 + 1) := by
    simpa only [Stage02.exponentMax3] using Stage02.cutoff_3
  have hprop : 1 < (2 : ℕ) ∧ 1 < (3 : ℕ) ∧
      Stage02.H ≤ (2 : ℕ) ^ (38 + 1) ∧
      Stage02.H ≤ (3 : ℕ) ^ (24 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid23_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 2 3 Stage02.H Stage02.M Stage02.upper grid23 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid23_cutoff
    (by simpa only [grid23] using Math.B699.CRTStage2Pair23.CompleteComposer.rectangle_check)

theorem grid25_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 2 5 Stage02.H grid25 = true := by
  have hp : Stage02.H ≤ (2 : ℕ) ^ (38 + 1) := by
    simpa only [Stage02.exponentMax2] using Stage02.cutoff_2
  have hq : Stage02.H ≤ (5 : ℕ) ^ (16 + 1) := by
    simpa only [Stage02.exponentMax5] using Stage02.cutoff_5
  have hprop : 1 < (2 : ℕ) ∧ 1 < (5 : ℕ) ∧
      Stage02.H ≤ (2 : ℕ) ^ (38 + 1) ∧
      Stage02.H ≤ (5 : ℕ) ^ (16 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid25_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 2 5 Stage02.H Stage02.M Stage02.upper grid25 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid25_cutoff
    (by simpa only [grid25] using Math.B699.CRTStage2Pair25.CompleteComposer.rectangle_check)

theorem grid27_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 2 7 Stage02.H grid27 = true := by
  have hp : Stage02.H ≤ (2 : ℕ) ^ (38 + 1) := by
    simpa only [Stage02.exponentMax2] using Stage02.cutoff_2
  have hq : Stage02.H ≤ (7 : ℕ) ^ (13 + 1) := by
    simpa only [Stage02.exponentMax7] using Stage02.cutoff_7
  have hprop : 1 < (2 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage02.H ≤ (2 : ℕ) ^ (38 + 1) ∧
      Stage02.H ≤ (7 : ℕ) ^ (13 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid27_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 2 7 Stage02.H Stage02.M Stage02.upper grid27 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid27_cutoff
    (by simpa only [grid27] using Math.B699.CRTStage2Pair27.CompleteComposer.rectangle_check)

theorem grid35_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 3 5 Stage02.H grid35 = true := by
  have hp : Stage02.H ≤ (3 : ℕ) ^ (24 + 1) := by
    simpa only [Stage02.exponentMax3] using Stage02.cutoff_3
  have hq : Stage02.H ≤ (5 : ℕ) ^ (16 + 1) := by
    simpa only [Stage02.exponentMax5] using Stage02.cutoff_5
  have hprop : 1 < (3 : ℕ) ∧ 1 < (5 : ℕ) ∧
      Stage02.H ≤ (3 : ℕ) ^ (24 + 1) ∧
      Stage02.H ≤ (5 : ℕ) ^ (16 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid35_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 3 5 Stage02.H Stage02.M Stage02.upper grid35 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid35_cutoff
    (by simpa only [grid35] using Math.B699.CRTStage2Pair35.CompleteComposer.rectangle_check)

theorem grid37_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 3 7 Stage02.H grid37 = true := by
  have hp : Stage02.H ≤ (3 : ℕ) ^ (24 + 1) := by
    simpa only [Stage02.exponentMax3] using Stage02.cutoff_3
  have hq : Stage02.H ≤ (7 : ℕ) ^ (13 + 1) := by
    simpa only [Stage02.exponentMax7] using Stage02.cutoff_7
  have hprop : 1 < (3 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage02.H ≤ (3 : ℕ) ^ (24 + 1) ∧
      Stage02.H ≤ (7 : ℕ) ^ (13 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid37_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 3 7 Stage02.H Stage02.M Stage02.upper grid37 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid37_cutoff
    (by simpa only [grid37] using Math.B699.CRTStage2Pair37.CompleteComposer.rectangle_check)

theorem grid57_cutoff :
    Math.B699.I11CRTSixPair.cutoffCheck 5 7 Stage02.H grid57 = true := by
  have hp : Stage02.H ≤ (5 : ℕ) ^ (16 + 1) := by
    simpa only [Stage02.exponentMax5] using Stage02.cutoff_5
  have hq : Stage02.H ≤ (7 : ℕ) ^ (13 + 1) := by
    simpa only [Stage02.exponentMax7] using Stage02.cutoff_7
  have hprop : 1 < (5 : ℕ) ∧ 1 < (7 : ℕ) ∧
      Stage02.H ≤ (5 : ℕ) ^ (16 + 1) ∧
      Stage02.H ≤ (7 : ℕ) ^ (13 + 1) :=
    ⟨by decide, by decide, hp, hq⟩
  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]
  exact hprop

theorem grid57_pair_check :
    Math.B699.I11CRTSixPair.pairGridCheck 5 7 Stage02.H Stage02.M Stage02.upper grid57 = true := by
  exact Math.B699.I11CRTSixPair.pairGridCheck_of_parts grid57_cutoff
    (by simpa only [grid57] using Math.B699.CRTStage2Pair57.CompleteComposer.rectangle_check)

theorem stage02_constants :
    Math.B699.I11CRTSixPair.stageConstantsCheck Stage02.H Stage02.M = true := by
  unfold Math.B699.I11CRTSixPair.stageConstantsCheck
  exact decide_eq_true ⟨Stage02.cap_positive, Stage02.cofactor_certificate⟩

def stage02Data : Math.B699.I11CRTSixPair.SixPairGrids where
  grid23 := grid23
  grid25 := grid25
  grid27 := grid27
  grid35 := grid35
  grid37 := grid37
  grid57 := grid57

theorem stage02_pair_checks :
    Math.B699.I11CRTSixPair.pairGridCheck 2 3 Stage02.H Stage02.M Stage02.upper stage02Data.grid23 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 2 5 Stage02.H Stage02.M Stage02.upper stage02Data.grid25 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 2 7 Stage02.H Stage02.M Stage02.upper stage02Data.grid27 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 3 5 Stage02.H Stage02.M Stage02.upper stage02Data.grid35 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 3 7 Stage02.H Stage02.M Stage02.upper stage02Data.grid37 = true ∧
    Math.B699.I11CRTSixPair.pairGridCheck 5 7 Stage02.H Stage02.M Stage02.upper stage02Data.grid57 = true := by
  exact ⟨by simpa only [stage02Data] using grid23_pair_check,
    by simpa only [stage02Data] using grid25_pair_check,
    by simpa only [stage02Data] using grid27_pair_check,
    by simpa only [stage02Data] using grid35_pair_check,
    by simpa only [stage02Data] using grid37_pair_check,
    by simpa only [stage02Data] using grid57_pair_check⟩

end Math.B699.I11CRTConsumers.Stage02

#print axioms Math.B699.I11CRTConsumers.Stage02.grid23_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage02.grid23_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage02.grid25_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage02.grid25_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage02.grid27_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage02.grid27_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage02.grid35_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage02.grid35_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage02.grid37_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage02.grid37_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage02.grid57_cutoff
#print axioms Math.B699.I11CRTConsumers.Stage02.grid57_pair_check
#print axioms Math.B699.I11CRTConsumers.Stage02.stage02_constants
#print axioms Math.B699.I11CRTConsumers.Stage02.stage02_pair_checks
