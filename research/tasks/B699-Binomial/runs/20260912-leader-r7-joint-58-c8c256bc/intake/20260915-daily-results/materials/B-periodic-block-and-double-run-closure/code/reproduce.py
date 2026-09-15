#!/usr/bin/env python3
"""Replay only the new mathematical scripts, in an initially empty output directory."""
from pathlib import Path
import argparse,datetime,hashlib,json,platform,subprocess,sys,tempfile,time
ROOT=Path(__file__).resolve().parents[1]
SCRIPTS=["generate.py","check_certificate.py","symbolic.py","regress.py",
         "bad_inputs.py","sources_check.py"]
def snapshot():
    m=json.loads((ROOT/"MANIFEST.json").read_text())
    out={}
    for e in m["files"]:
        b=(ROOT/e["path"]).read_bytes()
        h=hashlib.sha256(b).hexdigest()
        if h!=e["sha256"] or len(b)!=e["bytes"]:raise ValueError("static mismatch: "+e["path"])
        out[e["path"]]=h
    return out
def main():
    ap=argparse.ArgumentParser();ap.add_argument("--record",default="replay/local")
    args=ap.parse_args()
    log=(ROOT/args.record).resolve();log.mkdir(parents=True,exist_ok=True)
    before=snapshot();start=time.perf_counter()
    record={"started_utc":datetime.datetime.now(datetime.timezone.utc).isoformat(),
            "python":sys.version,"platform":platform.platform(),
            "historical_replay_run":False,"commands":[],"comparisons":[]}
    success=True
    with tempfile.TemporaryDirectory(prefix="b699_periodic_") as td:
        dst=Path(td)
        for script in SCRIPTS:
            cmd=[sys.executable,"-S","-B",str(ROOT/"code"/script),"--out",str(dst)]
            t=time.perf_counter()
            p=subprocess.run(cmd,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
            (log/(script+".stdout.txt")).write_bytes(p.stdout)
            (log/(script+".stderr.txt")).write_bytes(p.stderr)
            record["commands"].append({"command":cmd,"returncode":p.returncode,
                                       "seconds":time.perf_counter()-t,
                                       "stdout":script+".stdout.txt","stderr":script+".stderr.txt"})
            if p.returncode:
                success=False;break
        if success:
            expected=sorted(p.name for p in (ROOT/"outputs").glob("*.json"))
            actual=sorted(p.name for p in dst.glob("*.json"))
            success=expected==actual
            record["expected_outputs"]=expected;record["actual_outputs"]=actual
            for name in expected:
                ref=(ROOT/"outputs"/name).read_bytes()
                cur=(dst/name).read_bytes() if (dst/name).exists() else b""
                eq=ref==cur;success=success and eq
                record["comparisons"].append({"file":name,"byte_equal":eq,
                                              "sha256":hashlib.sha256(cur).hexdigest(),
                                              "bytes":len(cur)})
    after=snapshot()
    record["static_files_checked"]=len(before)
    record["static_before_after_equal"]=before==after
    success=success and before==after
    record["elapsed_seconds"]=time.perf_counter()-start
    record["status"]="passed" if success else "failed"
    (log/"reproduction.json").write_text(json.dumps(record,ensure_ascii=False,indent=2)+"\n")
    print(json.dumps({"status":record["status"],"commands":len(record["commands"]),
                      "outputs":len(record["comparisons"]),"static_files":len(before),
                      "seconds":record["elapsed_seconds"]}))
    raise SystemExit(0 if success else 1)
if __name__=="__main__":main()
