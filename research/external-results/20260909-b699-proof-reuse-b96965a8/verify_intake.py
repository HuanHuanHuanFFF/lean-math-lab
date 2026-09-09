#!/usr/bin/env python3
"""Check this frozen intake's bytes, source trees, scope and edited navigation.

This is an integration check, not a Lean build or a mathematical certificate
checker. Run at the intake revision; later intentional changes need new evidence.
"""
from pathlib import Path
import hashlib
import json
import re
import subprocess
import zipfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]


def digest(data):
    return hashlib.sha256(data).hexdigest()


def tree_files(commit, path=None):
    cmd = ["git", "ls-tree", "-rz", commit]
    if path:
        cmd += ["--", path]
    result = {}
    for row in subprocess.check_output(cmd, cwd=ROOT).split(b"\0"):
        if not row:
            continue
        metadata, name = row.split(b"\t", 1)
        mode, kind, sha = metadata.decode().split()
        if kind == "blob":
            result[name.decode()] = (mode, sha)
    return result


def matches_blob(path, sha):
    data = (ROOT / path).read_bytes()
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == sha


def main():
    manifest = json.loads((HERE / "manifest.json").read_text())
    checked = {}
    for category in ("originals", "extracted_members", "prior_review_snapshots"):
        for row in manifest[category]:
            assert digest((ROOT / row["path"]).read_bytes()) == row["sha256"], row["path"]
        checked[category] = len(manifest[category])
    archive_path = next(ROOT / row["path"] for row in manifest["originals"] if row["path"].endswith(".zip"))
    with zipfile.ZipFile(archive_path) as archive:
        actual = {info.filename for info in archive.infolist() if not info.is_dir()}
        expected = {row["zip_member"] for row in manifest["extracted_members"]}
        assert actual == expected
        for row in manifest["extracted_members"]:
            assert archive.read(row["zip_member"]) == (ROOT / row["path"]).read_bytes()
        source_manifest = archive.read("b699-new-math/MANIFEST.sha256").decode()
        source_count = 0
        for line in source_manifest.splitlines():
            if not line.strip():
                continue
            sha, member = line.split(maxsplit=1)
            member = member.lstrip("*")
            name = member if member.startswith("b699-new-math/") else "b699-new-math/" + member
            assert digest(archive.read(name)) == sha, name
            source_count += 1
        checked["original_manifest_entries"] = source_count
    completed = []
    for delivery in manifest["completed_deliveries"]:
        files = tree_files(delivery["commit"], delivery["path"])
        assert files
        for path, (_, sha) in files.items():
            assert matches_blob(path, sha), path
        completed.append({**delivery, "unchanged_files": len(files)})
    edited_indices = {"research/tasks/B699-Binomial/README.md", "research/external-results/README.md"}
    old_files = tree_files(manifest["base_main"])
    for path, (_, sha) in old_files.items():
        if path not in edited_indices:
            assert matches_blob(path, sha), path
    allowed_prefixes = [delivery["path"] + "/" for delivery in manifest["completed_deliveries"]] + [
        str(HERE.relative_to(ROOT)) + "/",
        "research/tasks/B699-Binomial/runs/20260909-middle-index-b96965a8/",
        "research/tasks/B699-Binomial/runs/20260909-proof-reuse-survey-0621d239/",
    ]
    changed = set(subprocess.check_output(["git", "diff", "--name-only", manifest["base_main"]], cwd=ROOT, text=True).splitlines())
    changed.update(subprocess.check_output(["git", "ls-files", "--others", "--exclude-standard"], cwd=ROOT, text=True).splitlines())
    assert all(path in edited_indices or any(path.startswith(prefix) for prefix in allowed_prefixes) for path in changed)
    docs = [ROOT / path for path in edited_indices] + [HERE / "README.md"]
    for name in ("20260909-middle-index-b96965a8", "20260909-proof-reuse-survey-0621d239"):
        for filename in ("README.md", "frontier.md"):
            docs.append(ROOT / "research/tasks/B699-Binomial/runs" / name / filename)
    links = 0
    for doc in docs:
        for target in re.findall(r"\]\(([^)]+)\)", doc.read_text()):
            if target.startswith(("https://", "http://", "#", "mailto:")):
                continue
            local = (doc.parent / target.split("#", 1)[0]).resolve()
            if local == HERE / "integration-checks.json":
                continue  # This check writes its own result after all assertions.
            assert local.exists(), (str(doc), target)
            links += 1
    record = {
        "status": "PASS", "base_main": manifest["base_main"],
        "checked": checked, "completed_deliveries": completed,
        "base_files_preserved_except_two_indices": len(old_files) - len(edited_indices),
        "edited_document_links_checked": links,
        "changed_or_new_paths_in_scope": len(changed),
        "lean_run": False, "mathematical_recomputation": False,
        "acceptance": "Fixed-source historical evidence retained; byte and navigation checks only.",
    }
    (HERE / "integration-checks.json").write_text(json.dumps(record, ensure_ascii=False, indent=2) + "\n")
    print(json.dumps(record, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
