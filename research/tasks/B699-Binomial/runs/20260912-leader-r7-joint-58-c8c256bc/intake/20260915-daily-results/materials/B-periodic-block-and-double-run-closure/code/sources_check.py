#!/usr/bin/env python3
from pathlib import Path
import argparse,json,hashlib,zipfile
ROOT=Path(__file__).resolve().parents[1]
def main():
    ap=argparse.ArgumentParser();ap.add_argument("--out",type=Path,required=True)
    out=ap.parse_args().out
    m=json.loads((ROOT/"sources/SOURCE_MAP.json").read_text())
    raw=(ROOT/m["archive"]).read_bytes()
    assert len(raw)==m["archive_bytes"]
    assert hashlib.sha256(raw).hexdigest()==m["archive_sha256"]
    with zipfile.ZipFile(ROOT/m["archive"]) as z:
        assert z.testzip() is None
        for e in m["members"]:
            b=z.read(e["member"])
            assert len(b)==e["bytes"] and hashlib.sha256(b).hexdigest()==e["sha256"]
            assert b==(ROOT/e["path"]).read_bytes()
    ans={"archive_sha256":m["archive_sha256"],"archive_bytes":len(raw),
         "matched_members":len(m["members"]),"historical_replay_run":False}
    (out/"source_check.json").write_text(json.dumps(ans,indent=2)+"\n")
    print(json.dumps({"matched_members":len(m["members"]),"status":"passed"}))
if __name__=="__main__":main()
