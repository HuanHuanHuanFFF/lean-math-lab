"""Independent bounded replay; writes only beside this file, originals read-only."""
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

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

manifest_rows = []
for package in ("B699-20261005-smoothing8", "B699-uniform-gap-paper-20261005"):
    package_root = ORIGINALS / package
    manifest = json.loads((package_root / "MANIFEST.json").read_text(encoding="utf-8"))
    members = manifest.get("files", manifest.get("members"))
    for member in members:
        source = package_root / member["path"]
        actual_bytes, actual_sha = source.stat().st_size, sha(source)
        ok = actual_bytes == member["bytes"] and actual_sha == member["sha256"]
        manifest_rows.append({"package": package, "path": member["path"],
                              "bytes": actual_bytes, "sha256": actual_sha, "matched": ok})
        if not ok:
            raise RuntimeError(f"Manifest mismatch: {source}")

runs = []
for package, script_rel, original_json, output_name in (
    ("B699-20261005-smoothing8", "src/check_constants.py", "certificates/constants.json", "smoothing8-constants.json"),
    ("B699-uniform-gap-paper-20261005", "certs/verify_constants.py", "certs/CONSTANTS.json", "uniform-paper-constants.json"),
):
    package_root = ORIGINALS / package
    script = package_root / script_rel
    parsed = ast.parse(script.read_text(encoding="utf-8"), filename=str(script))
    imports = sorted({n.module or "" for n in ast.walk(parsed) if isinstance(n, ast.ImportFrom)}
                     | {a.name for n in ast.walk(parsed) if isinstance(n, ast.Import) for a in n.names})
    destination = OUT / output_name
    command = [sys.executable, "-B", str(script), "--output", str(destination)]
    started = time.perf_counter()
    completed = subprocess.run(command, cwd=OUT, capture_output=True, text=True, timeout=60)
    elapsed = time.perf_counter() - started
    log = OUT / (output_name.removesuffix(".json") + ".log")
    log.write_text(completed.stdout + completed.stderr, encoding="utf-8")
    if completed.returncode != 0:
        raise RuntimeError(f"Replay failed: {package}; see {log}")
    replay = json.loads(destination.read_text(encoding="utf-8"))
    expected = json.loads((package_root / original_json).read_text(encoding="utf-8"))
    if replay != expected:
        raise RuntimeError(f"Parsed JSON differs: {package}")
    runs.append({"package": package, "command": command, "source_sha256": sha(script),
                 "imports": imports, "exit_code": completed.returncode, "wall_seconds": elapsed,
                 "check_count": replay["check_count"], "parsed_json_equal": True,
                 "output_path": str(destination), "output_sha256": sha(destination),
                 "original_json_sha256": sha(package_root / original_json),
                 "raw_bytes_equal": destination.read_bytes() == (package_root / original_json).read_bytes(),
                 "log_path": str(log)})

for row in manifest_rows:
    source = ORIGINALS / row["package"] / row["path"]
    if sha(source) != row["sha256"]:
        raise RuntimeError(f"Original changed during replay: {source}")
report = {"scope": "Byte identity plus exact scalar arithmetic only; no prime, zeta, Lean, checker, or CI acceptance",
          "python": sys.version, "python_executable": sys.executable,
          "manifest_member_count": len(manifest_rows), "all_manifest_members_match": True,
          "manifest_members": manifest_rows, "runs": runs,
          "all_source_hashes_rechecked_unchanged": True}
(OUT / "REPLAY-RESULTS.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
print(json.dumps({"manifest_members": len(manifest_rows), "all_manifest_members_match": True,
                  "runs": [{k: row[k] for k in ("package", "exit_code", "wall_seconds", "check_count", "parsed_json_equal", "raw_bytes_equal")} for row in runs]}, ensure_ascii=False))
