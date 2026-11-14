"""Create reviewer type adapters after strict hash checks; never invoke Lean.

Frozen imports are internal verification only, never contribution artifacts.
"""
import argparse
import hashlib
import json
from pathlib import Path


def digest(raw):
    return hashlib.sha256(raw).hexdigest()


parser = argparse.ArgumentParser()
parser.add_argument("--repo", type=Path, required=True)
parser.add_argument("--candidate-plan", type=Path,
                    help="Explicit independently reviewed seven-source plan; verify all bytes before adopting")
args = parser.parse_args()
repo = args.repo.resolve()
pub = repo / "research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/publications/20261006-contribution30000"
reviews = pub / "reviews"
(reviews / "literals").mkdir(exist_ok=True)
manifests = [pub / "implementation/v2/FIRST-COMPILE-SNAPSHOT.json",
             pub / "implementation/range-tail/FROZEN-DELIVERY-STRUCTURAL.json"]
records, bindings = {}, []
for manifest in manifests:
    raw = manifest.read_bytes()
    data = json.loads(raw)
    bindings.append({"path": manifest.relative_to(repo).as_posix(), "sha256": digest(raw)})
    for item in data.get("artifacts", data.get("artifactFiles", [])):
        source = repo / item["path"]
        raw = source.read_bytes()
        if len(raw) != item["bytes"] or digest(raw) != item["sha256"]:
            raise SystemExit(f"frozen source changed: {source}")
        records[source.stem] = item

# Adopt a specifically frozen, source-aligned A151 repair without overwriting
# the historical V2 snapshot or the CI6 small12 acceptance contract.
repair_path = pub / "implementation/repairs/20261006-ci6-a151/FREEZE.json"
if repair_path.exists():
    repair_raw = repair_path.read_bytes()
    repair = json.loads(repair_raw)
    item = repair["newArtifact"]
    raw = (repo / item["path"]).read_bytes()
    if len(raw) != item["bytes"] or digest(raw) != item["sha256"]:
        raise SystemExit("fixed A151 repair source changed")
    records["A151Packed"] = item
    bindings.append({"path": repair_path.relative_to(repo).as_posix(), "sha256": digest(repair_raw)})

# A new source version never inherits historical acceptance. This explicit plan
# only selects source bytes and public roots for fresh literal/kernel/AX checks.
candidate_modules = {}
if args.candidate_plan is not None:
    candidate_path = args.candidate_plan.resolve()
    candidate_raw = candidate_path.read_bytes()
    candidate = json.loads(candidate_raw)
    expected_ids = {"SmallIndices", "A151Packed", "I11AboveFinalCandidate",
                    "I11BelowFinalCandidate", "Middle185_322", "Middle323_999", "High1000_30000"}
    entries = candidate["candidates"]
    if len(entries) != 7 or {entry["id"] for entry in entries} != expected_ids:
        raise SystemExit("candidate plan must retain all seven intended consumers")
    if candidate["expectedS"] != "{1,2,11,29}union[35,30000]" or candidate["wholeSAccepted"] is not False:
        raise SystemExit("candidate scope or pending acceptance status changed")
    if sum(entry["sourceBytes"] for entry in entries) != candidate["sourceBytes"]:
        raise SystemExit("candidate source byte total changed")
    for entry in entries:
        source = repo / entry["producerPath"]
        raw = source.read_bytes()
        if len(raw) != entry["sourceBytes"] or digest(raw) != entry["sourceSha256"]:
            raise SystemExit(f"reviewed candidate source changed: {source}")
        if not entry["publicRoots"] or any(not root.startswith("Contribution.") for root in entry["publicRoots"]):
            raise SystemExit("candidate public root must stay in Contribution namespace")
        records[entry["id"]] = {"path": entry["producerPath"], "bytes": entry["sourceBytes"],
                                  "sha256": entry["sourceSha256"], "publicRoots": entry["publicRoots"]}
        if entry["artifactStem"] in candidate_modules:
            raise SystemExit("duplicate artifact module in candidate plan")
        candidate_modules[entry["artifactStem"]] = entry["id"]
    bindings.append({"path": candidate_path.relative_to(repo).as_posix(), "sha256": digest(candidate_raw)})

# Compile the final intended lower-case artifact module names. Keep the exact
# producer path as provenance, and reject any byte difference in the copy.
bundle_path = pub / "BUNDLE-SNAPSHOT.json"
bundle_raw = bundle_path.read_bytes()
bundle = json.loads(bundle_raw)
bindings.append({"path": bundle_path.relative_to(repo).as_posix(), "sha256": digest(bundle_raw)})
for bundled in bundle["artifacts"]:
    producer_stem = Path(bundled["sourcePath"]).stem
    artifact_stem = Path(bundled["artifactPath"]).stem
    item = records[candidate_modules[artifact_stem] if candidate_modules else producer_stem]
    artifact = repo / bundled["artifactPath"]
    raw = artifact.read_bytes()
    if (len(raw) != item["bytes"] or digest(raw) != item["sha256"] or
            digest(raw) != bundled["sha256"] or len(raw) != bundled["bytes"]):
        raise SystemExit(f"artifact differs from fixed producer: {artifact}")
    item["producerPath"] = item["path"]
    item["path"] = bundled["artifactPath"]

specs = [
    ("SmallIndices", "n i j", "1 ≤ i → i ≤ 2 →", "hi hu", "i", False),
    ("A151Packed", "n i j", "(i = 29 ∨ (35 ≤ i ∧ i ≤ 184)) →", "hs", "i", False),
    ("I11AboveFinalCandidate", "n j", "(2 : _root_.Nat) ^ 15360 ≤ n →", "hn", "11", False),
    ("I11BelowFinalCandidate", "n j", "n < (2 : _root_.Nat) ^ 15360 →", "hn", "11", False),
    ("Middle185_322", "n i j", "185 ≤ i → i ≤ 322 →", "hi hu", "i", True),
    ("Middle323_999", "n i j", "323 ≤ i → i ≤ 999 →", "hi hu", "i", True),
    ("High1000_30000", "n i j", "1000 ≤ i → i ≤ 30000 →", "hi hu", "i", False),
]
groups = []
for stem, variables, hypotheses, hypothesis_names, index, is_gcd in specs:
    item = records[stem]
    roots = item.get("publicRoots", [item.get("root")])
    prefix = f"∀ ({variables} : _root_.Nat), {hypotheses} {index} < j → j ≤ n / 2 → "
    witness = f"∃ p : _root_.Nat, _root_.Nat.Prime p ∧ {index} ≤ p ∧ "
    paired = witness + f"p ∣ _root_.Nat.choose n {index} ∧ p ∣ _root_.Nat.choose n j"
    gcd = witness + f"p ∣ _root_.Nat.gcd (_root_.Nat.choose n {index}) (_root_.Nat.choose n j)"
    namespace = "Contribution.B699Independent." + stem
    module_stem = Path(item["path"]).stem
    text = (f"import Frozen.{module_stem}\n\nnamespace {namespace}\n"
            "set_option autoImplicit false\nset_option relaxedAutoImplicit false\n"
            "set_option maxHeartbeats 1000000\n\n")
    own = []
    if is_gcd:
        text += (f"theorem gcd_exact : {prefix}{gcd} := by\n"
                 f"  intro {variables} {hypothesis_names} hij hjn\n"
                 f"  exact _root_.{roots[0]} {hypothesis_names} hij hjn\n\n"
                 f"theorem paired_exact : {prefix}{paired} := by\n"
                 f"  intro {variables} {hypothesis_names} hij hjn\n"
                 f"  rcases gcd_exact {variables} {hypothesis_names} hij hjn with ⟨p, hp, hip, hg⟩\n"
                 "  exact ⟨p, hp, hip, _root_.dvd_trans hg (_root_.Nat.gcd_dvd_left _ _),\n"
                 "    _root_.dvd_trans hg (_root_.Nat.gcd_dvd_right _ _)⟩\n")
        own.append(namespace + ".gcd_exact")
    else:
        text += (f"theorem paired_exact : {prefix}{paired} := by\n"
                 f"  intro {variables} {hypothesis_names} hij hjn\n"
                 f"  exact _root_.{roots[0]} {hypothesis_names} hij hjn\n")
    own.append(namespace + ".paired_exact")
    expected = roots + own
    text += f"\nend {namespace}\n\n" + "".join(f"#print axioms {name}\n" for name in expected)
    out = reviews / "literals" / (stem + ".lean")
    out.write_bytes(text.encode("utf-8"))
    groups.append({"id": stem, "sourcePath": item["path"], "sourceSha256": item["sha256"],
                   "producerPath": item["producerPath"], "sourceBytes": item["bytes"],
                   "frozenModule": "Frozen." + module_stem,
                   "auditModule": "Audit." + stem, "auditPath": out.relative_to(repo).as_posix(),
                   "auditSha256": digest(out.read_bytes()), "literalExpectedType": prefix + paired,
                   "expectedAxiomDeclarations": expected, "status": "source-ready-not-compiled"})

out = reviews / "FullCoverageExact.lean"
groups.append({"id": "FullCoverageExact", "auditModule": "Audit.FullCoverageExact",
               "auditPath": out.relative_to(repo).as_posix(), "auditSha256": digest(out.read_bytes()),
               "expectedAxiomDeclarations": ["Contribution.B699Independent.FullCoverage.i11_all",
                                              "Contribution.B699Independent.FullCoverage.all_S"],
               "verificationOnlyNotAnArtifact": True, "status": "source-ready-not-compiled"})
contract = {"verifier": "/root/b699_contribution_scope", "status": "independent-source-preflight-only",
            "proofAccepted": False, "expectedWholeSet": "{1,2,11,29} union [35,30000]",
            "coveredIndexCount": 29970, "actualRootNatPrimeAndChoose": True,
            "officialPolicyCommit": "be220ff2519ecfd61b28ba9e477321e4287ef6b4",
            "taskPoolCommit": "2a58149e6edb0f1dc15b32391f8c29fdd85e9db3",
            "productionSourceCommit": "6a786f997e18e8f095762a2830d191b7e25e505e",
            "sourceTypeSha256": "f5eee958e682d353b94818dd365b7f9a090f1cb6d7361dfe754876412168b217",
            "sourceTypeHashRecomputedThisReview": False,
            "allowedAxioms": ["propext", "Classical.choice", "Quot.sound"],
            "manifestBindings": bindings, "groups": groups,
            "rawCandidateBytes": sum(item["bytes"] for item in records.values()),
            "adapterImportScope": "internal fixed Frozen/Audit objects; not external artifacts"}
(reviews / "AUDIT-CONTRACT.json").write_text(json.dumps(contract, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
print(json.dumps({"groups": len(groups), "rawCandidateBytes": contract["rawCandidateBytes"], "proofAccepted": False}))
