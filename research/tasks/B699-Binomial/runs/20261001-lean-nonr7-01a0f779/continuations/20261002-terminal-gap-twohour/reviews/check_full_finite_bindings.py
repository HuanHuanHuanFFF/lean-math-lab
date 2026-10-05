"""Independent read-only ZIP verification; never invokes Lean or a checker."""
from __future__ import annotations
import hashlib
import json
import re
import sys
import time
import zipfile
from datetime import datetime, timezone
from pathlib import Path, PurePosixPath

ZIP = Path("D:/ResearchArtifacts/b699-finite-full-onehour/b699-full-onehour-37007287888.zip")
EXPECTED_ZIP_SHA = "65a3c64ff7d8ae45c7177ba8bd336a6f0e2993895e526e3663944df64b59eb6e"
TYPED_SHA = "e6fa2d44131a11a7002c496b17e1248e132ee7a39644252121e17fe23a66b2f7"
REPO = Path("D:/CodingProject/Math")
OUT = Path(__file__).with_name("FULL-FINITE-INDEPENDENT-ACCEPTED.json")
STD3 = {"propext", "Classical.choice", "Quot.sound"}
AX_PATTERN = re.compile(r"'([^']+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)", re.S)

def require(condition: bool, message: str) -> None:
    if not condition:
        raise RuntimeError(message)

def digest_stream(stream) -> str:
    digest = hashlib.sha256()
    for block in iter(lambda: stream.read(1024 * 1024), b""):
        digest.update(block)
    return digest.hexdigest()

def theorem_names(text: str) -> list[str]:
    stack, result = [], []
    for line in text.splitlines():
        line = line.strip()
        match = re.match(r"namespace\s+(\S+)", line)
        if match:
            stack.append(match[1])
            continue
        if re.match(r"(?:public )?section(?:\s|$)", line):
            stack.append("")
            continue
        if re.match(r"end(?:\s|$)", line):
            if stack:
                stack.pop()
            continue
        match = re.match(r"(?:(?:public|protected)\s+)?theorem\s+(\S+)", line)
        if match:
            result.append(".".join([part for part in stack if part] + [match[1]]))
    return result

def run() -> None:
    started = time.monotonic()
    with ZIP.open("rb") as stream:
        require(digest_stream(stream) == EXPECTED_ZIP_SHA, "ZIP SHA mismatch")
    with zipfile.ZipFile(ZIP) as archive:
        infos = archive.infolist()
        names = [entry.filename for entry in infos]
        require(len(names) == len(set(names)), "Duplicate ZIP names")
        require(all(not PurePosixPath(name).is_absolute() and ".." not in PurePosixPath(name).parts for name in names), "Unsafe ZIP path")
        def read_json(name: str):
            return json.loads(archive.read(name).decode("utf-8-sig"))
        def read_text(name: str) -> str:
            return archive.read(name).decode("utf-8-sig")
        manifest = read_json("byte-manifest.json")
        manifest_members = {item["path"]: item for item in manifest["members"]}
        require(set(names) == set(manifest_members) | {"byte-manifest.json"}, "ZIP member completeness mismatch")
        actual_sha = {}
        for name, member in manifest_members.items():
            require(archive.getinfo(name).file_size == member["bytes"], "ZIP member size mismatch: " + name)
            with archive.open(name) as stream:
                value = digest_stream(stream)
            require(value == member["sha256"], "ZIP member SHA mismatch: " + name)
            actual_sha[name] = value

        receipts = {name: read_json(name) for name in names if name.endswith("/receipt.json")}
        # Classify by the supplied fields, not a filename width or label prefix.
        compilers = {name: receipt for name, receipt in receipts.items() if receipt.get("mode") == "Lean" and "sourceSha256" in receipt and "objectParts" in receipt}
        require(len(compilers) >= 40, "Incomplete compiler receipt set")
        bindings, source_text = [], {}
        for name, receipt in sorted(compilers.items()):
            phase = name.rsplit("/", 1)[0]
            require(receipt["status"] == "success" and receipt["exitCode"] == 0 and receipt["sourceUnchanged"], "Compiler failure: " + phase)
            for filename, expected in (("source.lean", receipt["sourceSha256"]), ("stdout.log", receipt["stdoutSha256"]), ("stderr.log", receipt["stderrSha256"])):
                require(actual_sha[phase + "/" + filename] == expected, "Compiler raw/source binding: " + phase)
            parts = []
            for part in receipt["objectParts"]:
                prefix = "/evidence/"
                require(prefix in part["path"], "Object outside evidence path: " + phase)
                relative = part["path"].split(prefix, 1)[1]
                require(relative in actual_sha and actual_sha[relative] == part["sha256"], "Object part binding: " + relative)
                require(archive.getinfo(relative).file_size == part["bytes"], "Object part size binding")
                parts.append({"member": relative, "sha256": part["sha256"], "bytes": part["bytes"]})
            require(parts, "Missing object parts")
            source_text[phase] = read_text(phase + "/source.lean")
            bindings.append({"phase": phase, "sourceSha256": receipt["sourceSha256"], "objectSha256": receipt["objectSha256"], "parts": parts,
                             "arguments": receipt["arguments"], "exitCode": receipt["exitCode"], "startUtc": receipt["startUtc"], "endUtc": receipt["endUtc"], "wallSeconds": receipt["wallSeconds"],
                             "receiptSha256": actual_sha[name], "stdoutSha256": receipt["stdoutSha256"], "stderrSha256": receipt["stderrSha256"]})

        audit_records, all_actual = [], {}
        for name in sorted(name for name in names if name.endswith("/axiom-audit.json")):
            report = read_json(name)
            phase = name.rsplit("/", 1)[0]
            require(report["status"] == "accepted-standard-axioms", "Failed AX audit")
            raw = read_text(phase + "/stdout.log")
            seen = {}
            for match in AX_PATTERN.finditer(raw):
                root = match.group(1)
                axioms = [value.strip() for value in (match.group(2) or "").split(",") if value.strip()]
                require(root not in seen and len(axioms) == len(set(axioms)) and set(axioms) <= STD3, "Duplicate/forbidden AX: " + root)
                seen[root] = axioms
            require(set(report["roots"]) <= seen.keys(), "Missing declared AX roots")
            for root in report["roots"]:
                require(report["actualAxioms"][root] == seen[root], "Reported/raw AX mismatch")
            require(actual_sha[phase + "/stdout.log"] == report["stdoutSha256"], "Audit raw stdout binding")
            require(actual_sha[phase + "/source.lean"] == report["sourceSha256"], "Audit source binding")
            all_actual.update(seen)
            audit_records.append({"phase": phase, "rootCount": len(report["roots"]), "roots": report["roots"], "sourceSha256": report["sourceSha256"], "stdoutSha256": report["stdoutSha256"]})
        for phase, source in source_text.items():
            require(set(theorem_names(source)) <= all_actual.keys(), "Source theorem not covered by transitive AX: " + phase)

        checker_records = []
        for phase in ("probe128-checker", "full-chain-checker", "finite-original-checker"):
            receipt = receipts[phase + "/receipt.json"]
            require(receipt["status"] == "success" and receipt["exitCode"] == 0, "Checker failed")
            require(actual_sha[phase + "/stdout.log"] == receipt["stdoutSha256"] and actual_sha[phase + "/stderr.log"] == receipt["stderrSha256"], "Checker raw binding")
            checker_records.append({"phase": phase, "arguments": receipt["arguments"], "exitCode": 0, "startUtc": receipt["startUtc"], "endUtc": receipt["endUtc"], "wallSeconds": receipt["wallSeconds"], "receiptSha256": actual_sha[phase + "/receipt.json"]})

        full = read_json("full-chain-closed.json")["sourceMap"]
        selected = full["selected"]
        require(len(selected) == full["selectedCount"] == 4171 and selected[0] == 2 and selected[-1] == 20000093, "Full endpoints/count mismatch")
        require(all(0 < right-left <= 4883 for left, right in zip(selected, selected[1:])), "Full strict progress/gap mismatch")
        blocks = [item for item in full["outputs"] if "nodeCount" in item]
        require(len(blocks) == 33 and all(left["hi"] == right["lo"] for left, right in zip(blocks, blocks[1:])), "Block sharing mismatch")
        for output in full["outputs"]:
            matching = [phase for phase, text in source_text.items() if phase.startswith("full-") and not phase.endswith("-audit") and receipts[phase+"/receipt.json"]["source"].endswith(output["path"])]
            require(len(matching) == 1 and receipts[matching[0]+"/receipt.json"]["sourceSha256"] == output["sha256"], "Generated/full compiler map mismatch")

        typed = receipts["finite-final-01-FiniteSupplyOnlyTyped/receipt.json"]
        require(typed["sourceSha256"] == TYPED_SHA, "Wrong independently written literal source")
        literal = read_text("finite-final-01-FiniteSupplyOnlyTyped/stdout.log")
        final_roots = ["B699FiniteFullSemantic.full_chain_exact", "B699FiniteFullSemantic.full_finite_prime_supply_exact", "B699FiniteFullSemantic.full_finite_original_exact", "B699FiniteFull20261002.finite_supply", "B699FiniteFull20261002.finite_common"]
        require(set(final_roots) <= all_actual.keys(), "Missing final actual AX roots")
        result = {"utc": datetime.now(timezone.utc).isoformat(), "verifier": "semantic_verify_sol", "taskClass": "complex fixed semantic/dependency verification", "modelBrief": "gpt-6.1-sol/xhigh, unchanged task assignment",
                  "status": "accepted-full-finite-original", "run": "37007287888", "fixedSourceCommit": "fd7f7ec9d5c466596f7173f91b9cc34a3e1a9d83", "archive": str(ZIP), "archiveSha256": EXPECTED_ZIP_SHA,
                  "archiveMemberCount": len(names), "independentlyBoundManifestMembers": len(actual_sha), "compileBindings": bindings, "axiomAudits": audit_records, "actualAxioms": all_actual, "normalCheckers": checker_records,
                  "actualLiteralOutput": literal, "literalSourceSha256": TYPED_SHA, "selectedNodeCount": len(selected), "blockCount": len(blocks), "maxSelectedGap": max(right-left for left,right in zip(selected, selected[1:])),
                  "acceptedPrimeSupply": "all Nat n,2<=n<=20000000 -> exists actual Nat.Prime p<=n and strict n<p+4883", "acceptedOriginalScope": "all Nat n/i/j,4883<=i,i<j<=n/2,n<=20000000 -> exists same actual Nat.Prime p>=i dividing both full n.choose i and n.choose j",
                  "extraMathematicalInputs": [], "globalFiniteInputDischarged": True, "infiniteGapDischarged": False, "onlyGapTerminalAccepted": False, "complete4883_4884Accepted": False, "newCompleteOriginalIndexIncrement": 0,
                  "checkerMeaning": "normal replay by the same fixed Lean kernel, imported environments trusted, not a second independent implementation", "noKernelRerun": True, "verificationScriptSha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(), "seconds": time.monotonic()-started}
        OUT.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
        print(json.dumps({"status": result["status"], "compileReceipts": len(bindings), "AXprintCount": sum(item["rootCount"] for item in audit_records), "uniqueAXroots": len(all_actual), "manifestMembers": len(actual_sha), "nodes": len(selected), "blocks": len(blocks), "seconds": result["seconds"], "output": str(OUT)}, ensure_ascii=False))

if __name__ == "__main__":
    try:
        run()
    except Exception as exc:
        print(json.dumps({"status": "refused-or-pending", "error": str(exc)}, ensure_ascii=False), file=sys.stderr)
        raise
