#!/usr/bin/env python3
"""Fresh serial acceptance using the frozen prior run's validated verifier.

Only the evidence-owner location is rebound to this file. Source closure,
fixed pins, fresh project objects, source policy, actual axiom parsing and
single-thread compilation remain the inherited implementation unchanged.

Pass --lean <existing Lean 4.33.1 executable> --package-root .lake/packages
and one or more --root <project Lean source>. No downloads or cache builds.
"""
import hashlib
import importlib.util
import sys
from pathlib import Path

HERE = Path(__file__).resolve()
REPO = HERE.parents[6]
SOURCE = REPO / "research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/verification/verify.py"


def main():
    spec = importlib.util.spec_from_file_location("b699_height_frozen_verifier", SOURCE)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    print("Verifier source:", SOURCE.relative_to(REPO))
    print("Verifier SHA256:", hashlib.sha256(SOURCE.read_bytes()).hexdigest())
    module.__file__ = str(HERE)  # changes only the new run's output owner
    return module.main()


if __name__ == "__main__":
    raise SystemExit(main())
