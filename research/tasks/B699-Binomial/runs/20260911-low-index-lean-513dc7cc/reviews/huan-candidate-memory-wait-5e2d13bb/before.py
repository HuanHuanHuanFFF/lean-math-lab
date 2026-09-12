"""Serial strict B699 prerequisite verification; never adds an original index."""
from pathlib import Path
import argparse,json,subprocess,sys,os,hashlib
from datetime import datetime,timezone
from huan_atomic import write_json
RUN=Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
ALLOWED={"propext","Classical.choice","Quot.sound"}
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument("--name",required=True);p.add_argument("--root",required=True);p.add_argument("--package-root",type=Path,required=True);p.add_argument("--reuse",action="append",default=[]);p.add_argument("--memory-mb",type=int,default=1536);a=p.parse_args();repo=Path.cwd();run=repo/RUN
 assert a.name.replace("-","").replace("_","").isalnum();root=(RUN/a.root).as_posix();assert (repo/root).is_file();stamp=datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ");out=run/"verification"/("huan-candidate-"+a.name+"-"+stamp);out.mkdir(parents=True);reuse=[]
 for source in a.reuse:
  path=Path(source);obj=json.loads(path.read_text());ep=Path(obj["evidence"]) if "evidence" in obj and "compile_records" not in obj else path
  e=json.loads(ep.read_text());assert e["success"],"reuse must be complete successful report"
  if ep.as_posix() not in reuse:reuse.append(ep.as_posix())
 cmd=[sys.executable,"-B",str(RUN/"verification/runner/verify_huan.py"),"--repo",".","--package-root",str(a.package_root),"--root",root,"--memory-mb",str(a.memory_mb),"--timeout","900"]
 for ep in reuse:cmd.extend(["--reuse",ep])
 state={"status":"running","root":root,"name":a.name,"new_original_indices":[],"source_sha256_before":sha(repo/root),"command":cmd,"reuse":reuse};write_json(out/"state.json",state);before=set((run/"verification").glob("20*/evidence.json"));env=dict(os.environ,PYTHONUTF8="1",PYTHONDONTWRITEBYTECODE="1")
 with (out/"verifier.log").open("w",encoding="utf-8") as log:rc=subprocess.run(cmd,cwd=repo,env=env,stdout=log,stderr=subprocess.STDOUT,creationflags=getattr(subprocess,"CREATE_NO_WINDOW",0)).returncode
 fresh=set((run/"verification").glob("20*/evidence.json"))-before;matched=[x for x in fresh if json.loads(x.read_text()).get("root_sources")==[root]];assert len(matched)==1;ep=matched[0];e=json.loads(ep.read_text());snapshots=[]
 for c in e.get("compile_records",[]):
  src=repo/c["source"];h=sha(src);assert h==c["source_sha256_after"];target=out/"source-snapshots"/(h+".lean.txt");target.parent.mkdir(exist_ok=True);target.write_bytes(src.read_bytes());snapshots.append({"source":c["source"],"sha256":h,"snapshot":target.relative_to(repo).as_posix()})
 state.update(exit_code=rc,evidence=ep.relative_to(repo).as_posix(),source_snapshots=snapshots,finished_utc=datetime.now(timezone.utc).isoformat(),failure=e.get("failure"));write_json(out/"state.json",state)
 if rc or not e["success"]:
  state["status"]="failed_not_accepted";write_json(out/"state.json",state);print(json.dumps({k:v for k,v in state.items() if k not in ["command","source_snapshots"]}),flush=True)
  for c in e.get("compile_records",[]):
   if c.get("failure"):print("FAILED_SOURCE "+c["source"]+"\n"+(repo/c["log"]).read_text(errors="replace")[-6500:],flush=True)
  return 1
 c=next(x for x in e["compile_records"]+e["reuse_records"] if x["source"]==root);assert sha(repo/root)==state["source_sha256_before"]==c["source_sha256_after"];printed=c["axiom_audit"]["printed"];assert printed and all(set(x["axioms"])<=ALLOWED for x in printed)
 receipt={"kind":"verified_prerequisite_not_original_index","name":a.name,"root":root,"source_sha256":sha(repo/root),"evidence":ep.relative_to(repo).as_posix(),"output_sha256":c["output_sha256"],"public_axiom_audit":printed,"compiled_modules":e["compiled_count"],"reused_modules":e["reused_count"],"verification_seconds":sum(x["seconds"] for x in e["compile_records"]),"new_original_indices":[],"new_B_original_results":0,"publication_status":"local_verified_commit_and_push_blocked"};write_json(run/"verification/huan-prerequisites"/(a.name+".json"),receipt);state["status"]="accepted_prerequisite";write_json(out/"state.json",state);print(json.dumps(receipt),flush=True);return 0
if __name__=="__main__":raise SystemExit(main())
