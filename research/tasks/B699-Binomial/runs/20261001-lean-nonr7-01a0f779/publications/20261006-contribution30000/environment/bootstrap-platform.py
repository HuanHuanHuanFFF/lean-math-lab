"""Reconstruct the official source pin without modifying the host repository.

This ports the source reconstruction from the fixed official lean_workspace.sh.
It does not build all FormalConjectures modules or assert sandbox equivalence.
"""
from __future__ import annotations

import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

CONTRIBUTION = "be220ff2519ecfd61b28ba9e477321e4287ef6b4"
TASKS = "2a58149e6edb0f1dc15b32391f8c29fdd85e9db3"
BASE = "7d1a8c9912747679d0093f6d1216420c33ee5ffa"
DERIVED = "6a786f997e18e8f095762a2830d191b7e25e505e"
PATCH_SHA256 = "82b0f491dd18c331f12efa722761e46b728e9bb8d643466e9ef8b40dde903023"


def run(cwd: Path, *args: str, data: bytes | None = None,
        env: dict[str, str] | None = None) -> str:
    result = subprocess.run(args, cwd=cwd, input=data, stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE, env=env, check=False)
    if result.returncode:
        raise RuntimeError(f"{args!r}: {result.stderr.decode(errors='replace')}")
    return result.stdout.decode().strip()


def checkout(root: Path, repository: str, commit: str) -> None:
    root.mkdir(parents=True, exist_ok=True)
    if not (root / ".git").exists():
        run(root, "git", "init", "--quiet")
        run(root, "git", "config", "core.autocrlf", "false")
        run(root, "git", "remote", "add", "origin", repository)
        run(root, "git", "fetch", "--depth", "1", "origin", commit)
        run(root, "git", "checkout", "--detach", "FETCH_HEAD")
    assert run(root, "git", "rev-parse", "HEAD") == commit
    assert not run(root, "git", "status", "--porcelain", "--untracked-files=all")


def main() -> None:
    task_root = Path(sys.argv[1]).resolve()
    output = Path(sys.argv[2]).resolve()
    contrib = task_root / "contribution"
    checkout(contrib, "https://github.com/conjectures-io/conjectures-contribution.git",
             CONTRIBUTION)
    checkout(contrib / "conjectures",
             "https://github.com/conjectures-io/conjectures-tasks.git", TASKS)
    pin = json.loads((contrib / "lean-source.json").read_text(encoding="utf-8"))
    assert (pin["base_commit"], pin["commit"], pin["patch_sha256"]) == (
        BASE, DERIVED, PATCH_SHA256)
    patch = contrib / "conjectures/tiers/tier-1/formal-conjectures-audit-fixes.patch"
    assert hashlib.sha256(patch.read_bytes()).hexdigest() == PATCH_SHA256
    workspace = task_root / "formal-conjectures"
    if (workspace / ".git").exists() and run(workspace, "git", "rev-parse", "HEAD") == DERIVED:
        assert not run(workspace, "git", "status", "--porcelain", "--untracked-files=all")
    else:
        checkout(workspace, pin["repository"], BASE)
        run(workspace, "git", "apply", "--index", str(patch))
        tree = run(workspace, "git", "write-tree")
        identity = os.environ.copy()
        for role in ("AUTHOR", "COMMITTER"):
            identity[f"GIT_{role}_NAME"] = "Conjectures Pool Builder"
            identity[f"GIT_{role}_EMAIL"] = "pool@conjectures.io"
            identity[f"GIT_{role}_DATE"] = "2026-08-03T00:00:00Z"
        derived = run(workspace, "git", "commit-tree", tree, "-p", BASE,
                      data=b"fix(ErdosProblems): correct audited candidate statements\n",
                      env=identity)
        assert derived == DERIVED, (derived, DERIVED)
        run(workspace, "git", "checkout", "--detach", derived)
    assert run(workspace, "git", "rev-parse", "HEAD") == DERIVED
    assert not run(workspace, "git", "status", "--porcelain", "--untracked-files=all")
    fixed_files = {}
    for filename in ("lean-toolchain", "lakefile.lean", "lakefile.toml", "lake-manifest.json"):
        source = workspace / filename
        if source.exists():
            fixed_files[filename] = {"bytes": source.stat().st_size,
                                     "sha256": hashlib.sha256(source.read_bytes()).hexdigest()}
    manifest = json.loads((workspace / "lake-manifest.json").read_text())
    receipt = {"owner": "/root/b699_contribution_environment",
               "contributionCommit": CONTRIBUTION, "taskPoolCommit": TASKS,
               "baseCommit": BASE, "productionSourceCommit": DERIVED,
               "patchSha256": PATCH_SHA256,
               "productionSourceTree": run(workspace, "git", "rev-parse", "HEAD^{tree}"),
               "sourceClean": True, "workspace": str(workspace),
               "fixedFiles": fixed_files, "packages": manifest["packages"],
               "fullFormalConjecturesBuild": False, "sandboxValidated": False}
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"sourceCommit": DERIVED, "sourceClean": True,
                      "packages": len(manifest["packages"]), "receipt": str(output)}))


if __name__ == "__main__":
    main()
