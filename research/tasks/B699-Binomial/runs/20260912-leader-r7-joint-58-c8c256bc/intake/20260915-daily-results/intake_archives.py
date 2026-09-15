"""Administrative ZIP intake: preserve bytes and provenance, never run payloads.

Original ZIPs stay outside the repository. Nested ZIPs are represented by
recursive member manifests; ordinary files are retained once where practical.
Run with --verify to check stored bytes only. --materialize reconstructs the
ordinary-file layout of one archive, without recreating nested ZIP containers.
"""

import argparse
import hashlib
import io
import json
import os
from pathlib import Path, PurePosixPath
import re
import shutil
import subprocess
import tempfile
import zipfile
from datetime import datetime, timezone


BATCH = Path(__file__).resolve().parent
REPO = next(p for p in BATCH.parents if (p / "LEADER.md").exists())
PACKAGES = [
    ("A-uniform-cofactor", "B699-ProA-i9-uniform-cofactor-evidence-20260915.zip"),
    ("A-coupled-edge-blocks", "B699-ProA-i9-coupled-edge-blocks-evidence-20260915.zip"),
    ("A-three-digit-closure", "B699-ProA-i9-three-digit-closure-evidence-20260915.zip"),
    ("A-tridigit-exponent-bound", "B699-ProA-i9-tridigit-exponent-bound-evidence-20260915.zip"),
    ("A-rough-base-repdigits", "B699-ProA-i9-rough-base-repdigits-evidence-20260915.zip"),
    ("A-cyclotomic-adjacent", "B699-ProA-i9-cyclotomic-adjacent-evidence-20260915.zip"),
    ("B-uniform-digital-height-and-four-period", "B699-R7-ProB-uniform-digital-height-and-four-period-evidence-20260915.zip"),
    ("B-signed-complexity-and-single-run", "B699-R7-ProB-signed-complexity-and-single-run-evidence-20260915.zip"),
    ("B-periodic-block-and-double-run-closure", "B699-R7-ProB-periodic-block-and-double-run-closure-evidence-20260915.zip"),
    ("B-two-neighbor-square-and-primitive-block", "B699-R7-ProB-two-neighbor-square-and-primitive-block-evidence-20260915.zip"),
    ("B-normalized-three-neighbor-and-square-rows", "B699-R7-ProB-normalized-three-neighbor-and-square-rows-evidence-20260915.zip"),
    ("B-prime-radix-two-digit-row", "B699-R7-ProB-prime-radix-two-digit-row-evidence-20260915.zip"),
    ("D-position-descent", "B699-ProD-position-descent-20260915.zip"),
    ("D-lcm-denominator-closure", "B699-ProD-lcm-denominator-closure-20260915.zip"),
    ("D-two-power-closure", "B699-ProD-two-power-closure-20260915.zip"),
    ("D-odd-full-window", "B699-ProD-odd-full-window-20260915.zip"),
    ("D-critical-quotient-closure", "B699-ProD-critical-quotient-closure-20260915.zip"),
    ("D-fatpoint-position-closure", "B699-ProD-fatpoint-position-closure-20260915.zip"),
]


def native(path):
    absolute = str(Path(path).resolve())
    return "\\\\?\\" + absolute if os.name == "nt" else absolute


def sha_file(path):
    with open(native(path), "rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def save_json(path, data):
    Path(path).parent.mkdir(parents=True, exist_ok=True)
    with open(native(path), "w", encoding="utf-8", newline="\n") as stream:
        json.dump(data, stream, ensure_ascii=False, indent=2)
        stream.write("\n")


def safe_parts(name):
    normalized = name.replace("\\", "/")
    parts = PurePosixPath(normalized).parts
    if normalized.startswith("/") or any(p in ("..", ".") or ":" in p for p in parts):
        raise ValueError("Unsafe archive member path: " + repr(name))
    return parts


def extract(source_root):
    if (BATCH / "SOURCES.json").exists():
        raise RuntimeError("Intake already exists; use --verify, never overwrite it")
    manifests = {}
    file_locations = {}
    sources = []
    stats = {"member_occurrences_in_unique_archives": 0, "stored_bytes": 0,
             "stored_files": 0, "unique_file_bytes": 0, "max_depth": 0}
    scratch = REPO / ".tools" / "intake-20260915-temp"
    scratch.mkdir(parents=True, exist_ok=True)

    def process(stream, digest, size, label, root_id=None, depth=0):
        if digest in manifests:
            return
        if depth > 64:
            raise RuntimeError("Unexpected archive nesting depth")
        stats["max_depth"] = max(depth, stats["max_depth"])
        manifest = {"sha256": digest, "bytes": size, "first_observed_as": label,
                    "members": []}
        manifests[digest] = manifest
        with zipfile.ZipFile(stream) as archive:
            for number, item in enumerate(archive.infolist()):
                parts = safe_parts(item.filename)
                entry = {"index": number, "path": item.filename, "bytes": item.file_size,
                         "crc32": f"{item.CRC:08x}", "kind": "directory"}
                manifest["members"].append(entry)
                stats["member_occurrences_in_unique_archives"] += 1
                if item.is_dir():
                    continue
                if item.flag_bits & 1:
                    raise ValueError("Encrypted member: " + item.filename)
                if item.file_size > 1024 ** 3:
                    raise ValueError("Unexpected member larger than 1 GiB")
                with tempfile.SpooledTemporaryFile(max_size=4 * 1024 ** 2, dir=scratch) as payload:
                    with archive.open(item) as member:
                        h = hashlib.sha256()
                        total = 0
                        while chunk := member.read(1024 * 1024):
                            total += len(chunk)
                            h.update(chunk)
                            payload.write(chunk)
                    if total != item.file_size:
                        raise ValueError("Size mismatch: " + item.filename)
                    member_hash = h.hexdigest()
                    entry["sha256"] = member_hash
                    payload.seek(0)
                    if item.filename.lower().endswith(".zip"):
                        entry.update(kind="archive", archive_manifest=f"archives/{member_hash}.json")
                        process(payload, member_hash, total, label + "!/" + item.filename,
                                depth=depth + 1)
                        continue
                    # Root reports keep their original, readable locations even
                    # when an identical historical copy was encountered earlier.
                    root_text = root_id and len(parts) <= 2 and parts[-1].lower().endswith(".md")
                    candidate = BATCH / "materials" / root_id / Path(*parts) if root_id else None
                    invalid_windows = any(re.search(r'[<>"|?*]', p) or p.endswith((" ", ".")) for p in parts)
                    ignored_artifact = any(p == "__pycache__" for p in parts) or Path(parts[-1]).suffix.lower() in (".pyc", ".pyo", ".olean", ".ilean")
                    if member_hash in file_locations and not root_text:
                        relative = file_locations[member_hash]
                    else:
                        if candidate is None or invalid_windows or ignored_artifact or (len(str(candidate)) > 245 and not root_text):
                            candidate = BATCH / "objects" / member_hash[:2] / member_hash
                        relative = candidate.relative_to(BATCH).as_posix()
                        if candidate.exists():
                            if sha_file(candidate) != member_hash:
                                raise ValueError("Refusing to overwrite distinct bytes: " + relative)
                        else:
                            if stats["stored_bytes"] + total > 2 * 1024 ** 3:
                                raise RuntimeError("Intake exceeds 2 GiB; inspect before continuing")
                            os.makedirs(native(candidate.parent), exist_ok=True)
                            payload.seek(0)
                            with open(native(candidate), "xb") as output:
                                shutil.copyfileobj(payload, output, 1024 * 1024)
                            stats["stored_files"] += 1
                            stats["stored_bytes"] += total
                        if member_hash not in file_locations:
                            stats["unique_file_bytes"] += total
                        file_locations.setdefault(member_hash, relative)
                    entry.update(kind="file", stored_path=relative)
        save_json(BATCH / "archives" / (digest + ".json"), manifest)

    # All roots are registered first so provenance does not depend on iteration order.
    for package_id, filename in PACKAGES:
        path = source_root / filename
        sources.append({"id": package_id, "author": "Pro " + package_id[0],
                        "source_path": str(path), "filename": filename,
                        "bytes": path.stat().st_size, "sha256": sha_file(path),
                        "archive_manifest": "", "evidence_status": "author-delivery; technical acceptance pending"})
    for source in sources:
        source["archive_manifest"] = "archives/" + source["sha256"] + ".json"
        # If a later top-level submission already appeared as a nested archive,
        # rebuild only this root's manifest, reusing its ordinary file bytes.
        manifests.pop(source["sha256"], None)
        with open(native(source["source_path"]), "rb") as stream:
            process(stream, source["sha256"], source["bytes"], source["filename"], source["id"])
        print(json.dumps({"received": source["id"], "stored_MiB": round(stats["stored_bytes"] / 1024 ** 2, 2)}, ensure_ascii=False), flush=True)
    save_json(BATCH / "SOURCES.json", {"created_utc": datetime.now(timezone.utc).isoformat(),
              "baseline_commit": "c0517376026da6f8c58185a5bd86327127d29ce3",
              "original_zip_policy": "Original containers retained at external source paths; no ZIP payload stored in repository.",
              "packages": sources})
    save_json(BATCH / "EXTRACTION.json", {**stats, "unique_archives": len(manifests),
              "unique_file_hashes": len(file_locations), "technical_proof_checks": "not run"})


def verify():
    sources = json.loads((BATCH / "SOURCES.json").read_text(encoding="utf-8"))
    manifests = {p.stem: json.loads(p.read_text(encoding="utf-8")) for p in (BATCH / "archives").glob("*.json")}
    checked = {}
    errors = []
    file_members = archive_members = directories = 0
    for digest, manifest in manifests.items():
        if manifest["sha256"] != digest:
            errors.append("Manifest identity: " + digest)
        for member in manifest["members"]:
            if member["kind"] == "archive":
                archive_members += 1
                child = manifests.get(member["sha256"])
                if child is None or child["bytes"] != member["bytes"]:
                    errors.append("Missing or mismatched nested archive manifest: " + member["path"])
            elif member["kind"] == "file":
                file_members += 1
                relative = member["stored_path"]
                path = BATCH / relative
                if relative not in checked:
                    checked[relative] = (os.stat(native(path)).st_size, sha_file(path))
                if checked[relative] != (member["bytes"], member["sha256"]):
                    errors.append("Stored bytes mismatch: " + relative)
            else:
                directories += 1
    external_checked = 0
    external_unavailable = []
    for source in sources["packages"]:
        if Path(source["source_path"]).is_file():
            external_checked += 1
            if sha_file(source["source_path"]) != source["sha256"]:
                errors.append("External original changed: " + source["filename"])
        else:
            external_unavailable.append(source["filename"])
        if source["sha256"] not in manifests:
            errors.append("Root manifest missing: " + source["id"])
    zip_files = [str(p.relative_to(BATCH)) for p in BATCH.rglob("*") if p.is_file() and p.suffix.lower() == ".zip"]
    errors.extend("Unexpected stored ZIP: " + p for p in zip_files)
    receipt = {"checked_utc": datetime.now(timezone.utc).isoformat(), "scope": "file bytes and recursive member coverage only",
               "root_archives": len(sources["packages"]), "unique_archive_manifests": len(manifests),
               "ordinary_file_members": file_members, "nested_archive_members": archive_members,
               "directory_members": directories, "stored_paths_checked": len(checked),
               "stored_bytes_checked": sum(value[0] for value in checked.values()),
               "external_originals_checked": external_checked,
               "external_originals_unavailable": external_unavailable,
               "zip_files_in_intake": len(zip_files), "errors": errors,
               "mathematical_review": "not performed", "lean_verification": "not performed"}
    save_json(BATCH / "BYTE_RECEIPT.json", receipt)
    print(json.dumps(receipt, ensure_ascii=False))
    if errors:
        raise SystemExit(1)


def reuse_tracked():
    """Reuse only unchanged, currently readable, byte-identical tracked files."""
    if (BATCH / "REUSED_TRACKED_FILES.json").exists():
        raise RuntimeError("Deduplication is already recorded; use --verify to preserve its provenance")
    listing = subprocess.check_output([
        "git", "-c", "safe.directory=" + REPO.as_posix(), "ls-files", "--stage", "-z"
    ], cwd=REPO)
    candidates = {}
    for record in listing.split(b"\0"):
        if not record:
            continue
        fields, name = record.split(b"\t", 1)
        mode, digest, stage = fields.decode("ascii").split()
        if stage == "0" and mode in ("100644", "100755"):
            candidates.setdefault(digest, []).append(name.decode("utf-8"))
    manifests = [(p, json.loads(p.read_text(encoding="utf-8")))
                 for p in (BATCH / "archives").glob("*.json")]
    files = {}
    for _, manifest in manifests:
        for member in manifest["members"]:
            if member["kind"] == "file" and member["stored_path"].startswith("objects/"):
                files.setdefault(member["stored_path"], member)
    reused = {}
    for relative, member in files.items():
        path = BATCH / relative
        h = hashlib.sha1()
        h.update(f"blob {member['bytes']}\0".encode("ascii"))
        with open(native(path), "rb") as stream:
            while chunk := stream.read(1024 * 1024):
                h.update(chunk)
        for repo_path in sorted(candidates.get(h.hexdigest(), []), key=len):
            target = REPO / repo_path
            if not target.is_file() or sha_file(target) != member["sha256"]:
                continue
            reused[relative] = {"retained_repo_path": repo_path,
                               "stored_path": os.path.relpath(target, BATCH).replace("\\", "/"),
                               "sha256": member["sha256"], "bytes": member["bytes"],
                               "git_blob": h.hexdigest()}
            break
    for path, manifest in manifests:
        changed = False
        for member in manifest["members"]:
            old = member.get("stored_path")
            if old in reused:
                member["stored_path"] = reused[old]["stored_path"]
                member["retained_git_blob"] = reused[old]["git_blob"]
                changed = True
        if changed:
            save_json(path, manifest)
    save_json(BATCH / "REUSED_TRACKED_FILES.json", {"baseline_commit": "c0517376026da6f8c58185a5bd86327127d29ce3",
              "files": reused, "bytes_reused": sum(v["bytes"] for v in reused.values())})
    for relative, retained in reused.items():
        redundant = (BATCH / relative).resolve()
        if not redundant.is_relative_to((BATCH / "objects").resolve()):
            raise ValueError("Refusing deletion outside newly created object store")
        if sha_file(REPO / retained["retained_repo_path"]) != retained["sha256"]:
            raise ValueError("Retained file changed before deduplication")
        os.unlink(native(redundant))
    print(json.dumps({"existing_tracked_files_reused": len(reused),
                      "bytes_reused": sum(v["bytes"] for v in reused.values())}))


def materialize(package, destination):
    sources = json.loads((BATCH / "SOURCES.json").read_text(encoding="utf-8"))["packages"]
    source = next((s for s in sources if s["id"] == package or s["sha256"] == package), None)
    digest = source["sha256"] if source else package
    manifest = json.loads((BATCH / "archives" / (digest + ".json")).read_text(encoding="utf-8"))
    destination = destination.resolve()
    omitted = []
    for member in manifest["members"]:
        target = destination.joinpath(*safe_parts(member["path"]))
        if member["kind"] == "directory":
            os.makedirs(native(target), exist_ok=True)
        elif member["kind"] == "archive":
            omitted.append({"path": member["path"], "sha256": member["sha256"], "archive_manifest": member["archive_manifest"]})
        else:
            src = BATCH / member["stored_path"]
            if sha_file(src) != member["sha256"]:
                raise ValueError("Source byte mismatch")
            if target.exists():
                if sha_file(target) != member["sha256"]:
                    raise ValueError("Refusing distinct existing file: " + str(target))
            else:
                os.makedirs(native(target.parent), exist_ok=True)
                shutil.copyfile(native(src), native(target))
    save_json(destination / "NESTED_ARCHIVE_LOCATIONS.json", omitted)
    print(json.dumps({"destination": str(destination), "nested_containers_not_recreated": len(omitted)}))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source-dir", type=Path, default=Path("E:/Download"))
    parser.add_argument("--verify", action="store_true")
    parser.add_argument("--reuse-tracked", action="store_true")
    parser.add_argument("--materialize")
    parser.add_argument("--destination", type=Path)
    args = parser.parse_args()
    if args.materialize:
        if args.destination is None:
            parser.error("--materialize requires --destination")
        materialize(args.materialize, args.destination)
    elif args.reuse_tracked:
        reuse_tracked()
        verify()
    elif args.verify:
        verify()
    else:
        extract(args.source_dir)
        verify()
