/- Source-only terminal witness pilot v2; no checker is copied. -/
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.TerminalWitnessPilot
open B699LargePrimeStructure
open B699LowIndex

def top_24_33_23 : GoodSegment := { lower := 24, upper := 33, witness := RowWitness.topPrime 23 }
theorem top_24_33_23_check : goodSegmentCheck 11 3 7 top_24_33_23 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 24) (hi := 33) (p := 23)
    (by decide) (by decide +kernel) (by decide) (by decide)

theorem top_24_33_23_consumer {n j : ℕ} (hlo : 24 ≤ n) (hup : n ≤ 33) (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  goodSegmentCheck_sound (i := 11) (r := 3) (s := 7) (hi := by decide) (hsi := by decide) (g := top_24_33_23) top_24_33_23_check hlo hup hij hjn

#print axioms B699LowIndex.TerminalWitnessPilot.top_24_33_23_check
#print axioms B699LowIndex.TerminalWitnessPilot.top_24_33_23_consumer

def large_124 : GoodSegment := { lower := 124, upper := 124, witness := RowWitness.largeDivisor 140926216014727 }
theorem large_124_check : goodSegmentCheck 11 3 7 large_124 = true := by
  decide +kernel

theorem large_124_consumer {n j : ℕ} (hlo : 124 ≤ n) (hup : n ≤ 124) (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  goodSegmentCheck_sound (i := 11) (r := 3) (s := 7) (hi := by decide) (hsi := by decide) (g := large_124) large_124_check hlo hup hij hjn

#print axioms B699LowIndex.TerminalWitnessPilot.large_124_check
#print axioms B699LowIndex.TerminalWitnessPilot.large_124_consumer

def top_730_727 : GoodSegment := { lower := 730, upper := 737, witness := RowWitness.topPrime 727 }
theorem top_730_727_check : goodSegmentCheck 11 3 7 top_730_727 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 730) (hi := 737) (p := 727)
    (by decide) (by decide +kernel) (by decide) (by decide)

theorem top_730_727_consumer {n j : ℕ} (hlo : 730 ≤ n) (hup : n ≤ 737) (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  goodSegmentCheck_sound (i := 11) (r := 3) (s := 7) (hi := by decide) (hsi := by decide) (g := top_730_727) top_730_727_check hlo hup hij hjn

#print axioms B699LowIndex.TerminalWitnessPilot.top_730_727_check
#print axioms B699LowIndex.TerminalWitnessPilot.top_730_727_consumer

def top_1030_1021 : GoodSegment := { lower := 1030, upper := 1031, witness := RowWitness.topPrime 1021 }
theorem top_1030_1021_check : goodSegmentCheck 11 3 7 top_1030_1021 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1030) (hi := 1031) (p := 1021)
    (by decide) (by decide +kernel) (by decide) (by decide)

theorem top_1030_1021_consumer {n j : ℕ} (hlo : 1030 ≤ n) (hup : n ≤ 1031) (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  goodSegmentCheck_sound (i := 11) (r := 3) (s := 7) (hi := by decide) (hsi := by decide) (g := top_1030_1021) top_1030_1021_check hlo hup hij hjn

#print axioms B699LowIndex.TerminalWitnessPilot.top_1030_1021_check
#print axioms B699LowIndex.TerminalWitnessPilot.top_1030_1021_consumer

def top_1032_1031 : GoodSegment := { lower := 1032, upper := 1041, witness := RowWitness.topPrime 1031 }
theorem top_1032_1031_check : goodSegmentCheck 11 3 7 top_1032_1031 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1032) (hi := 1041) (p := 1031)
    (by decide) (by decide +kernel) (by decide) (by decide)

theorem top_1032_1031_consumer {n j : ℕ} (hlo : 1032 ≤ n) (hup : n ≤ 1041) (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  goodSegmentCheck_sound (i := 11) (r := 3) (s := 7) (hi := by decide) (hsi := by decide) (g := top_1032_1031) top_1032_1031_check hlo hup hij hjn

#print axioms B699LowIndex.TerminalWitnessPilot.top_1032_1031_check
#print axioms B699LowIndex.TerminalWitnessPilot.top_1032_1031_consumer

def top_1380_1373 : GoodSegment := { lower := 1378, upper := 1383, witness := RowWitness.topPrime 1373 }
theorem top_1380_1373_check : goodSegmentCheck 11 3 7 top_1380_1373 = true := by
  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked
    (i := 11) (r := 3) (s := 7) (lo := 1378) (hi := 1383) (p := 1373)
    (by decide) (by decide +kernel) (by decide) (by decide)

theorem top_1380_1373_consumer {n j : ℕ} (hlo : 1378 ≤ n) (hup : n ≤ 1383) (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j :=
  goodSegmentCheck_sound (i := 11) (r := 3) (s := 7) (hi := by decide) (hsi := by decide) (g := top_1380_1373) top_1380_1373_check hlo hup hij hjn

#print axioms B699LowIndex.TerminalWitnessPilot.top_1380_1373_check
#print axioms B699LowIndex.TerminalWitnessPilot.top_1380_1373_consumer

end B699LowIndex.TerminalWitnessPilot
