#!/usr/bin/env python3
"""Fresh serial verification of this run and its exact project import closure."""
import importlib.util
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[4]
RUN = HERE.relative_to(REPO).as_posix()

def main():
    path = REPO / "research/shared/20260909-formalization-environment/fresh-root.py"
    spec = importlib.util.spec_from_file_location("eees_chain_fresh", path)
    runner = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = runner
    spec.loader.exec_module(runner)
    runner.BATCH_RUNS = frozenset({RUN})
    runner.ALLOWED_RUNS = runner.BATCH_RUNS | {"research/tasks/B699-Binomial/runs/20260908-external-reductions-b3c1b7"}
    runner.SHARED = HERE
    original_load = runner.load_verifier
    def serial_verifier():
        verifier = original_load()
        original_run = verifier.run_command
        def run(command, **kwargs):
            # Add the actual Lean worker limit to the same command list that is logged.
            if len(command) >= 3 and str(command[1]).endswith("lean-work.sh") and command[2] == "lean":
                command.insert(3, "--threads=1")
            return original_run(command, **kwargs)
        verifier.run_command = run
        return verifier
    runner.load_verifier = serial_verifier
    args = sys.argv[1:] or ["--root", str(HERE / "lean/Acceptance.lean"), "--guards", "12"]
    return runner.main(args)

if __name__ == "__main__":
    raise SystemExit(main())
