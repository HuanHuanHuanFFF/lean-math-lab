import Lean.Elab.Tactic.Omega

set_option Elab.async false

theorem b699_runtime_core_probe (n : Nat) : n + 1 > n := by omega

#print axioms b699_runtime_core_probe
