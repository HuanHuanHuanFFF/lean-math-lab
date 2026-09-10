#!/usr/bin/env python3
"""Transport only this run's hash-verified shared Lean acceptance objects."""
from __future__ import annotations
import argparse
import hashlib
import json
import subprocess
import zipfile
from pathlib import Path

RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
RAW = Path(".tools") / RUN.name
ROOT = RUN / "lean/SharedEnvironment.lean"


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def allowed(path):
    if path.is_absolute() or ".." in path.parts:
        return False
    return path.is_relative_to(RAW) or path.is_relative_to(RUN / "verification")


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("mode", choices=["export", "import"])
    p.add_argument("--archive", type=Path, required=True)
    args = p.parse_args()
    if args.mode == "export":
        candidates = []
        for f in sorted((RUN / "verification").glob("20*/evidence.json")):
            d = json.loads(f.read_text())
            if d.get("success") and d.get("root_sources") == [str(ROOT)]:
                candidates.append((f, d))
        if not candidates:
            raise RuntimeError("No successful shared environment acceptance")
        evidence, d = candidates[-1]
        rows = [*d.get("compile_records", []), *d.get("reuse_records", [])]
        if len(rows) != len(d["source_closure"]):
            raise RuntimeError("Shared closure is incomplete")
        files = {evidence}
        for row in rows:
            if row.get("failure") or row.get("exit_code") != 0:
                raise RuntimeError("Unaccepted object")
            if sha(row["source"]) != row["source_sha256_before"] or sha(row["source"]) != row["source_sha256_after"]:
                raise RuntimeError("Source changed")
            for field, digest in [("output", "output_sha256"), ("log", "log_sha256")]:
                file = Path(row[field])
                if not allowed(file) or sha(file) != row[digest]:
                    raise RuntimeError("Object or log mismatch")
                files.add(file)
        manifest = {"schema": 1, "source_commit": subprocess.check_output(
            ["git", "rev-parse", "HEAD"], text=True).strip(),
            "manifest_sha256": sha("lake-manifest.json"),
            "toolchain": Path("lean-toolchain").read_text().strip(),
            "evidence": str(evidence), "files": [
                {"path": str(f), "size": f.stat().st_size, "sha256": sha(f)} for f in sorted(files)]}
        args.archive.parent.mkdir(parents=True, exist_ok=True)
        if args.archive.exists():
            raise RuntimeError("Preserve existing archive")
        with zipfile.ZipFile(args.archive, "x", zipfile.ZIP_DEFLATED, compresslevel=1) as archive:
            archive.writestr("cache-manifest.json", json.dumps(manifest, indent=2) + "\n")
            for file in files:
                archive.write(file, str(file))
        print("B699_CACHE_EXPORT " + json.dumps({
            "evidence": str(evidence), "archive_sha256": sha(args.archive),
            "archive_size": args.archive.stat().st_size, "objects_and_logs": len(files)}))
    else:
        with zipfile.ZipFile(args.archive) as archive:
            manifest = json.loads(archive.read("cache-manifest.json"))
            if manifest["manifest_sha256"] != sha("lake-manifest.json"):
                raise RuntimeError("Dependency manifest mismatch")
            if manifest["toolchain"] != Path("lean-toolchain").read_text().strip():
                raise RuntimeError("Toolchain mismatch")
            expected = {r["path"]: r for r in manifest["files"]}
            if set(archive.namelist()) != set(expected) | {"cache-manifest.json"}:
                raise RuntimeError("Unexpected archive entries")
            if sum(r["size"] for r in manifest["files"]) > 100 * 1024 * 1024:
                raise RuntimeError("Shared object bundle exceeds its resource budget")
            for name, row in expected.items():
                path = Path(name)
                if not allowed(path) or not path.resolve().is_relative_to(Path.cwd()):
                    raise RuntimeError("Unsafe archive destination")
                content = archive.read(name)
                if len(content) != row["size"] or hashlib.sha256(content).hexdigest() != row["sha256"]:
                    raise RuntimeError("Archive entry hash mismatch")
                if path.exists():
                    if sha(path) != row["sha256"]:
                        raise RuntimeError("Preserve conflicting existing evidence or object")
                else:
                    path.parent.mkdir(parents=True, exist_ok=True)
                    path.write_bytes(content)
        (RAW / "shared-evidence.txt").write_text(manifest["evidence"] + "\n")
        (RUN / "verification/cache-restoration.json").write_text(json.dumps({
            "archive_sha256": sha(args.archive), "export_source_commit": manifest["source_commit"],
            "evidence": manifest["evidence"], "all_entry_hashes_match": True,
            "new_Lean_acceptance": False}, indent=2) + "\n")
        print("B699_CACHE_READY " + manifest["evidence"])


if __name__ == "__main__":
    main()
