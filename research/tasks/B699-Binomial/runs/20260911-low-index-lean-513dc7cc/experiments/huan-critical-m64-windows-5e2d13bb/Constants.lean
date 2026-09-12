import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-m64-windows-5e2d13bb».Definitions

/-! Exactly the three old M=64, zero-net-exponent comparisons. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

namespace Math.B699.CriticalM64Windows

theorem m64_parameters_28 : M64Parameters 28 9 19 := by decide +kernel
theorem m64_parameters_31 : M64Parameters 31 10 21 := by decide +kernel
theorem m64_parameters_34 : M64Parameters 34 11 23 := by decide +kernel

end Math.B699.CriticalM64Windows
