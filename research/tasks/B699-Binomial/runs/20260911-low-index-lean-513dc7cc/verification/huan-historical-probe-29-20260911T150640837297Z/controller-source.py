"""Historical29 with a source-bound explicit measured memory profile; no publication."""
from pathlib import Path
import argparse,json,os,subprocess,sys
from datetime import datetime,timezone
import verify_huan_historical_v6 as h
from huan_atomic import write_json

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument("--i",type=int,choices=[29],required=True);p.add_argument("--block",type=int,choices=[2,4,8,16,32],default=2);p.add_argument("--memory-mb",type=int,default=1536);p.add_argument("--memory-profile",type=Path,required=True);p.add_argument("--package-root",type=Path,required=True);a=p.parse_args();repo=Path.cwd();run=repo/h.RUN;stamp=datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ");out=run/"verification"/f"huan-historical-probe-{a.i}-{stamp}";out.mkdir();(out/"controller-source.py").write_bytes(Path(__file__).read_bytes());state={"status":"preparing","i":a.i,"block":a.block,"memory_mb":a.memory_mb,"new_original_results":0,"all_four_historical_complete_claimed":False};write_json(out/"state.json",state);code=1
 try:
  plan=h.load_plan(repo,a.i);shared=h.check_shared(repo,run);manifest,_=h.bundle(repo,plan,a.i,a.block,out/"bundle.log");root=manifest["root"];mp=repo/Path(root).parent/"bundle-manifest.json";before=set((run/"verification").glob("20*/evidence.json"));cmd=[sys.executable,"-B",str(h.VERIFIER),"--repo",".","--package-root",str(a.package_root),"--root",root,"--reuse",shared,"--memory-mb",str(a.memory_mb),"--timeout","900","--memory-profile",str(a.memory_profile)];state.update(status="running",command=cmd,root=root);write_json(out/"state.json",state)
  with (out/"verify.log").open("w",encoding="utf-8") as log:rc=subprocess.run(cmd,stdout=log,stderr=subprocess.STDOUT,env={**os.environ,"PYTHONUTF8":"1","PYTHONDONTWRITEBYTECODE":"1"}).returncode
  matches=[ep for ep in set((run/"verification").glob("20*/evidence.json"))-before if json.loads(ep.read_text()).get("root_sources")==[root]];assert len(matches)==1;ep=matches[0];e=json.loads(ep.read_text());state.update(evidence=h.rel(ep,repo),verification_exit_code=rc,failure=e.get("failure"))
  if rc==0 and e["success"]:
   q=h.write_receipt(repo,run,a.i,root,ep,e,mp);state.update(status="single_historical_packaging_accepted",receipt=h.rel(run/f"verification/huan-historical-accepted/row{a.i:03d}.json",repo));code=0
  else:state["status"]="pending_resource" if h.failure_kind(repo,e)=="resource_gate" else "unresolved";code=2 if state["status"]=="pending_resource" else 1
 except Exception as exc:state.update(status="probe_exception",failure=str(exc))
 finally:state.update(exit_code=code,finished_utc=datetime.now(timezone.utc).isoformat());write_json(out/"state.json",state)
 print(json.dumps({k:v for k,v in state.items() if k!="command"}),flush=True);return code
if __name__=="__main__":raise SystemExit(main())
