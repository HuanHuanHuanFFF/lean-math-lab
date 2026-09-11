
"""Fresh sequential replay of this round only. Does not rerun the old beta proof."""
import argparse,datetime,hashlib,json,os,shutil,subprocess,sys,tempfile,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def verify():
    data=json.loads((ROOT/"MANIFEST.json").read_text())
    for r in data["files"]:
        p=ROOT/r["path"]
        if not p.is_file() or p.stat().st_size!=r["bytes"] or sha(p)!=r["sha256"]:
            raise ValueError("static input mismatch: "+r["path"])
    return {r["path"]:r["sha256"] for r in data["files"]}
def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--record",default="replay/local")
    ar=ap.parse_args()
    rec=(ROOT/ar.record).resolve()
    if (ROOT/"replay").resolve() not in rec.parents:
        raise ValueError("record must be a subdirectory of replay/")
    rec.mkdir(parents=True,exist_ok=True)
    before=verify()
    cxx=shutil.which(os.environ.get("CXX","g++")) or shutil.which("clang++")
    if not cxx:raise RuntimeError("a C++17 compiler with __uint128_t is required")
    result={"status":"RUNNING","started_utc":datetime.datetime.now(datetime.timezone.utc).isoformat(),
            "old_mathematical_experiments_rerun":False,"commands":[],"comparisons":[]}
    total=time.monotonic()
    with tempfile.TemporaryDirectory(prefix="b699-split-fresh-") as td:
        t=Path(td);exe=t/"enumerate_e"
        cmds=[("compile",[cxx,"-O3","-std=c++17",str(ROOT/"code/enumerate_e.cpp"),"-o",str(exe)])]
        py=[sys.executable,"-B","-S"]
        for e in (3,5,7):
            cmds += [(f"generate-e{e}",[str(exe),str(e),"1048576",str(t/f"e{e}.json")]),
                     (f"independent-e{e}",py+[str(ROOT/"code/check_e.py"),str(t/f"e{e}.json"),str(t/f"independent_e{e}.json")])]
        cmds += [
          ("algebra",py+[str(ROOT/"code/check_algebra.py"),str(t/"algebra.json")]),
          ("bad-data",py+[str(ROOT/"code/check_bad_cases.py"),str(t/"e3.json"),str(t/"bad_cases.json")]),
          ("source-bytes",py+[str(ROOT/"code/check_sources.py"),str(ROOT),str(t/"sources.json")])
        ]
        for no,(name,cmd) in enumerate(cmds,1):
            start=time.monotonic()
            cp=subprocess.run(cmd,capture_output=True,text=True,timeout=90)
            stdout=rec/f"{no:02d}-{name}.stdout.txt"
            stderr=rec/f"{no:02d}-{name}.stderr.txt"
            stdout.write_text(cp.stdout);stderr.write_text(cp.stderr)
            result["commands"].append({"name":name,"argv":cmd,"returncode":cp.returncode,
                "elapsed_seconds":time.monotonic()-start,"stdout":stdout.name,"stderr":stderr.name})
            if cp.returncode:
                result["status"]="FAILED";break
        else:
            for p in sorted((ROOT/"outputs").glob("*.json")):
                fresh=t/p.name
                same=fresh.is_file() and p.read_bytes()==fresh.read_bytes()
                result["comparisons"].append({"file":"outputs/"+p.name,"byte_equal":same,
                  "sha256":sha(fresh) if fresh.is_file() else None})
                if not same:result["status"]="FAILED"
            if result["status"]!="FAILED":result["status"]="PASS"
    after=verify()
    result["static_inputs_unchanged"]=(before==after)
    result["static_file_count"]=len(before)
    result["elapsed_seconds"]=time.monotonic()-total
    result["finished_utc"]=datetime.datetime.now(datetime.timezone.utc).isoformat()
    if not result["static_inputs_unchanged"]:result["status"]="FAILED"
    (rec/"reproduction.json").write_text(json.dumps(result,indent=2,sort_keys=True)+"\n")
    print(json.dumps({"status":result["status"],"commands":len(result["commands"]),
          "outputs":len(result["comparisons"]),"static_unchanged":result["static_inputs_unchanged"],
          "elapsed_seconds":result["elapsed_seconds"]},sort_keys=True))
    if result["status"]!="PASS":raise SystemExit(1)
if __name__=="__main__":main()
