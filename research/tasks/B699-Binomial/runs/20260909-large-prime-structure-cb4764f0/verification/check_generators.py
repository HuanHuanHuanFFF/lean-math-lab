"""Reproduce generated Lean bytes in task-owned temporary directories."""
import hashlib,json,os,shutil,subprocess,sys
from datetime import datetime,timezone
from pathlib import Path
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
run=Path(__file__).resolve().parent.parent
repo=next(p for p in run.parents if (p/"lake-manifest.json").is_file())
stamp=datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")+"-generators"
public=run/"verification"/stamp
scratch=repo/".tools/generator-replay"/stamp
public.mkdir(parents=True);scratch.mkdir(parents=True)
fresh=json.loads((run/"verification/20260908T200259Z/evidence.json").read_text())
expected={r["source"]:r["source_sha256_before"] for r in fresh["source_closure"]}
specs=[
 ("composite-boundary","generate_lean.py","result.json","FiniteBoundary.lean"),
 ("slope-three","generate_residue_lean.py","compression.json","SlopeThreeFiniteCases.lean")
]
records=[]
for topic,generator,input_name,output_name in specs:
    original=run/"experiments"/topic
    stage=scratch/topic
    working=stage/"experiments"/topic
    working.mkdir(parents=True);(stage/"lean").mkdir();(stage/"tmp").mkdir()
    for name in (generator,input_name):shutil.copy2(original/name,working/name)
    env=dict(os.environ,TEMP=str(stage/"tmp"),TMP=str(stage/"tmp"),
             TMPDIR=str(stage/"tmp"),PYTHONDONTWRITEBYTECODE="1")
    result=subprocess.run([sys.executable,"-B",str(working/generator)],
                          cwd=repo,env=env,capture_output=True,text=True,encoding="utf-8",timeout=30)
    generated=stage/"lean"/output_name
    accepted=run/"lean"/output_name
    accepted_rel=accepted.relative_to(repo).as_posix()
    record={"generator":(original/generator).relative_to(repo).as_posix(),
            "generator_sha256":sha(original/generator),
            "input":(original/input_name).relative_to(repo).as_posix(),
            "input_sha256":sha(original/input_name),
            "target":accepted_rel,"accepted_source_sha256":sha(accepted),
            "fresh_evidence_source_sha256":expected[accepted_rel],
            "reproduced_source_sha256":sha(generated) if generated.is_file() else None,
            "exit_code":result.returncode,"stdout":result.stdout.strip(),
            "original_source_written":False}
    record["success"]=result.returncode==0 and record["reproduced_source_sha256"]==record["accepted_source_sha256"]==record["fresh_evidence_source_sha256"]
    records.append(record)
out={"success":all(r["success"] for r in records),"checked_at_utc":datetime.now(timezone.utc).isoformat(),
     "scope":"untrusted generators reproduced accepted Lean bytes; no recompilation needed",
     "generator_check_script_sha256":sha(Path(__file__)),"records":records}
(public/"generator-checks.json").write_text(json.dumps(out,indent=2)+"\n",encoding="utf-8")
print(json.dumps({"success":out["success"],"evidence":(public/"generator-checks.json").relative_to(repo).as_posix(),"records":records},indent=2))
sys.exit(0 if out["success"] else 1)

