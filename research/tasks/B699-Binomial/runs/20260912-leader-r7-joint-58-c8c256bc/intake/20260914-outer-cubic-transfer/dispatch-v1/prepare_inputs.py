#!/usr/bin/env python3
"""Verify a dispatch packet and safely materialize top-level source archives.

No mathematical checker is invoked. Nested ZIP files remain opaque.
"""
import argparse
import hashlib
import json
from pathlib import Path, PurePosixPath
import shutil
import stat
import zipfile

ROOT = Path(__file__).resolve().parent
MAX_TOTAL_BYTES = 256 * 1024 * 1024


def digest(path):
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def member_path(name):
    p = PurePosixPath(name)
    if p.is_absolute() or ".." in p.parts or "\\" in name or not p.parts:
        raise ValueError("Unsafe ZIP member path")
    return Path(*p.parts)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("route", choices=["A", "B", "D"])
    parser.add_argument("--check-only", action="store_true")
    args = parser.parse_args()
    manifest = json.loads((ROOT / "PACKET_MANIFEST.json").read_text())
    for entry in manifest["files"]:
        p = ROOT / member_path(entry["path"])
        if p.is_symlink() or p.stat().st_size != entry["bytes"] or digest(p) != entry["sha256"]:
            raise ValueError("Packet member mismatch: " + entry["path"])
    inventory = json.loads((ROOT / "ARCHIVES.json").read_text())
    for entry in inventory["archives"]:
        p = ROOT / entry["packet_path"]
        with zipfile.ZipFile(p) as archive:
            members = archive.infolist()
            if sum(m.file_size for m in members) > MAX_TOTAL_BYTES:
                raise ValueError("Archive exceeds materialization budget")
            names = set()
            for m in members:
                member_path(m.filename)
                if m.filename in names or stat.S_ISLNK(m.external_attr >> 16):
                    raise ValueError("Duplicate path or symbolic link in source ZIP")
                names.add(m.filename)
            if args.check_only:
                continue
            dest = ROOT / "inputs" / entry["route"]
            marker = dest / ".packet-source-sha256"
            if dest.exists():
                if marker.is_file() and marker.read_text().strip() == entry["sha256"]:
                    print("Existing materialization left unchanged: " + entry["route"])
                    continue
                raise ValueError("Refusing to overwrite existing input directory: " + str(dest))
            dest.mkdir(parents=True)
            for m in members:
                target = dest / member_path(m.filename)
                if m.is_dir():
                    target.mkdir(parents=True, exist_ok=True)
                else:
                    target.parent.mkdir(parents=True, exist_ok=True)
                    with archive.open(m) as src, target.open("xb") as out:
                        shutil.copyfileobj(src, out, 1024 * 1024)
            marker.write_text(entry["sha256"] + "\n")
            print("Materialized: " + entry["route"])
    print("Packet byte check passed; no mathematical verification performed.")
    print("Read tasks/COMMON.md and tasks/" + args.route + ".md")


if __name__ == "__main__":
    main()
