"""Run the official unmodified C019/C020/C021 rules without wallet dependencies.

This source-only entry is not `contrib check`: identity, reward, signatures,
target metadata, lineage and changeset checks are deliberately not claimed.
"""
from __future__ import annotations

import hashlib
import importlib
import json
from pathlib import Path
import sys
from types import ModuleType, SimpleNamespace

root = Path(sys.argv[1]).resolve()
output = Path(sys.argv[2]).resolve()
sources = [Path(value).resolve() for value in sys.argv[3:]]
sys.dont_write_bytecode = True
sys.path.insert(0, str(root / "src"))
# Load only the official source-check module. Importing checks/__init__.py would
# also require the Windows-unavailable locked bittensor-core reward module.
package_name = "conjectures_contribution.checks"
package = ModuleType(package_name)
package.__path__ = [str(root / "src/conjectures_contribution/checks")]
sys.modules[package_name] = package
checks = importlib.import_module(package_name + ".lean")
model = importlib.import_module("conjectures_contribution.model")

records = []
for source in sources:
    data = source.read_bytes()
    findings = []
    if len(data) > model.MAX_ARTIFACT_BYTES:
        findings.append({"check_id": "C009", "severity": "error",
                         "message": f"{len(data)} bytes exceeds {model.MAX_ARTIFACT_BYTES}"})
    try:
        data.decode("utf-8")
    except UnicodeDecodeError:
        findings.append({"check_id": "C014", "severity": "error", "message": "not UTF-8"})
    for condition, message in ((data.startswith(b"\xef\xbb\xbf"), "UTF-8 BOM"),
                               (b"\r" in data, "CR byte; use LF"),
                               (not data.endswith(b"\n"), "missing final newline")):
        if condition:
            findings.append({"check_id": "text-format", "severity": "error", "message": message})
    contribution = SimpleNamespace(payload=SimpleNamespace(artifacts=[SimpleNamespace(name=source.name)]))
    context = SimpleNamespace(directory=source.parent, contribution=contribution)
    for check in (checks.lean_constructs, checks.lean_imports):
        findings.extend(finding.to_json() for finding in check(context))
    records.append({"path": str(source), "bytes": len(data),
                    "sha256": hashlib.sha256(data).hexdigest(), "findings": findings})

# C021 also checks repeated fully qualified declarations across selected files.
# Absolute file names are adapter inputs, not validated contribution metadata.
selected = SimpleNamespace(payload=SimpleNamespace(artifacts=[SimpleNamespace(name=str(source))
                                                             for source in sources]))
context = SimpleNamespace(directory=Path.cwd(), contribution=selected)
by_path = {record["path"]: record for record in records}
for finding in checks.lean_declarations(context):
    by_path[finding.path]["findings"].append(finding.to_json())

limits = {"maxArtifactBytes": model.MAX_ARTIFACT_BYTES,
          "maxTotalBytes": model.MAX_TOTAL_BYTES, "maxArtifacts": model.MAX_ARTIFACTS}
total = sum(record["bytes"] for record in records)
errors = sum(finding["severity"] == "error" for record in records for finding in record["findings"])
reviews = sum(finding["severity"] == "review" for record in records for finding in record["findings"])
module_files = [root / "src/conjectures_contribution" / value for value in
                ("lean.py", "model.py", "checks/lean.py", "checks/base.py", "checks/registry.py")]
report = {"scope": "source-only: official C019/C020/C021 plus byte/text preflight",
          "fullContribCheck": False, "metadataSignatureRewardTargetLineageChecked": False,
          "crossFileDuplicateDeclarationsChecked": True,
          "limits": limits, "sourceFiles": records, "selectedBytes": total,
          "selectedWithinHypotheticalBundleLimits": total <= model.MAX_TOTAL_BYTES and len(records) <= model.MAX_ARTIFACTS,
          "errors": errors, "reviewFindings": reviews,
          "officialCheckerSourceHashes": {str(path.relative_to(root)): hashlib.sha256(path.read_bytes()).hexdigest()
                                          for path in module_files}}
output.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
print(json.dumps({"sourceFiles": len(records), "bytes": total, "errors": errors, "reviews": reviews,
                  "fullContribCheck": False, "report": str(output)}))
sys.exit(1 if errors else 0)
