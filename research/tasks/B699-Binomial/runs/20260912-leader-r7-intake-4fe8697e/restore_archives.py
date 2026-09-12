#!/usr/bin/env python3
"""Restore intake members into an isolated copy using ARCHIVES.json hashes.

This utility only reads the supplied archives and writes byte-for-byte members
listed as ``not_in_git``.  It performs no network access or mathematical
verification.  Existing files are compared and are never overwritten when
their bytes differ.  A source ZIP is located by its recorded SHA-256; when a
separate old upload is absent, the recorded parent ZIP/member relation is
followed recursively and the parent and child hashes are checked.
"""

from __future__ import annotations

import argparse
import hashlib
from io import BytesIO
import json
from pathlib import Path, PurePosixPath
import stat
import zipfile


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def safe_relative_path(value: str) -> PurePosixPath:
    """Reject absolute, traversal, drive, NUL, and backslash paths."""
    if not value or "\x00" in value or "\\" in value:
        raise ValueError(f"unsafe relative path: {value!r}")
    if value.startswith("/"):
        raise ValueError(f"absolute path: {value!r}")
    parts = value.split("/")
    if any(part in ("", ".", "..") for part in parts):
        raise ValueError(f"unsafe relative path: {value!r}")
    if len(parts[0]) == 2 and parts[0][1] == ":":
        raise ValueError(f"drive path: {value!r}")
    return PurePosixPath(*parts)


def archive_member_bytes(archive_bytes: bytes, archive_label: str, member: str) -> bytes:
    with zipfile.ZipFile(BytesIO(archive_bytes)) as zf:
        infos = [info for info in zf.infolist() if info.filename == member]
        if len(infos) != 1:
            raise ValueError(
                f"expected one member {member!r} in {archive_label}, found {len(infos)}"
            )
        info = infos[0]
        mode = (info.external_attr >> 16) & 0xFFFF
        if info.filename.endswith("/") or stat.S_ISDIR(mode):
            raise ValueError(f"mapped member is a directory: {member!r}")
        if stat.S_ISLNK(mode):
            raise ValueError(f"mapped member is a symlink: {member!r}")
        safe_relative_path(member)
        return zf.read(info)


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


class ArchiveResolver:
    """Resolve an uploaded archive by hash, falling back to mapped parents."""

    def __init__(self, manifest: dict[str, object], source_dir: Path) -> None:
        self.source_dir = source_dir
        self.records = {
            record["upload_name"]: record for record in manifest.get("archives", [])
        }
        self.relations = manifest.get("shared_nested_archives", [])
        self.cache: dict[str, bytes] = {}
        self.provenance: dict[str, dict[str, object]] = {}
        self.active: set[str] = set()
        self.file_hash_cache: dict[Path, str] = {}

    def _files_matching_hash(self, expected: str) -> list[Path]:
        matches: list[Path] = []
        if not self.source_dir.is_dir():
            return matches
        for path in self.source_dir.rglob("*"):
            if not path.is_file():
                continue
            try:
                actual = self.file_hash_cache.setdefault(path, sha256_file(path))
            except OSError:
                continue
            if actual == expected:
                matches.append(path)
        return matches

    def resolve(self, source_zip: str) -> bytes:
        record = self.records.get(source_zip)
        if record is None:
            raise ValueError(f"source ZIP is absent from ARCHIVES.json: {source_zip}")
        expected = record["zip_sha256"]
        if expected in self.cache:
            return self.cache[expected]
        if source_zip in self.active:
            raise ValueError(f"cyclic nested archive mapping at {source_zip}")
        self.active.add(source_zip)
        try:
            direct_matches = self._files_matching_hash(expected)
            if len(direct_matches) == 1:
                data = direct_matches[0].read_bytes()
                if sha256_bytes(data) != expected:
                    raise ValueError(f"source file changed while reading: {direct_matches[0]}")
                self.cache[expected] = data
                self.provenance[source_zip] = {
                    "method": "direct-file-hash-match",
                    "path": str(direct_matches[0]),
                    "sha256": sha256_bytes(data),
                    "size_bytes": len(data),
                }
                return data
            if len(direct_matches) > 1:
                raise ValueError(
                    f"multiple source files match {source_zip} hash {expected}: "
                    + ", ".join(str(path) for path in direct_matches)
                )

            candidates = [
                relation
                for relation in self.relations
                if relation.get("matched_uploaded_zip") == source_zip
                or relation.get("nested_sha256") == expected
            ]
            errors: list[str] = []
            for relation in candidates:
                parent_zip = relation["parent_zip"]
                try:
                    parent_bytes = self.resolve(parent_zip)
                    parent_expected = self.records[parent_zip]["zip_sha256"]
                    child = archive_member_bytes(
                        parent_bytes,
                        f"{parent_zip}::{relation['parent_member_name']}",
                        relation["parent_member_name"],
                    )
                    child_hash = sha256_bytes(child)
                    if child_hash != expected:
                        raise ValueError(
                            f"nested member hash {child_hash} != expected {expected}"
                        )
                    self.cache[expected] = child
                    self.provenance[source_zip] = {
                        "method": "nested-member-hash-match",
                        "parent_zip": parent_zip,
                        "parent_sha256": parent_expected,
                        "parent_member_name": relation["parent_member_name"],
                        "sha256": child_hash,
                        "size_bytes": len(child),
                    }
                    return child
                except (OSError, ValueError, KeyError, zipfile.BadZipFile) as exc:
                    errors.append(f"{parent_zip}: {exc}")
            details = "; ".join(errors) if errors else "no direct file or mapped parent"
            raise FileNotFoundError(
                f"cannot resolve {source_zip} by hash {expected}: {details}"
            )
        finally:
            self.active.remove(source_zip)

    def member(self, source_zip: str, member: str) -> tuple[bytes, dict[str, object]]:
        archive_bytes = self.resolve(source_zip)
        data = archive_member_bytes(archive_bytes, source_zip, member)
        return data, self.provenance[source_zip]


def write_if_matching(target: Path, data: bytes, expected_sha256: str) -> str:
    actual = sha256_bytes(data)
    if actual != expected_sha256:
        return f"source-hash-mismatch:{actual}"
    if target.exists():
        if not target.is_file():
            return "target-exists-not-file"
        existing = target.read_bytes()
        existing_hash = sha256_bytes(existing)
        if existing_hash == expected_sha256 and len(existing) == len(data):
            return "existing-identical"
        return f"target-conflict:{existing_hash}"
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(data)
    return "restored"


def restore(
    archives_path: Path,
    source_dir: Path,
    target_dir: Path,
    only: set[str] | None = None,
) -> dict[str, object]:
    manifest = json.loads(archives_path.read_text(encoding="utf-8"))
    resolver = ArchiveResolver(manifest, source_dir)
    selected = 0
    results: list[dict[str, object]] = []
    for archive in manifest.get("archives", []):
        source_zip = archive["upload_name"]
        for item in archive.get("not_in_git", []):
            member = item["member_name"]
            key = f"{source_zip}::{member}"
            if only and key not in only:
                continue
            selected += 1
            target_rel = safe_relative_path(item["target_relative_path"])
            target = target_dir.joinpath(*target_rel.parts)
            result: dict[str, object] = {
                "key": key,
                "target_relative_path": item["target_relative_path"],
                "expected_sha256": item["sha256"],
                "expected_size_bytes": item["size_bytes"],
            }
            try:
                data, resolution = resolver.member(source_zip, member)
                result["resolved_archive"] = resolution
                result["actual_size_bytes"] = len(data)
                result["status"] = write_if_matching(target, data, item["sha256"])
            except (OSError, ValueError, zipfile.BadZipFile) as exc:
                result["status"] = f"error:{type(exc).__name__}:{exc}"
            results.append(result)
    return {"selected": selected, "results": results}


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source_dir", type=Path, help="directory containing original upload archives")
    parser.add_argument("target_dir", type=Path, help="isolated restore target directory")
    parser.add_argument(
        "--archives",
        type=Path,
        default=Path(__file__).with_name("ARCHIVES.json"),
        help="ARCHIVES.json mapping (default: next to this script)",
    )
    parser.add_argument(
        "--only",
        action="append",
        default=[],
        metavar="ZIP::MEMBER",
        help="restore only this exact source key; may be repeated",
    )
    parser.add_argument("--result-json", type=Path, help="optional path for a JSON result")
    args = parser.parse_args(argv)

    result = restore(
        args.archives.resolve(),
        args.source_dir.resolve(),
        args.target_dir.resolve(),
        set(args.only) or None,
    )
    rendered = json.dumps(result, ensure_ascii=False, indent=2) + "\n"
    if args.result_json:
        args.result_json.parent.mkdir(parents=True, exist_ok=True)
        args.result_json.write_text(rendered, encoding="utf-8")
    print(rendered, end="")
    failures = [r for r in result["results"] if str(r["status"]).startswith(("error:", "source-hash-mismatch", "target-conflict", "target-exists"))]
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
