from __future__ import annotations

import ast
import json
from pathlib import Path
import sys

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import cooperative_pause_helper as h  # noqa: E402

REPO = r"D:\CodingProject\Math\.tools\worktrees\b699-huan-5e2d13bb"
ROOT = h.TARGET_ROOT


def row(pid, ppid, name, command, created="2026-09-11T10:00:00Z"):
    return h.Process(pid, ppid, created, name, command)


def exact(pid=31740, created="2026-09-11T10:00:00Z"):
    return row(
        pid,
        32216,
        "python.exe",
        rf"C:\Python314\python.exe -B {REPO}\research\tasks\B699-Binomial\runs"
        rf"\20260911-low-index-lean-513dc7cc\verification\runner\verify_huan.py "
        rf"--repo {REPO} --root {ROOT} --memory-mb 2048 --timeout 900",
        created,
    )


def require_reject(fn, marker):
    try:
        fn()
    except h.SafetyError as exc:
        assert marker in str(exc), (marker, str(exc))
    else:
        raise AssertionError("expected SafetyError")


def main():
    source = (HERE / "cooperative_pause_helper.py").read_text(encoding="utf-8")
    ast.parse(source)
    assert "REAL_CONTROL_ENABLED = False" in source
    assert "NtSuspendProcess" in source and "NtResumeProcess" in source
    assert "taskkill" not in source.casefold()
    assert "terminate(" not in source
    assert "kill(" not in source

    target = exact()
    plan = h.dry_run([target], REPO, 300)
    assert plan["eligible"] and plan["target_pid"] == 31740
    assert plan["watchdog"]["target_pid"] == 31740

    require_reject(
        lambda: h.dry_run(
            [target, row(25256, 31740, "lean.exe", "lean.exe ...")], REPO, 300
        ),
        "descendants",
    )
    require_reject(
        lambda: h.dry_run([target, exact(pid=31741)], REPO, 300),
        "found 2",
    )
    require_reject(
        lambda: h.revalidate_identity([exact(created="new")], target, REPO),
        "PID identity",
    )

    relative_repo = row(
        31740,
        32216,
        "python.exe",
        r"C:\Python314\python.exe -B research\tasks\B699-Binomial\runs"
        r"\20260911-low-index-lean-513dc7cc\verification\runner\verify_huan.py "
        r"--repo . --root research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/"
        r"lean/rows/Row035J2/Original.lean",
    )
    require_reject(lambda: h.dry_run([relative_repo], REPO, 300), "absolute repo token")

    assert h.dry_run([target], REPO, 1)["action"] == "dry_run_only"
    print(
        json.dumps(
            {
                "status": "simulation_passed",
                "checks": [
                    "unique exact command and creation identity",
                    "live descendant rejection",
                    "duplicate target rejection",
                    "PID reuse rejection",
                    "relative repo command rejection",
                    "dry-run does not call process control",
                ],
                "real_control_enabled": h.REAL_CONTROL_ENABLED,
            },
            ensure_ascii=False,
        )
    )


if __name__ == "__main__":
    main()
