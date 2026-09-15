"""Verify an explicit frozen-stage list and emit a bounded Git pathspec.

Usage: python prepare_publication.py CONFIG.json OUTPUT_DIR
This does not stage, commit, or push. Raw evidence is never rewritten.
"""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import sys


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    run = Path(__file__).resolve().parents[2]
    repo = run.parents[4]
    config = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8-sig"))
    output = Path(sys.argv[2]).resolve()
    output.mkdir(parents=True, exist_ok=True)
    paths = set()
    checks = []
    for spec in config["manifests"]:
        manifest = run / spec["path"]
        assert digest(manifest) == spec["sha256"], spec["path"]
        data = json.loads(manifest.read_text(encoding="utf-8-sig"))
        entries = data.get("files", data.get("artifacts", []))
        assert entries
        paths.add(manifest)
        for entry in entries:
            rel = entry["path"]
            path = repo / rel if rel.startswith("research/") else run / rel
            path = path.resolve()
            assert path.is_relative_to(run), rel
            assert path.stat().st_size == entry["bytes"], rel
            assert digest(path) == entry["sha256"], rel
            paths.add(path)
        checks.append({"manifest": spec["path"], "files_verified": len(entries)})
    for pattern in config["root_files"]:
        matches = list(run.glob(pattern))
        assert matches, pattern
        for path in matches:
            assert path.is_file() and path.resolve().is_relative_to(run), str(path)
            paths.add(path.resolve())
    paths = sorted(paths)
    relative = [p.relative_to(repo).as_posix() for p in paths]
    (output / "paths.nul").write_bytes("\0".join(relative).encode() + b"\0")
    receipt = {
        "utc": datetime.now(timezone.utc).isoformat(),
        "status": "PASS",
        "manifests": checks,
        "path_count": len(paths),
        "bytes": sum(p.stat().st_size for p in paths),
        "files": [{"path": rel, "bytes": p.stat().st_size, "sha256": digest(p)}
                  for p, rel in zip(paths, relative)],
    }
    (output / "receipt.json").write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({k: receipt[k] for k in ("utc", "status", "path_count", "bytes")}))


if __name__ == "__main__":
    main()
