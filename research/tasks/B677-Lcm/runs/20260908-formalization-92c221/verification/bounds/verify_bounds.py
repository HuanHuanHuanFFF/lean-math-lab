#!/usr/bin/env python3
"""Rebuild the exact B677 elementary consumer closure into fresh project objects.

Pinned package objects may be cached. Every project source in the actual
import closure is checked by the repository policy and rebuilt from source.
The B686 imports are intentional, documented cross-problem reuse. No old
project olean search path is exposed. Evidence is always a new directory.
"""
from __future__ import annotations

import importlib.util
import json
import os
from pathlib import Path
import sys
from datetime import datetime, timezone


def main() -> int:
    repo = next(p for p in Path(__file__).resolve().parents if (p / "lake-manifest.json").is_file())
    helper_path = repo / "scripts/verify-research-runs.py"
    spec = importlib.util.spec_from_file_location("b677_verification_helpers", helper_path)
    assert spec and spec.loader
    helpers = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = helpers
    spec.loader.exec_module(helpers)
    stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
    output = Path(__file__).resolve().parent / stamp
    output.mkdir(exist_ok=False)
    _, objects, _ = helpers.allocate_build(repo, "b677-bounds-" + stamp)
    report = {"success": False, "started_utc": helpers.utc_now(), "output": str(output),
              "objects": str(objects), "fresh_project_objects": True,
              "helper_sha256": helpers.sha256(helper_path), "compile_records": []}
    env = dict(os.environ)
    env["ELAN_HOME"] = str(repo / ".tools/elan")
    env["PATH"] = str(repo / ".tools/elan/bin") + os.pathsep + env.get("PATH", "")
    env["LEAN_PATH"] = str(objects)
    report["lean_path"] = [str(objects)]
    run = repo / "research/tasks/B677-Lcm/runs/20260908-formalization-92c221"
    roots = [run / "lean/bounds/ElementaryBounds.lean"]
    consumer = run / "lean/bounds/Consumer.lean"
    if consumer.is_file():
        roots.append(consumer)
    report["roots"] = [str(p.relative_to(repo)) for p in roots]
    try:
        report["linked_package_objects"] = helpers.overlay_package_objects(repo, objects)
        manifest = helpers.load_manifest(repo)
        report["manifest_sha256"] = helpers.sha256(repo / "lake-manifest.json")
        report["pins"] = helpers.package_pin_records(repo, manifest)
        if not all(p.get("matches_pin") for p in report["pins"]):
            raise RuntimeError("Pinned package source HEAD mismatch")
        report["toolchain"] = helpers.ensure_toolchain(repo, output, env)
        ordered = []
        seen = set()
        imports = {}

        def visit(source: Path) -> None:
            source = source.resolve()
            if source in seen:
                return
            seen.add(source)
            if not source.is_file():
                raise RuntimeError(f"Project import source absent: {source}")
            relative = source.relative_to(repo)
            if "external" in relative.parts or "archive" in relative.parts:
                raise RuntimeError(f"Unaccepted research import: {relative}")
            modules = helpers.imports_in(source)
            imports[source] = modules
            for module in modules:
                if not helpers.is_package_import(module):
                    visit(repo.joinpath(*module.split(".")).with_suffix(".lean"))
            ordered.append(helpers.SourceRef(source, helpers.module_name_for_path(source, repo)))

        for root in roots:
            visit(root)
        report["project_closure"] = [str(ref.path.relative_to(repo)) for ref in ordered]
        report["source_sha256_before"] = {str(ref.path.relative_to(repo)): helpers.sha256(ref.path)
                                          for ref in ordered}
        policy = helpers.load_policy(repo)
        report["source_policy"] = helpers.policy_check(
            [ref.path for ref in ordered], repo=repo, output=output,
            policy_mask=policy["mask_comments_and_strings"])
        if report["source_policy"]["exit_code"]:
            raise RuntimeError("Exact-closure source policy failed")
        report["root_audits"] = []
        for root in roots:
            text = root.read_text(encoding="utf-8")
            count = len(helpers.PRINT_AXIOMS_RE.findall(text))
            if count == 0:
                raise RuntimeError(f"Missing executable axiom guards: {root}")
            report["root_audits"].append(helpers.audit_root_source(
                root, count, policy_mask=policy["mask_comments_and_strings"]))
        packages = sorted({module for modules in imports.values() for module in modules
                           if helpers.is_package_import(module)})
        report["package_rebuilds"] = helpers.rebuild_missing_package_objects(
            packages, repo=repo, olean_root=objects, output=output, env=env)
        for i, ref in enumerate(ordered):
            print(f"compile {i + 1}/{len(ordered)}: {ref.path.relative_to(repo)}", flush=True)
            record = helpers.compile_source(ref, ordinal=i, repo=repo, olean_root=objects,
                                            output=output, env=env, imports=imports[ref.path])
            report["compile_records"].append(record)
        report["source_sha256_after"] = {str(ref.path.relative_to(repo)): helpers.sha256(ref.path)
                                         for ref in ordered}
        if report["source_sha256_before"] != report["source_sha256_after"]:
            raise RuntimeError("Project source changed during dependency-closure rebuild")
        report["success"] = True
    except Exception as exc:
        report["failure"] = str(exc)
        print(f"FAILED: {exc}", flush=True)
    finally:
        report["finished_utc"] = helpers.utc_now()
        (output / "evidence.json").write_text(json.dumps(report, indent=2, ensure_ascii=False) + "\n",
                                             encoding="utf-8")
        print(f"Evidence: {output}", flush=True)
        print(f"LEAN_PATH: {objects}", flush=True)
    return 0 if report["success"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
