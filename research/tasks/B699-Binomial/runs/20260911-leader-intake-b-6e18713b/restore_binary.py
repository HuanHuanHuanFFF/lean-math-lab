#!/usr/bin/env python3
"""Restore the omitted previous ZIP member by copying bytes and checking hashes only."""
from pathlib import Path
import argparse
import hashlib
import zipfile

MEMBER = "originals/previous-exact-content.zip"
SOURCE_SIZE = 284551
SOURCE_SHA256 = "d3600610a6b2f465f42e2d47a7ae4d0c7b783d24ca0ff91f9d41f283f98f30ae"
MEMBER_SIZE = 152666
MEMBER_SHA256 = "7b30ab2decda6ce9e5e7d47d54fe8b769be8f2877788701d602781c4fd974dae"


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source_zip", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    source = args.source_zip
    output = args.output
    source_bytes = source.read_bytes()
    if len(source_bytes) != SOURCE_SIZE or hashlib.sha256(source_bytes).hexdigest() != SOURCE_SHA256:
        raise SystemExit("source ZIP size/SHA-256 mismatch")
    with zipfile.ZipFile(source) as archive:
        data = archive.read(MEMBER)
    if len(data) != MEMBER_SIZE or hashlib.sha256(data).hexdigest() != MEMBER_SHA256:
        raise SystemExit("member size/SHA-256 mismatch")
    if output.exists():
        raise SystemExit(f"refusing to overwrite existing output: {output}")
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_bytes(data)
    check = output.read_bytes()
    if check != data or hashlib.sha256(check).hexdigest() != MEMBER_SHA256:
        raise SystemExit("restored bytes failed post-write check")
    print(f"restored {MEMBER}: {len(check)} bytes, sha256={MEMBER_SHA256}")


if __name__ == "__main__":
    main()
