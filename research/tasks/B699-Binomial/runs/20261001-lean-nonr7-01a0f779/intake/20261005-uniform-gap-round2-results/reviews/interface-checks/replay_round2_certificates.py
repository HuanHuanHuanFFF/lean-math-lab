"""Read-only originals; serial bounded arithmetic with outputs in this directory."""
from __future__ import annotations
import ast
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time

OUT = Path(__file__).resolve().parent
ORIGINALS = OUT.parent.parent / "originals"
PACKAGES = ("B699-uniform-gap-round2-20261005", "B699-20261005-local-spline6-r2")

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

snapshots = []
members = []
for package in PACKAGES:
    root = ORIGINALS / package
    manifest = json.loads((root / "MANIFEST.json").read_text(encoding="utf-8"))
    declarations = manifest.get("members", manifest.get("files"))
    excludes = {"MANIFEST.json"} | ({"SHA256SUMS"} if "spline6" in package else set())
    actual = {str(path.relative_to(root)).replace("\\", "/") for path in root.rglob("*") if path.is_file()}
    expected = {row["path"] for row in declarations} | excludes
    if actual != expected:
        raise RuntimeError(f"Package coverage differs: {actual ^ expected}")
    for row in declarations:
        path = root / row["path"]
        if path.stat().st_size != row["bytes"] or sha(path) != row["sha256"]:
            raise RuntimeError(f"Manifest mismatch: {path}")
        members.append({"package": package, **row, "matched": True})
    for path in root.rglob("*"):
        if path.is_file():
            snapshots.append({"path": str(path), "bytes": path.stat().st_size, "sha256": sha(path)})

sum_root = ORIGINALS / PACKAGES[1]
sum_rows = []
for line in (sum_root / "SHA256SUMS").read_text(encoding="utf-8").splitlines():
    digest, name = line.split("  ", 1)
    if sha(sum_root / name) != digest:
        raise RuntimeError(f"SHA256SUMS mismatch: {name}")
    sum_rows.append(name)

runs = []
for package, rel, original_output, fixed_output in (
    (PACKAGES[0], "certs/verify_constants.py", "certs/CONSTANTS.json", True),
    (PACKAGES[1], "src/check_constants.py", "certificates/constants.json", False),
):
    root = ORIGINALS / package
    source = root / rel
    tree = ast.parse(source.read_text(encoding="utf-8"))
    run_dir = OUT / package
    run_dir.mkdir(exist_ok=True)
    executable_source = run_dir / source.name
    executable_source.write_bytes(source.read_bytes())
    if sha(executable_source) != sha(source):
        raise RuntimeError("Replay copy is not exact")
    destination = run_dir / ("CONSTANTS.json" if fixed_output else "constants.json")
    argv = [sys.executable, "-B", str(executable_source)]
    if not fixed_output:
        argv += ["--output", str(destination)]
    started = time.perf_counter()
    completed = subprocess.run(argv, cwd=run_dir, capture_output=True, text=True, timeout=60)
    elapsed = time.perf_counter() - started
    log = run_dir / "replay.log"
    log.write_text(completed.stdout + completed.stderr, encoding="utf-8")
    if completed.returncode != 0:
        raise RuntimeError(f"Replay failure: {package}; see {log}")
    current = json.loads(destination.read_text(encoding="utf-8"))
    original = json.loads((root / original_output).read_text(encoding="utf-8"))
    if current != original:
        raise RuntimeError(f"JSON differs: {package}")
    runs.append({"package": package, "source_sha256": sha(source), "exact_copy_sha256": sha(executable_source),
                 "command": argv, "exit_code": completed.returncode, "wall_seconds": elapsed,
                 "check_count": current.get("check_count", current.get("passed")),
                 "parsed_json_equal": True,
                 "raw_bytes_equal": destination.read_bytes() == (root / original_output).read_bytes(),
                 "newline_normalized_text_equal": destination.read_text(encoding="utf-8") == (root / original_output).read_text(encoding="utf-8"),
                 "output": str(destination), "output_sha256": sha(destination), "original_output_sha256": sha(root / original_output),
                 "log": str(log), "AST_imports": sorted({a.name for n in ast.walk(tree) if isinstance(n, ast.Import) for a in n.names} | {n.module or "" for n in ast.walk(tree) if isinstance(n, ast.ImportFrom)})})

for row in snapshots:
    if sha(Path(row["path"])) != row["sha256"]:
        raise RuntimeError(f"Original changed: {row['path']}")
report = {"scope": "Exact scalar arithmetic and byte identity only; no primes, zeta zeros, Lean, checker, or CI",
          "python": sys.version, "python_executable": sys.executable,
          "manifest_declared_members": len(members), "all_manifest_members_match": True,
          "all_package_files": len(snapshots), "manifest_excluded_files_inventoried": len(snapshots)-len(members),
          "SHA256SUMS_rows_checked": len(sum_rows), "members": members, "source_snapshots": snapshots,
          "all_original_hashes_rechecked_unchanged": True, "runs": runs}
(OUT / "REPLAY-RESULTS.json").write_text(json.dumps(report, ensure_ascii=False, indent=2)+"\n", encoding="utf-8")
print(json.dumps({"manifest_members": len(members), "all_files": len(snapshots), "sha_rows": len(sum_rows),
                  "runs": [{k: r[k] for k in ("package", "exit_code", "wall_seconds", "check_count", "parsed_json_equal", "raw_bytes_equal", "newline_normalized_text_equal")} for r in runs]}, ensure_ascii=False))
