#!/usr/bin/env python3
"""Fresh verification for this exact external-reduction adoption."""
from __future__ import annotations
import argparse
import importlib.util
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
RUN = "20260908-external-reductions-b3c1b7"
RUNS = {
    "B677": f"research/tasks/B677-Lcm/runs/{RUN}",
    "B699": f"research/tasks/B699-Binomial/runs/{RUN}",
}
GUARDS = {"B677": 9, "B699": 6}

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--problem", choices=["B677", "B699", "all"], default="all")
    args = parser.parse_args()
    path = REPO / "research/shared/20260909-formalization-environment/fresh-root.py"
    spec = importlib.util.spec_from_file_location("external_reductions_fresh", path)
    assert spec and spec.loader
    runner = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = runner
    spec.loader.exec_module(runner)
    # Configure this new adoption's exact scope. Historical runner source,
    # policy, pin checks, isolation, guard checks and compilation stay intact.
    runner.BATCH_RUNS = frozenset(RUNS.values())
    runner.ALLOWED_RUNS = runner.BATCH_RUNS
    runner.SHARED = HERE
    problems = list(RUNS) if args.problem == "all" else [args.problem]
    failed = False
    for problem in problems:
        status = runner.main([
            "--root", str(REPO / RUNS[problem] / "lean/Consumer.lean"),
            "--guards", str(GUARDS[problem]),
        ])
        failed = failed or status != 0
    return int(failed)

if __name__ == "__main__":
    raise SystemExit(main())
