
import hashlib,json,sys,zipfile
from pathlib import Path
def main(root,out):
    root=Path(root)
    m=json.loads((root/"sources/SOURCE_MAP.json").read_text())
    p=root/"originals/reduced-numerator-previous.zip"
    raw=p.read_bytes()
    assert hashlib.sha256(raw).hexdigest()==m["archive_sha256"]
    assert len(raw)==m["archive_bytes"]
    with zipfile.ZipFile(p) as z:
        assert z.testzip() is None
        for row in m["adopted"]:
            b=z.read(row["member"])
            assert b==(root/row["local"]).read_bytes()
            assert len(b)==row["bytes"]
            assert hashlib.sha256(b).hexdigest()==row["sha256"]
    ans={"status":"PASS","archive_sha256":m["archive_sha256"],"archive_bytes":len(raw),
         "adopted_texts":len(m["adopted"]),"old_experiments_rerun":False}
    Path(out).write_text(json.dumps(ans,indent=2,sort_keys=True)+"\n")
    print("PASS frozen input bytes")
if __name__=="__main__":main(sys.argv[1],sys.argv[2])
