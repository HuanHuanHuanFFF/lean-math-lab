import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Compress.Audit
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Pair23
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Pair25
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Pair27
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Pair35
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Pair37
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.Pair57

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11VerifiedCubicCompression

open B699LargePrimeStructure Math.B699.I11CubicCompression

def allPairRows : SixPairRows where
  rows23 := Math.B699.CubicDataConsumersV4.Pair23.rows23
  rows25 := Math.B699.CubicDataConsumersV4.Pair25.rows25
  rows27 := Math.B699.CubicDataConsumersV4.Pair27.rows27
  rows35 := Math.B699.CubicDataConsumersV4.Pair35.rows35
  rows37 := Math.B699.CubicDataConsumersV4.Pair37.rows37
  rows57 := Math.B699.CubicDataConsumersV4.Pair57.rows57

/-- Actual numerical block certificates are supplied internally.
Only the still-unproved initial height remains an explicit height premise. -/
theorem actual_i11_below_109_of_initial_height {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j)
    (hnH : n < (2 : ℕ) ^ 15360) : n < (2 : ℕ) ^ 109 := by
  exact actual_i11_below_109_of_six_pair_checks allPairRows
    Math.B699.CubicDataConsumersV4.Pair23.pair23Check
    Math.B699.CubicDataConsumersV4.Pair25.pair25Check
    Math.B699.CubicDataConsumersV4.Pair27.pair27Check
    Math.B699.CubicDataConsumersV4.Pair35.pair35Check
    Math.B699.CubicDataConsumersV4.Pair37.pair37Check
    Math.B699.CubicDataConsumersV4.Pair57.pair57Check
    hij hjn hno hnH

end Math.B699.I11VerifiedCubicCompression

#print axioms Math.B699.I11VerifiedCubicCompression.actual_i11_below_109_of_initial_height
