#!/usr/bin/env python3
from pathlib import Path
import json,hashlib
ROOT=Path(__file__).resolve().parent
def verify():
    data=json.loads((ROOT/"MANIFEST.json").read_text())
    for e in data["files"]:
        path=(ROOT/e["path"]).resolve()
        if not path.is_relative_to(ROOT):raise ValueError("unsafe manifest path")
        b=path.read_bytes()
        if len(b)!=e["bytes"] or hashlib.sha256(b).hexdigest()!=e["sha256"]:
            raise ValueError("manifest mismatch: "+e["path"])
    return len(data["files"])
if __name__=="__main__":print(json.dumps({"verified_files":verify(),"status":"passed"}))
