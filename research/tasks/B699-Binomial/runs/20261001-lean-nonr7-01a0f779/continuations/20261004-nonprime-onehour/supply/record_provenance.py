"""Administrative byte provenance and static candidate inventory only."""
from datetime import datetime, timezone
from pathlib import Path
import ast
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[7]
RUN = "research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779"


def record(path):
    raw = path.read_bytes()
    return {"path": path.relative_to(ROOT).as_posix(), "bytes": len(raw),
            "sha256": hashlib.sha256(raw).hexdigest()}


def main():
    candidates = []
    for path in sorted(HERE.glob("*.lean")):
        raw = path.read_text()
        if re.search(r"\b(sorry|sorryAx|admit)\b|^\s*axiom\s", raw, re.M):
            raise ValueError("Placeholder in candidate source")
        candidates.append({**record(path),
                           "auditRoots": re.findall(r"^#print axioms (\S+)", raw, re.M),
                           "imports": re.findall(r"^(?:public )?import (\S+)", raw, re.M),
                           "moduleMode": "modern" if raw.startswith("module\n") else "legacy",
                           "runtimeStatus": "not-run-not-accepted"})
    scripts = []
    for path in sorted(HERE.glob("*.py")):
        ast.parse(path.read_text())
        scripts.append(record(path))
    fixed_paths = [
        "continuations/20261002-finite-onehour/finite/ChainCore.lean",
        "continuations/20261002-finite-full-onehour/finite/ChainTerminal.lean",
        "continuations/20261002-finite-full-onehour/finite/FiniteSupplyOnly.lean",
        "continuations/20261002-terminal-gap-twohour/terminal/FiniteConsumerLegacy.lean",
        "continuations/20261003-terminal-fortymin/reviews/TERMINAL-ORIGINAL-INDEPENDENT-ACCEPTED.json",
        "continuations/20261002-terminal-gap-twohour/reviews/FULL-FINITE-INDEPENDENT-ACCEPTED.json",
    ]
    dependencies = [record(ROOT / RUN / path) for path in fixed_paths]
    payload = {
        "utc": datetime.now(timezone.utc).isoformat(),
        "owner": "/root/nonprime_next_consumer_20261004",
        "classification": "complex implementation preparation from established route",
        "model": "gpt-6.1-sol", "reasoningEffort": "xhigh",
        "sourceBaseline": "0315fa513e889c528ec756b490d9e632190a4b56",
        "status": "source-ready-only-no-Lean-execution",
        "adoptedOldProvider": {
            "canonicalModule": "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-full-onehour».finite.generated.CompleteChain",
            "actualDeclaration": "B699FiniteFull20261002.complete_chain : B699Finite20261002.PrimeChain 4883 2 20000093",
            "fixedSourceCommit": "be6b2df9b58b4f732564dc882945ec5415c81f1a", "runId": 37037647747,
            "archivePath": "D:/ResearchArtifacts/b699-terminal-fortymin/b699-main-37037647747.zip",
            "archiveSha256": "29a3d9f21851cfa9c7b61ee05f601e81303d71732f202fae3d69a1b65e78da13",
            "sourceMember": "accepted-full-33-CompleteChain/source.lean",
            "sourceBytes": 10325,
            "sourceSha256": "168c467c0451124b3fdba313a27cf274ac3cf5ab7b542d78d9a91e0e66546acc",
            "objectSha256": "1d8eed88e0fab431d2b8bdad372f0d5efe55b1421afe625287364ce7975247f6",
            "legacyConsumerSourceSha256": "4638d82f1abf9c2ceedfbf3134d2e752bdca21f140fba22829f36848fb81fa1e",
            "legacyConsumerObjectSha256": "c2e894bac2d3b81c2d360a4b7ebaae7f9bc19a84e1c98a47e654b2d6dc0c31dc",
            "typeSourceObjectRawVerifier": "/root/nonprime_source_review_20261004",
            "bindingNature": "same-source old accepted evidence reused; no new kernel acceptance",
        },
        "fixedDependencies": dependencies, "candidateSources": candidates,
        "preparationScripts": scripts,
        "staticChecks": {"PythonAST": True, "LeanPlaceholderAbsence": True,
                         "acceptanceEffect": "none"},
        "smallCandidate": json.loads((HERE / "tail-candidate.json").read_text()),
        "largerCandidate": json.loads((HERE / "tail5000-candidate.json").read_text()),
        "currentOriginalCompleteUpperAtTaskStart": 4884,
        "remainingUnboundedParameters": ["i>K", "n and j in low ratio 2<=n/i<4096", "y for true infinite Gap"],
        "requiredAcceptance": ["C fresh compile and actual literal statements", "transitive standard-three axiom audit",
                               "normal leanchecker", "S fixed source/objectparts/pins/raw/statement independent binding"],
        "executionGate": "C only after Leader confirms all three initial steps independently accepted",
    }
    (HERE / "source-provenance.json").write_text(json.dumps(payload, ensure_ascii=False, indent=2)+"\n", encoding="utf-8")
    print(json.dumps({"candidateSourceCount": len(candidates),
                      "candidateSourceBytes": sum(s["bytes"] for s in candidates),
                      "candidateAuditRootCount": sum(len(s["auditRoots"]) for s in candidates),
                      "staticChecks": payload["staticChecks"], "status": payload["status"]}))


if __name__ == "__main__":
    main()
