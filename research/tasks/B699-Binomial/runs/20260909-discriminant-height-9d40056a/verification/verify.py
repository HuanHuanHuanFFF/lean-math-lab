#!/usr/bin/env python3
"""Fresh serial acceptance using the frozen verifier plus one strict supplement.

The frozen verifier remains responsible for source closure, fixed pins, fresh
project objects, source policy, and actual axiom parsing. This entry adds a
narrow companion compile for the one fixed B686 module whose four source
prints are hidden below ``#guard_msgs``; the companion prints those declarations
directly and feeds its real stdout back through the frozen parser.

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
GUARDED = HERE.parent / "guarded_axioms.py"


def _load_guarded_axioms():
    spec = importlib.util.spec_from_file_location(
        "b699_height_guarded_axioms", GUARDED
    )
    if spec is None or spec.loader is None:
        raise RuntimeError(f"could not load guarded axiom support: {GUARDED}")
    support = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = support
    spec.loader.exec_module(support)
    return support


def _install_guarded_companion(module, support):
    """Wrap only the frozen compile boundary; leave its audit implementation intact."""

    original_compile_source = module.compile_source

    def compile_source_with_guard(reference, *args, **kwargs):
        record, output = original_compile_source(reference, *args, **kwargs)
        repo = kwargs.get("repo")
        if repo is None or not support.is_supported_source(reference.path, repo):
            return record, output
        # The supplement is meaningful only after the old source has produced
        # an object.  A failed old compile remains a normal frozen failure.
        if record.get("exit_code") != 0 or not record.get("output_exists", False):
            return record, output
        record["guarded_axiom_source_audit"] = record.get("axiom_audit")
        companion = support.run_guarded_companion(
            repo=repo,
            source=reference.path,
            lean=kwargs["lean"],
            package_root=kwargs["package_root"],
            env=kwargs["env"],
            public_root=kwargs["public_root"],
            raw_root=kwargs["raw_root"],
            memory_mb=kwargs["memory_mb"],
            timeout_seconds=kwargs["timeout_seconds"],
            audit_axioms=module.audit_axioms,
            label=(
                f"guarded-axioms-{kwargs.get('ordinal', 'unknown')}-"
                + reference.module
            ),
            compile_prefix=[str(kwargs["lean"])],
            compile_flags=[
                "-j1",
                f"-M{kwargs['memory_mb']}",
                "-DautoImplicit=false",
                "-DrelaxedAutoImplicit=false",
            ],
            public_prefix=["LEAN"],
            public_flags=[
                "-j1",
                f"-M{kwargs['memory_mb']}",
                "-DautoImplicit=false",
                "-DrelaxedAutoImplicit=false",
            ],
            run_logged=module.run_logged,
            command_records=kwargs["command_records"],
            diagnostic_records=kwargs["diagnostic_records"],
            sanitize_output=lambda text: module.sanitize_text(
                text,
                repo=repo,
                lean=kwargs["lean"],
                package_root=kwargs["package_root"],
                raw_root=kwargs["raw_root"],
                public_root=kwargs["public_root"],
            ),
        )
        record["guarded_axiom_companion"] = companion
        if companion.get("success"):
            old_audit = record.get("axiom_audit")
            # Only a guarded #print count mismatch is repaired.  Any unrelated
            # frozen compile/audit failure remains visible to main().
            if support.is_exact_guarded_source_audit(
                old_audit, record.get("failure")
            ):
                record["axiom_audit"] = companion["axiom_audit"]
                record["failure"] = None
        elif record.get("failure") is None:
            record["failure"] = "guarded axiom companion failed: " + str(
                companion.get("failure") or "unknown failure"
            )
        return record, output

    module.compile_source = compile_source_with_guard


def main():
    spec = importlib.util.spec_from_file_location("b699_height_frozen_verifier", SOURCE)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    support = _load_guarded_axioms()
    _install_guarded_companion(module, support)
    print("Verifier source:", SOURCE.relative_to(REPO))
    print("Verifier SHA256:", hashlib.sha256(SOURCE.read_bytes()).hexdigest())
    module.__file__ = str(HERE)  # changes only the new run's output owner
    return module.main()


if __name__ == "__main__":
    raise SystemExit(main())
