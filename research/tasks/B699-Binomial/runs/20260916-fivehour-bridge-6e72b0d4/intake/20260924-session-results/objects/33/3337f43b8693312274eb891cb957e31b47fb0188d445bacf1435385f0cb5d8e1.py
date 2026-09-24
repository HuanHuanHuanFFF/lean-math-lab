#!/usr/bin/env python3
"""Verify archive bytes only; do not execute research or mutate a repository."""
from pathlib import Path, PurePosixPath
import hashlib, json, sys, zipfile

ROOT = Path(__file__).resolve().parent

def sha(path):
    h=hashlib.sha256()
    with path.open("rb") as f:
        for b in iter(lambda:f.read(1<<20), b""): h.update(b)
    return h.hexdigest()

def safe(rel):
    p=PurePosixPath(rel)
    if p.is_absolute() or ".." in p.parts:
        raise ValueError("Unsafe path: "+rel)
    return ROOT.joinpath(*p.parts)

def main():
    manifest={}
    for line in (ROOT/"MANIFEST.sha256").read_text(encoding="utf-8").splitlines():
        if not line.strip(): continue
        h,rel=line.split("  ",1)
        if rel in manifest: raise ValueError("Duplicate manifest path: "+rel)
        manifest[rel]=h
    actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob("*") if p.is_file()}
    expected=set(manifest)|{"MANIFEST.sha256"}
    if actual!=expected:
        raise ValueError("File set differs: missing="+repr(sorted(expected-actual))+" extra="+repr(sorted(actual-expected)))
    for rel,h in manifest.items():
        if sha(safe(rel))!=h: raise ValueError("Hash mismatch: "+rel)
    data=json.loads((ROOT/"RECOVERY_MAP.json").read_text(encoding="utf-8"))
    members=0;attachments=0
    for row in data["rounds"]:
        zp=safe(row["original_zip_path"])
        if sha(zp)!=row["expected_sha256"]: raise ValueError("Original ZIP identity mismatch: "+zp.name)
        payload=safe(row["payload_path"]).parent
        with zipfile.ZipFile(zp) as z:
            bad=z.testzip()
            if bad is not None: raise ValueError("ZIP CRC failure: "+bad)
            infos=[i for i in z.infolist() if not i.is_dir()]
            if len(infos)!=row["members"]:raise ValueError("Member-count mismatch")
            for item in infos:
                part=PurePosixPath(item.filename)
                if part.is_absolute() or ".." in part.parts:raise ValueError("Unsafe original member")
                dest=payload.joinpath(*part.parts)
                if dest.read_bytes()!=z.read(item):raise ValueError("Expanded bytes differ: "+item.filename)
                members+=1
        for item in row["standalone_copies"]:
            fp=safe(item["path"])
            if sha(fp)!=item["sha256"]:raise ValueError("Standalone identity mismatch")
            match=item.get("matching_payload")
            if match and fp.read_bytes()!=safe(match).read_bytes():raise ValueError("Standalone/payload mismatch")
            attachments+=1
    result={"status":"PASS_ARCHIVE_BYTES_ONLY","files":len(actual),"manifest_entries_checked":len(manifest),
            "original_zips":len(data["rounds"]),"expanded_members_compared":members,
            "standalone_documents_compared":attachments,"research_scripts_executed":False}
    print(json.dumps(result,ensure_ascii=False,indent=2))

if __name__=="__main__":
    try:main()
    except Exception as exc:
        print("ARCHIVE_VERIFICATION_FAILED: "+str(exc),file=sys.stderr)
        sys.exit(1)
