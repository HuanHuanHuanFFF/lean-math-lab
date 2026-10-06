"""Prepared Linux-only replay; no production identity, metadata or wallet operations.

Uses the fixed official sandbox, plus a recorded minimal output/module adapter
for Frozen/Audit oleans, and the toolchain's genuine leanchecker. The named
independent review contract owns literal correspondence and axiom acceptance.
"""
from __future__ import annotations

from datetime import datetime, timezone
import hashlib
import importlib.util
import json
import math
import os
from pathlib import Path
import re
import resource
import shlex
import shutil
import subprocess
import sys
import urllib.request

BRANCH = "huan/b699-partial-plan-20261006-01a0e34b"
CONTRIBUTION = "be220ff2519ecfd61b28ba9e477321e4287ef6b4"
TASKS = "2a58149e6edb0f1dc15b32391f8c29fdd85e9db3"
DERIVED = "6a786f997e18e8f095762a2830d191b7e25e505e"
SANDBOX_SHA = "7709d1dc692a59b11da707187e1dae256862d1c10a2b9157dec36a724c9c1d34"
IMAGE = "debian:bookworm-slim@sha256:88200866dfff7ea7f5cbcb6ec7c8a701889efe6fe859fe64d6990e4b07ea4171"
SCRIPT = Path(__file__).resolve().parent
REPO = Path(sys.argv[1]).resolve()
REQUEST_PATH = Path(sys.argv[2]).resolve()
WORK = Path(sys.argv[3]).resolve()
EVIDENCE = Path(sys.argv[4]).resolve()
WORK.mkdir(parents=True, exist_ok=True)
EVIDENCE.mkdir(parents=True, exist_ok=True)
request = json.loads(REQUEST_PATH.read_text())
environment = os.environ.copy()
environment.update({"UV_CACHE_DIR": str(WORK / "cache/uv"),
                    "UV_PYTHON_INSTALL_DIR": str(WORK / "runtime/python"),
                    "UV_PROJECT_ENVIRONMENT": str(WORK / "runtime/contrib-venv"),
                    "UV_CONCURRENT_DOWNLOADS": "1", "UV_CONCURRENT_BUILDS": "1",
                    "UV_CONCURRENT_INSTALLS": "1", "TMPDIR": str(WORK / "tmp"),
                    "MATHLIB_CACHE_DIR": str(WORK / "cache/mathlib"),
                    "CONTRIB_LEAN_IMAGE": IMAGE})
Path(environment["TMPDIR"]).mkdir(parents=True, exist_ok=True)
stages: list[dict] = []
cg_spec = importlib.util.spec_from_file_location("cgroup_budget", SCRIPT / "cgroup-budget.py")
cg_budget = importlib.util.module_from_spec(cg_spec)
cg_spec.loader.exec_module(cg_budget)


def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        while chunk := stream.read(1024 * 1024):
            h.update(chunk)
    return h.hexdigest()


def bound(path: str, expected: str) -> Path:
    candidate = (REPO / path).resolve()
    if not candidate.is_relative_to(REPO) or not candidate.is_file() or candidate.is_symlink():
        raise RuntimeError(f"invalid repository input: {path}")
    if digest(candidate) != expected:
        raise RuntimeError(f"input hash changed: {path}")
    return candidate


def resources(label: str) -> dict:
    observation = {**cg_budget.observe(), "at": datetime.now(timezone.utc).isoformat(), "label": label,
                   "cpuAffinityCount": len(os.sched_getaffinity(0)),
                   "freeDiskBytes": shutil.disk_usage(WORK).free,
                   "relevantJobs": subprocess.check_output(
                       ["ps", "-eo", "pid,ppid,comm,rss"], text=True).splitlines()}
    (EVIDENCE / f"resource-{label}.json").write_text(json.dumps(observation, indent=2) + "\n")
    return observation


def run(label: str, command: list[str], cwd: Path = WORK, *, allow_failure: bool = False,
        trusted_bootstrap: bool = False) -> int:
    resources(label)
    log = EVIDENCE / f"{label}.log"
    start = datetime.now(timezone.utc)
    def restrict_bootstrap() -> None:
        # Trusted tool preparation only; proofs instead get Docker cgroup caps.
        resource.setrlimit(resource.RLIMIT_AS, (3 * 1024**3, 3 * 1024**3))
    with log.open("wb") as stream:
        result = subprocess.run(command, cwd=cwd, env=environment, stdout=stream,
                                stderr=subprocess.STDOUT, check=False,
                                preexec_fn=restrict_bootstrap if trusted_bootstrap else None)
    stages.append({"label": label, "command": command, "cwd": str(cwd),
                   "startedAt": start.isoformat(), "exitCode": result.returncode,
                   "log": log.name, "logSha256": digest(log),
                   "executedScriptSha256": {str(Path(arg)): digest(Path(arg)) for arg in command
                                             if arg.endswith(('.sh', '.py')) and Path(arg).is_file()}})
    (EVIDENCE / "STAGES.json").write_text(json.dumps(stages, indent=2) + "\n")
    print(json.dumps({"stage": label, "exitCode": result.returncode}), flush=True)
    if result.returncode and not allow_failure:
        raise RuntimeError(f"{label}: exit {result.returncode}; see artifact log")
    return result.returncode


def sandbox_adapter(base: str, module: str, output_dir: Path,
                    imports_dir: Path | None = None, checker: bool = False) -> Path:
    if not re.fullmatch(r"(?:Frozen|Audit)\.[A-Za-z_][A-Za-z0-9_]*", module):
        raise RuntimeError(f"unsafe module name: {module}")
    relative = module.replace(".", "/")
    target = f"/contribution/{relative}.lean"
    output_dir.mkdir(parents=True, exist_ok=True)
    (output_dir / relative).parent.mkdir(parents=True, exist_ok=True)
    text = base.replace("/contribution/Main.lean", target)
    mount = '  --mount "type=bind,src=$source_file,dst=' + target + ',readonly"'
    assert text.count(mount) == 1
    extra = '\n  --mount "type=bind,src=' + str(output_dir) + ',dst=/contrib-evidence' + (',readonly"' if checker else '"')
    text = text.replace(mount, mount + extra)
    resource_guard = SCRIPT / "container-resource-guard.sh"
    text = text.replace(mount, mount + '\n  --mount "type=bind,src=' + str(resource_guard) + ',dst=/contrib-resource/guard.sh,readonly"')
    if imports_dir is not None:
        text = text.replace(mount, mount + '\n  --mount "type=bind,src=' + str(imports_dir) + ',dst=/review-imports,readonly"')
    original = '  "$lean_binary" --json "--memory=$memory_mb" "--timeout=$heartbeats" \\\n  ' + target
    assert text.count(original) == 1
    if checker:
        text = text.replace('--env "LEAN_PATH=$lean_path"', '--env "LEAN_PATH=/contrib-evidence:$lean_path"')
        text = text.replace(original, '  "$(dirname "$lean_binary")/leanchecker" -v ' + module)
    else:
        if imports_dir is not None:
            text = text.replace('--env "LEAN_PATH=$lean_path"', '--env "LEAN_PATH=/review-imports:$lean_path"')
        text = text.replace(original, '  "$lean_binary" --json "--memory=$memory_mb" "--timeout=$heartbeats" --threads=1 --root=/contribution -o /contrib-evidence/' + relative + '.olean \\\n  ' + target)
    if checker and imports_dir is not None:
        text = text.replace('LEAN_PATH=/contrib-evidence:$lean_path', 'LEAN_PATH=/contrib-evidence:/review-imports:$lean_path')
    text = text.replace('  "$lean_binary" --json', '  /bin/sh /contrib-resource/guard.sh "$memory_mb" "$lean_binary" --json')
    text = text.replace('  "$(dirname "$lean_binary")/leanchecker"', '  /bin/sh /contrib-resource/guard.sh "$memory_mb" "$(dirname "$lean_binary")/leanchecker"')
    path = WORK / f"sandbox-{'checker' if checker else 'object'}-{module}.sh"
    path.write_text(text)
    path.chmod(0o700)
    shutil.copy2(path, EVIDENCE / path.name)
    (EVIDENCE / (path.name + ".diff")).write_text("".join(__import__("difflib").unified_diff(
        base.splitlines(True), text.splitlines(True), fromfile="official-pinned-sandbox", tofile=path.name)))
    return path


def preserve_objects(label: str, output: Path, source: Path, module: str) -> None:
    target = EVIDENCE / "objects" / label
    shutil.copytree(output, target, dirs_exist_ok=True)
    record = {"module": module, "sourcePath": str(source.relative_to(REPO)),
              "sourceSha256": digest(source), "sourceCommit": subprocess.check_output(
                  ["git", "-C", str(REPO), "rev-parse", "HEAD"], text=True).strip(),
              "objects": {str(path.relative_to(target)): digest(path) for path in target.rglob('*') if path.is_file()},
              "kernelReplayPending": True}
    (EVIDENCE / (label + "-OBJECT-BINDING.json")).write_text(json.dumps(record, indent=2) + "\n")


def main() -> None:
    if sys.platform != "linux" or os.environ.get("GITHUB_REF") != "refs/heads/" + BRANCH:
        raise RuntimeError("Linux and the explicitly authorized branch are required")
    if request.get("enabled") is not True or request.get("branch") != BRANCH:
        raise RuntimeError("verification request is disabled or branch mismatch")
    if request.get("fileTimeoutSeconds") != 900 or request.get("maxMemoryMiB") != 16384:
        raise RuntimeError("request must retain the 900-second / maximum-16GiB contract")
    artifact_dir = (REPO / request["artifactDirectory"]).resolve()
    if not artifact_dir.is_relative_to(REPO):
        raise RuntimeError("artifact directory outside checkout")
    bundle = bound(request["bundleSnapshotPath"], request["bundleSnapshotSha256"])
    contract_path = bound(request["auditContractPath"], request["auditContractSha256"])
    auditor = bound(request["axiomAuditorPath"], request["axiomAuditorSha256"])
    contract = json.loads(contract_path.read_text())
    groups = contract["groups"]
    raw_groups = [group for group in groups if "sourcePath" in group]
    raw_sources = [bound(group["sourcePath"], group["sourceSha256"]) for group in raw_groups]
    actual_sources = sorted(artifact_dir.glob("*.lean"))
    if len(raw_sources) != 7 or set(raw_sources) != set(actual_sources):
        raise RuntimeError("only the seven exact prepared artifacts may be checked")
    review_sources = {group["id"]: bound(group["auditPath"], group["auditSha256"]) for group in groups}
    baseline = subprocess.check_output(["git", "-C", str(REPO), "rev-parse", "HEAD"], text=True).strip()
    checkpoint = {"sourceCommit": baseline, "requestSha256": digest(REQUEST_PATH),
                  "bundleSnapshotSha256": digest(bundle), "auditContractSha256": digest(contract_path),
                  "axiomAuditorSha256": digest(auditor), "owner": contract["verifier"],
                  "contributionCommit": CONTRIBUTION, "taskPoolCommit": TASKS,
                  "productionSourceCommit": DERIVED, "fullConjectureSolved": False,
                  "productionIdentityRewardMetadataChecked": False, "groups": groups}
    (EVIDENCE / "INPUT-BINDING.json").write_text(json.dumps(checkpoint, indent=2) + "\n")
    before = resources("admission")
    if before["availableBudgetBytes"] < 2 * 1024**3 or before["freeDiskBytes"] < 14 * 1024**3:
        raise RuntimeError("insufficient measured resources even for serial preparation")
    spec = importlib.util.spec_from_file_location("source_bootstrap", SCRIPT / "bootstrap-platform.py")
    bootstrap = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(bootstrap)
    trusted = WORK / "contribution"
    bootstrap.checkout(trusted, "https://github.com/conjectures-io/conjectures-contribution.git", CONTRIBUTION)
    bootstrap.checkout(trusted / "conjectures", "https://github.com/conjectures-io/conjectures-tasks.git", TASKS)
    run("source-policy", [sys.executable, str(SCRIPT / "check-source-policy.py"), str(trusted),
                          str(EVIDENCE / "SOURCE-POLICY.json"), *map(str, raw_sources)])
    policy = json.loads((EVIDENCE / "SOURCE-POLICY.json").read_text())
    if not policy["selectedWithinHypotheticalBundleLimits"]:
        raise RuntimeError("selected source byte/count limits fail")
    if policy["reviewFindings"] and not request.get("sourceRuleReviewAcknowledged"):
        raise RuntimeError("official source-review findings need recorded acknowledgement before execution")
    run("fixed-fc-source", [sys.executable, str(SCRIPT / "bootstrap-platform.py"), str(WORK),
                            str(EVIDENCE / "FIXED-SOURCE.json")])
    fc = WORK / "formal-conjectures"
    asset = json.loads((SCRIPT / "LEAN-LINUX-ASSET-PIN.json").read_text())
    if (asset["name"], asset["assetId"], asset["sha256"], asset["bytes"], asset["url"]) != (
        "lean-4.33.1-linux.tar.zst", 523687465,
        "890afd185370f85666025b883914ab4f4b339136f8c96167b69cfb62aecaf235", 570405234,
        "https://github.com/leanprover/lean4/releases/download/v4.33.1/lean-4.33.1-linux.tar.zst"):
        raise RuntimeError("fixed official Linux asset pin drift")
    archive = WORK / asset["name"]
    with urllib.request.urlopen(asset["url"]) as response, archive.open("wb") as stream:
        shutil.copyfileobj(response, stream, 1024 * 1024)
    if archive.stat().st_size != asset["bytes"] or digest(archive) != asset["sha256"]:
        raise RuntimeError("official toolchain archive digest mismatch")
    (EVIDENCE / "TOOLCHAIN-ASSET.json").write_text(json.dumps(asset, indent=2) + "\n")
    run("toolchain-extract", ["tar", "--zstd", "-xf", str(archive), "-C", str(WORK)])
    toolchain = WORK / "lean-4.33.1-linux"
    environment["PATH"] = str(toolchain / "bin") + os.pathsep + environment["PATH"]
    compiler_version = subprocess.check_output([str(toolchain / "bin/lean"), "--version"], text=True).strip()
    if "version 4.33.1" not in compiler_version or "819816b2e0a3bf405af45ae5c7af2491d8f5bee6" not in compiler_version:
        raise RuntimeError("Lean version/source fingerprint mismatch")
    (EVIDENCE / "BINARIES.json").write_text(json.dumps({"version": compiler_version,
        "executables": {name: digest(toolchain / "bin" / name) for name in ("lean", "lake", "leanchecker", "leantar")}}, indent=2) + "\n")
    run("lake-fixed-environment", [str(toolchain / "bin/lake"), "env", "lean", "--version"], fc)
    manifest = json.loads((fc / "lake-manifest.json").read_text())
    actual_packages = []
    for package in manifest["packages"]:
        actual = subprocess.check_output(["git", "-C", str(fc / ".lake/packages" / package["name"]), "rev-parse", "HEAD"], text=True).strip()
        if actual != package["rev"]:
            raise RuntimeError("package pin mismatch")
        actual_packages.append({"name": package["name"], "rev": actual})
    (EVIDENCE / "PACKAGES.json").write_text(json.dumps(actual_packages, indent=2) + "\n")
    run("cache-tool-serial", [sys.executable, str(SCRIPT / "build-cache-interpreter.py"), str(fc),
                              str(toolchain), str(EVIDENCE / "CACHE-TOOL.json")], trusted_bootstrap=True)
    modules = sorted({match.group(1) for source in raw_sources for match in
                      re.finditer(r"^\s*import\s+([A-Za-z_][A-Za-z0-9_.]*)", source.read_text(), re.M)
                      if match.group(1).split(".")[0] not in {"Init", "Std", "Lean"}})
    if any(module in {"Mathlib", "Mathlib.Tactic"} or not module.startswith("Mathlib.") for module in modules):
        raise RuntimeError("this bounded replay expects focused Mathlib imports only")
    run("focused-cache-download", [str(toolchain / "bin/lake"), "env", "lean", "--memory=768", "--threads=1",
                                   "--run", str(SCRIPT / "FocusedCacheGet.lean"), *modules], fc, trusted_bootstrap=True)
    plan = WORK / "focused-extract.json"
    run("focused-cache-plan", [str(toolchain / "bin/lake"), "env", "lean", "--memory=768", "--threads=1",
                               "--run", str(SCRIPT / "CacheExtractPlan.lean"), str(plan), *modules], fc, trusted_bootstrap=True)
    run("focused-cache-extract", [sys.executable, str(SCRIPT / "extract-cache.py"),
                                  str(toolchain / "bin/leantar"), str(plan)], fc, trusted_bootstrap=True)
    environment["CONTRIB_LEAN_WORKSPACE"] = str(fc)
    run("official-workspace-validate", ["bash", str(trusted / "scripts/lean_workspace.sh"), DERIVED])
    run("official-cli-frozen", ["uv", "sync", "--project", str(trusted), "--frozen", "--no-dev",
                                "--no-editable", "--python", "3.11", "--managed-python",
                                "--no-build-package", "bittensor-core", "--no-build-package", "cryptography",
                                "--no-build-package", "cffi"])
    run("official-cli-version", ["uv", "run", "--project", str(trusted), "--frozen", "contrib", "--version"], trusted)
    (EVIDENCE / "CLI-BOUNDARY.json").write_text(json.dumps({"fixedCliLoads": True,
        "sourceRulesExecuted": ["C019", "C020", "C021"], "fullContribCheck": False,
        "productionIdentityRewardMetadataChecked": False, "walletOperations": False}, indent=2) + "\n")
    run("docker-image", ["docker", "pull", IMAGE])
    base = (trusted / "scripts/lean_sandbox.sh").read_text()
    if digest(trusted / "scripts/lean_sandbox.sh") != SANDBOX_SHA:
        raise RuntimeError("official sandbox source changed")
    object_imports = WORK / "review-objects"
    object_imports.mkdir()
    results = []
    for group in groups:
        measured = resources("before-" + group["id"])
        # Leave 1 GiB for the runner; retain <= the platform's 16 GiB ceiling.
        memory_mb = min(16384, math.floor((measured["availableBudgetBytes"] - 1024**3) / (256 * 1024**2)) * 256)
        if memory_mb < 1024:
            raise RuntimeError("no safe measured Docker proof budget")
        if "sourcePath" in group:
            source = bound(group["sourcePath"], group["sourceSha256"])
            output = WORK / ("raw-" + group["id"])
            adapter = sandbox_adapter(base, group["frozenModule"], output)
            run("raw-" + group["id"], ["bash", str(adapter), str(fc), str(source), "900", str(memory_mb), "400000"])
            preserve_objects("raw-" + group["id"], output, source, group["frozenModule"])
            run("kernel-raw-" + group["id"], ["bash", str(sandbox_adapter(base, group["frozenModule"], output, checker=True)),
                                              str(fc), str(source), "900", str(memory_mb), "400000"])
            shutil.copytree(output, object_imports, dirs_exist_ok=True)
        source = review_sources[group["id"]]
        output = WORK / ("audit-" + group["id"])
        adapter = sandbox_adapter(base, group["auditModule"], output, object_imports)
        run("literal-" + group["id"], ["bash", str(adapter), str(fc), str(source), "900", str(memory_mb), "400000"])
        preserve_objects("literal-" + group["id"], output, source, group["auditModule"])
        # Checker needs the raw/review import closure as well as its own object.
        checker = sandbox_adapter(base, group["auditModule"], output, object_imports, checker=True)
        run("kernel-literal-" + group["id"], ["bash", str(checker), str(fc), str(source), "900", str(memory_mb), "400000"])
        run("std3-" + group["id"], [sys.executable, str(auditor), "--contract", str(contract_path), "--group", group["id"],
                                   "--log", str(EVIDENCE / ("literal-" + group["id"] + ".log")),
                                   "--output", str(EVIDENCE / ("STD3-" + group["id"] + ".json"))])
        shutil.copytree(output, object_imports, dirs_exist_ok=True)
        results.append({"id": group["id"], "memoryMiB": memory_mb, "fileTimeoutSeconds": 900,
                        "literalSourceSha256": digest(source), "literalExpectedType": group.get("literalExpectedType"),
                        "objects": {str(path.relative_to(output)): digest(path) for path in output.rglob("*") if path.is_file()},
                        "producerPrintsUsedForAxiomAcceptance": False})
        (EVIDENCE / "RESULTS.json").write_text(json.dumps(results, indent=2) + "\n")
    (EVIDENCE / "SUCCESS.json").write_text(json.dumps({"groups": len(results), "completeOriginalProblem": False,
        "formalizedPartialSet": contract["expectedWholeSet"], "productionIdentityRewardMetadataChecked": False,
        "kernelReplay": "built-in leanchecker, same pinned Lean kernel; not an independent kernel implementation"}, indent=2) + "\n")


if __name__ == "__main__":
    try:
        main()
    except Exception as error:
        (EVIDENCE / "FAILURE.json").write_text(json.dumps({"error": str(error), "proofAccepted": False,
                                                          "stagesCompleted": len(stages)}, indent=2) + "\n")
        print(json.dumps({"status": "failed", "error": str(error)}), flush=True)
        sys.exit(1)
