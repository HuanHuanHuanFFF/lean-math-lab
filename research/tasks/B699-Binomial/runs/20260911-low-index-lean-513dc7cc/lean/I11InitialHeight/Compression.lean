import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11InitialHeight.Height
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBatches.ActualCompression

/-! UNCOMPILED CANDIDATE. The established six-pair numerical compression
now receives the initial height from the actual five-edge proof.
Only the original hij/hjn/noCommon assumptions remain. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialHeight
open B699LargePrimeStructure

theorem actual_i11_below_109 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) :
    n < (2 : ℕ) ^ 109 := by
  exact Math.B699.I11VerifiedCubicCompression.actual_i11_below_109_of_initial_height
    hij hjn hno (actual_i11_below_15360 hij hjn hno)

end Math.B699.I11InitialHeight
