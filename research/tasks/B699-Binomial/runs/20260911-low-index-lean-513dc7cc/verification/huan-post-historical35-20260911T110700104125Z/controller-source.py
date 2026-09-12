"""Bounded serial continuation after the exact historical35 probe finishes."""
from pathlib import Path
import argparse,json,os,subprocess,sys,time,hashlib
from datetime import datetime,timezone
from huan_atomic import write_json
RUN=Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
TERMINAL={"single_historical_packaging_accepted","pending_resource","unresolved","probe_exception"}
def finished(state):
    return state.get("i")==35 and state.get("block")==2 and state.get("status") in TERMINAL and type(state.get("exit_code")) is int and state["exit_code"] in (0,1,2) and bool(state.get("finished_utc"))
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def receipt_ready(repo,path):
    if not path.is_file():return False
    e=json.loads(path.read_text(encoding="utf-8"))
    if "success" in e:return e.get("success") is True and e.get("exit_code")==0
    if e.get("kind")!="verified_prerequisite_not_original_index":return False
    source=repo/e["root"];ep=repo/e["evidence"]
    if not source.is_file() or sha(source)!=e["source_sha256"] or not ep.is_file():return False
    proof=json.loads(ep.read_text(encoding="utf-8"))
    return proof.get("success") is True and proof.get("exit_code")==0 and proof.get("root_sources")==[e["root"]]
def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument("--plan",type=Path,required=True);ap.add_argument("--package-root",type=Path,required=True);ap.add_argument("--dry-run",action="store_true");a=ap.parse_args();repo=Path.cwd().resolve();run=repo/RUN;plan=json.loads(a.plan.read_text(encoding="utf-8"));wait_path=(repo/plan["wait_state"]).resolve();assert wait_path.is_relative_to(run/"verification");assert wait_path.name=="state.json" and wait_path.parent.name.startswith("huan-historical-probe-35-")
    for job in plan["jobs"]:
        path=run/job["root"];assert path.is_file() and sha(path)==job["source_sha256"],job["name"]
    if a.dry_run:print(json.dumps({"status":"dry_run_validated","jobs":len(plan["jobs"]),"wait_state":plan["wait_state"],"no_lean_started":True}));return 0
    stamp=datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ");out=run/"verification"/f"huan-post-historical35-{stamp}";out.mkdir();(out/"controller-source.py").write_bytes(Path(__file__).read_bytes());(out/"plan.json").write_bytes(a.plan.read_bytes());state={"status":"waiting_previous_verifier","wait_state":plan["wait_state"],"jobs":[],"controller_sha256":sha(Path(__file__)),"new_original_results":0};save=lambda:write_json(out/"state.json",state);save();print(json.dumps({"status":state["status"],"state":(out/"state.json").relative_to(repo).as_posix()}),flush=True);deadline=time.monotonic()+14400
    while True:
        old=json.loads(wait_path.read_text(encoding="utf-8"))
        if finished(old):break
        if time.monotonic()>=deadline:state.update(status="wait_limit_no_lean_started");save();return 2
        time.sleep(5)
    state.update(status="running",previous_exit_code=old["exit_code"]);save();env={**os.environ,"PYTHONUTF8":"1","PYTHONDONTWRITEBYTECODE":"1"};code=0
    for job in plan["jobs"]:
        item={"name":job["name"],"root":job["root"],"status":"checking_dependencies"};state["jobs"].append(item);save()
        try:
            if sha(run/job["root"])!=job["source_sha256"]:raise ValueError("source changed since queue plan")
            missing=[x for x in job["reuse"] if not receipt_ready(repo,repo/x)]
            if missing:item.update(status="skipped_missing_successful_dependency",missing=missing);code=1;save();continue
            cmd=[sys.executable,"-B",str(RUN/"verification/runner/verify_huan_candidate.py"),"--name",job["name"],"--root",job["root"],"--package-root",str(a.package_root),"--memory-mb",str(job["memory_mb"])]
            for reuse in job["reuse"]:cmd += ["--reuse",reuse]
            item.update(status="running",command=cmd);save();print(json.dumps({"status":"running","name":job["name"]}),flush=True)
            with (out/f"{job['name']}.log").open("w",encoding="utf-8") as log:rc=subprocess.run(cmd,cwd=repo,env=env,stdout=log,stderr=subprocess.STDOUT).returncode
            receipt=run/"verification/huan-prerequisites"/f"{job['name']}.json"
            ok=rc==0 and receipt_ready(repo,receipt);item.update(status="accepted_prerequisite" if ok else "failed_not_accepted",exit_code=rc)
            if ok:item["receipt"]=receipt.relative_to(repo).as_posix()
            else:code=1
        except Exception as exc:item.update(status="queue_job_exception",failure=str(exc));code=1
        save();print(json.dumps({k:v for k,v in item.items() if k in ("name","status","exit_code","failure")}),flush=True)
    state.update(status="finished_all_prerequisites" if code==0 else "finished_with_unaccepted_jobs",exit_code=code,finished_utc=datetime.now(timezone.utc).isoformat());save();return code
if __name__=="__main__":raise SystemExit(main())
