from __future__ import annotations
import hashlib, json, re
from pathlib import Path
from datetime import datetime, timezone

ROOT = Path(__file__).resolve().parent
WORKTREE = ROOT.parents[6]
# This script only writes beneath its own exclusive experiment directory.
def digest(p):
    b = p.read_bytes()
    return {"sha256": hashlib.sha256(b).hexdigest(), "bytes": len(b)}
def dump(name, obj):
    (ROOT / name).write_text(json.dumps(obj, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

source_map = json.loads((ROOT / "SOURCE_MAP.json").read_text(encoding="utf-8-sig"))
module_rows = source_map["module_map"]
old_files = sorted(p for p in ROOT.iterdir() if p.is_file() and p.name != Path(__file__).name)
snapshot = ROOT / "resume-originals"
snapshot.mkdir(exist_ok=False)
for p in old_files:
    (snapshot / p.name).write_bytes(p.read_bytes())
dump("RESUME_BASELINE.json", {
    "captured_utc": datetime.now(timezone.utc).isoformat(),
    "owner": "/root/c2_divisor_resume", "previous_owner": source_map["owner"],
    "source_status": "UNCOMPILED_CANDIDATE", "lean_runs": 0,
    "files": {p.name: digest(p) for p in old_files},
    "original_bytes": "resume-originals/",
    "allowed_write_root": str(ROOT),
    "checkpoint_utc": "2026-09-12T08:04:18Z", "total_deadline": None,
})
old_prefix = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2Direct."
new_prefix = "research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.C2DirectDivisor."

all_decls = []
def declarations(text):
    out = []
    for mat in re.finditer(r"^(?:noncomputable )?(def|theorem)\s+(\w+)\b", text, re.M):
        kind, name = mat.groups()
        sig = text[mat.end():text.index(":=", mat.end())].strip()
        depth = 0
        sep = None
        for i, c in enumerate(sig):
            if c in "([{": depth += 1
            elif c in ")]}": depth -= 1
            elif c == ":" and depth == 0:
                sep = i
                break
        if sep is None:
            raise ValueError((name, sig))
        binders, conclusion = sig[:sep].strip(), sig[sep+1:].strip()
        typ = ("∀ " + binders + ",\n  " + conclusion) if binders else conclusion
        out.append({"name": "Math.B699.C2Direct." + name, "kind": kind, "type": typ})
    return out

def audit_body(decls, pade, polynomial):
    pieces = ["set_option autoImplicit false", "set_option relaxedAutoImplicit false", "open scoped BigOperators", "open Math.B699.C2Direct"]
    if pade: pieces.append("open Math.B699.PadeConstruction")
    if polynomial: pieces.append("open Polynomial")
    pieces.append("")
    for d in decls:
        pieces.extend([f"#check (@{d['name']} : {d['type']})", f"#print axioms {d['name']}"])
        if d["kind"] == "def": pieces.append(f"#print {d['name']}")
        pieces.append("")
    return "\n".join(pieces)

for row in module_rows:
    p = ROOT / row["source"]
    old = p.read_text(encoding="utf-8-sig")
    new = old.replace(old_prefix, new_prefix)
    p.write_text(new, encoding="utf-8")
    decls = declarations(new)
    expected = row["public_roots"]
    assert [d["name"] for d in decls] == expected, row["source"]
    row["previous_target"] = row["target"]
    row["target"] = row["target"].replace("lean/C2Direct/", "lean/C2DirectDivisor/")
    row["audit_target"] = "lean/C2DirectDivisor/" + row["audit"]
    row["module"] = new_prefix + p.stem
    row["audit_module"] = new_prefix + Path(row["audit"]).stem
    row["source_sha256"] = digest(p)["sha256"]
    for d in decls:
        d.update({"source": row["source"], "audit": row["audit"]})
    is_pade = p.stem not in {"Finite", "Layers"}
    is_poly = p.stem in {"Normalization", "Family"}
    (ROOT / row["audit"]).write_text("import " + row["module"] + "\n\n/-! Uncompiled explicit-type, definition-body and transitive-axiom audit. -/\n" + audit_body(decls, is_pade, is_poly), encoding="utf-8")
    all_decls.extend(decls)

(ROOT / "Audit.lean").write_text("import " + new_prefix + "Family\n\n/-! Uncompiled complete explicit-type, definition-body and transitive-axiom audit. -/\n" + audit_body(all_decls, True, True), encoding="utf-8")
source_map["previous_owner"] = source_map["owner"]
source_map["owner"] = "/root/c2_divisor_resume"
source_map["lean_runs"] = 0
source_map["resume_originals"] = "resume-originals/"
source_map["namespace_preserved"] = "Math.B699.C2Direct"
source_map["future_directory"] = "lean/C2DirectDivisor/"
source_map["path_change"] = "Import paths only; implementation proof statements and bodies are preserved, modulo line endings."
source_map["actual_imports"] = sorted({line[7:].strip() for row in module_rows for line in (ROOT / row["source"]).read_text(encoding="utf-8").splitlines() if line.startswith("import ") and not line.startswith("import " + new_prefix)})
source_map["not_imported_note"] = "RationalDivisor/FactorialDivisibility.lean is an earlier API reference only; this package does not import or depend on that module."
dump("SOURCE_MAP.json", source_map)
dump("AUDIT_ROOTS.json", {"status": "UNCOMPILED_EXECUTABLE_AUDITS", "allowed_axioms": ["propext", "Classical.choice", "Quot.sound"], "typed_root_count": len(all_decls), "printed_definition_count": sum(d["kind"] == "def" for d in all_decls), "modules": module_rows, "public_roots": all_decls, "aggregate_audit": "Audit.lean", "aggregate_target": "lean/C2DirectDivisor/Audit.lean"})
print(json.dumps({"prepared": True, "modules": len(module_rows), "typed_roots": len(all_decls), "definitions_printed": sum(d["kind"] == "def" for d in all_decls), "lean_runs": 0}))
