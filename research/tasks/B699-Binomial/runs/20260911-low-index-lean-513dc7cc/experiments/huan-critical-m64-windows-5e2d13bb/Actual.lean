import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-m64-windows-5e2d13bb».Windows
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-m64-windows-5e2d13bb».Constants

/-! Three original noCommon consumers. No upper-height premise is used here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalM64Windows
open B699LargePrimeStructure

theorem actual_i28_m64_windows {n j : ℕ} (hn : 4096 < n)
    (hij : 28 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 28 j) : M64Pair n 28 :=
  pair_of_m64_parameters m64_parameters_28 hn hij hjn hno

theorem actual_i31_m64_windows {n j : ℕ} (hn : 4096 < n)
    (hij : 31 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 31 j) : M64Pair n 31 :=
  pair_of_m64_parameters m64_parameters_31 hn hij hjn hno

theorem actual_i34_m64_windows {n j : ℕ} (hn : 4096 < n)
    (hij : 34 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 34 j) : M64Pair n 34 :=
  pair_of_m64_parameters m64_parameters_34 hn hij hjn hno

end Math.B699.CriticalM64Windows
