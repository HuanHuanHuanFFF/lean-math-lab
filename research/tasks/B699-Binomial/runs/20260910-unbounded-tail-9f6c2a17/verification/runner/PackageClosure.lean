import research.tasks.«B699-Binomial».runs.«20260910-unbounded-tail-9f6c2a17».lean.Acceptance
import Lean

open Lean Elab Command in
run_cmd do
  for name in (← getEnv).header.moduleNames do
    logInfo m!"B699_DEPENDENCY {name}"

#print axioms B699TailAcceptance.correction_analysis
#print axioms B699TailAcceptance.correction_base
