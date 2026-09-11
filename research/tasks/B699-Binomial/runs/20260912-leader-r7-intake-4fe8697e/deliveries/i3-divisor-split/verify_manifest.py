
import hashlib,json,sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent
def verify(root=ROOT):
    root=Path(root).resolve()
    data=json.loads((root/"MANIFEST.json").read_text())
    for row in data["files"]:
        p=root/row["path"]
        if root not in p.resolve().parents:raise ValueError("manifest path escapes root")
        raw=p.read_bytes()
        if len(raw)!=row["bytes"] or hashlib.sha256(raw).hexdigest()!=row["sha256"]:
            raise ValueError("hash mismatch: "+row["path"])
    return len(data["files"])
if __name__=="__main__":print("PASS",verify(),"static files")
