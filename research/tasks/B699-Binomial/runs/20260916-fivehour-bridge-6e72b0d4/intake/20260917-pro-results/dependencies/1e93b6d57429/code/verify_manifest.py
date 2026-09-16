"""Verify archive members BEFORE replay changes runtime-bearing outputs."""
from pathlib import Path
import hashlib
import json

BASE = Path(__file__).resolve().parents[1]

def main() -> None:
    manifest = json.loads((BASE / "MANIFEST.json").read_text())
    files = manifest["files"]
    expected = {rec["path"] for rec in files}
    actual = {str(p.relative_to(BASE)) for p in BASE.rglob("*")
              if p.is_file() and p.name != "MANIFEST.json" and "__pycache__" not in p.parts}
    if actual != expected:
        raise RuntimeError(f"Membership mismatch: {actual ^ expected}")
    for rec in files:
        p = BASE / rec["path"]
        if p.stat().st_size != rec["bytes"] or hashlib.sha256(p.read_bytes()).hexdigest() != rec["sha256"]:
            raise RuntimeError(f"Hash/size mismatch: {rec['path']}")
    print(json.dumps({"status": "PASS_MANIFEST", "files": len(files)}))

if __name__ == "__main__":
    main()
