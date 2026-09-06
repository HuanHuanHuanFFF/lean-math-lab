"""Reject incomplete generated API docs and record their source revision."""
import argparse
import json
from pathlib import Path

parser = argparse.ArgumentParser()
parser.add_argument("directory", type=Path)
parser.add_argument("--commit", required=True)
args = parser.parse_args()
root = args.directory
required = ["index.html", "search.html", "search.js", "declaration-data.js",
            "declarations/declaration-data.bmp", "find/index.html", "Math/A071999.html"]
for name in required:
    path = root / name
    if not path.is_file() or path.stat().st_size == 0:
        raise SystemExit(f"Missing or empty documentation artifact: {name}")
page = (root / "Math/A071999.html").read_text(encoding="utf-8")
for declaration in ("matrix", "det_matrix", "det_matrix_range"):
    if f'id="Math.A071999.{declaration}"' not in page:
        raise SystemExit(f"Missing public declaration anchor: {declaration}")
expected_source = f"github.com/HuanHuanHuanFFF/lean-math-lab/blob/{args.commit}/Math/A071999.lean"
if expected_source not in page:
    raise SystemExit("Theorem source link does not match the build commit")
repo = Path(__file__).resolve().parent.parent
doc_manifest = json.loads((repo / "docbuild/lake-manifest.json").read_text())
doc_gen = next(p for p in doc_manifest["packages"] if p.get("url") == "https://github.com/leanprover/doc-gen4")
metadata = {"commit": args.commit,
            "lean_toolchain": (repo / "lean-toolchain").read_text().strip(),
            "doc_gen4": doc_gen["inputRev"], "doc_gen4_commit": doc_gen["rev"],
            "documentation_tracks": "main"}
(root / "build-info.json").write_text(json.dumps(metadata, indent=2) + "\n", encoding="utf-8")
print("API anchors, source revision, search assets, and build metadata verified.")
