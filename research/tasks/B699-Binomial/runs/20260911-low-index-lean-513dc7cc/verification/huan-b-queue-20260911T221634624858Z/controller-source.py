"""Serial source-bound B verification. Failed or incomplete evidence is never reused."""
from pathlib import Path
from datetime import datetime, timezone
import argparse,hashlib,json,os,subprocess,sys
from huan_atomic import write_json
import verify_huan_historical_v6 as hist
RUN=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
ALLOWED={'propext','Classical.choice','Quot.sound'}
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def valid_existing(repo,run,job):
    rp=run/'verification/huan-prerequisites'/(job['name']+'.json')
    if not rp.exists():return None
    q=json.loads(rp.read_text());ep=(repo/q['evidence']).resolve()
    assert ep.is_relative_to(run/'verification')
    e=json.loads(ep.read_text());root=(RUN/job['root']).as_posix()
    assert e['success'] and e['exit_code']==0 and e['root_sources']==[root]
    assert q['root']==root and q['source_sha256']==job['source_sha256']==sha(repo/root)
    records=e['compile_records']+e['reuse_records'];sources=[x['source'] for x in records]
    assert len(sources)==len(set(sources)) and set(sources)=={x['source'] for x in e['source_closure']}
    for rec in records:
        hist.check_record(repo,run,rec)
        assert not rec.get('axiom_audit',{}).get('unexpected_axioms')
    rec=next(x for x in records if x['source']==root)
    assert rec['axiom_audit']['printed'] and all(set(x['axioms'])<=ALLOWED for x in rec['axiom_audit']['printed'])
    assert q['output_sha256']==rec['output_sha256']
    return rp.relative_to(repo).as_posix()
def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--plan',type=Path,required=True);ap.add_argument('--package-root',type=Path,required=True);ap.add_argument('--dry-run',action='store_true');a=ap.parse_args()
    repo=Path.cwd();run=repo/RUN;plan=json.loads(a.plan.read_text());jobs=plan['jobs'];assert len({x['name'] for x in jobs})==len(jobs)
    for j in jobs:
        p=(run/j['root']).resolve();assert p.is_relative_to(run/'lean') and sha(p)==j['source_sha256']
    if a.dry_run:print(json.dumps({'status':'source_preflight_ready_no_Lean','jobs':len(jobs)}));return 0
    stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ');out=run/'verification'/('huan-b-queue-'+stamp);out.mkdir();(out/'controller-source.py').write_bytes(Path(__file__).read_bytes());(out/'plan.json').write_bytes(a.plan.read_bytes());state={'status':'running','started_utc':datetime.now(timezone.utc).isoformat(),'plan':a.plan.as_posix(),'plan_sha256':sha(a.plan),'jobs':[],'new_B_original_results':0};write_json(out/'state.json',state)
    for idx,job in enumerate(jobs):
        item={'name':job['name'],'root':job['root'],'source_sha256':job['source_sha256'],'status':'preparing'};state['jobs'].append(item);write_json(out/'state.json',state)
        try:
            assert sha(run/job['root'])==job['source_sha256'],'queued source changed'
            receipt=valid_existing(repo,run,job)
            if receipt:item.update(status='existing_complete_receipt_validated',receipt=receipt)
            else:
                missing=[x for x in job['reuse'] if not (repo/x).is_file()]
                if missing:item.update(status='skipped_missing_successful_dependency',missing=missing)
                else:
                    cmd=[sys.executable,'-B',str(RUN/'verification/runner/verify_huan_candidate.py'),'--name',job['name'],'--root',job['root'],'--package-root',str(a.package_root),'--memory-mb',str(job['memory_mb'])]
                    for x in job['reuse']:cmd.extend(['--reuse',x])
                    log=out/(f'{idx:02d}-'+job['name']+'.log');item.update(status='running',command=cmd,log=log.relative_to(repo).as_posix());write_json(out/'state.json',state)
                    with log.open('w',encoding='utf-8') as stream:rc=subprocess.run(cmd,cwd=repo,stdout=stream,stderr=subprocess.STDOUT,env={**os.environ,'PYTHONUTF8':'1','PYTHONDONTWRITEBYTECODE':'1'},creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0)).returncode
                    item['exit_code']=rc
                    if rc:item['status']='failed_not_accepted'
                    else:item.update(status='accepted_prerequisite',receipt=valid_existing(repo,run,job));assert item['receipt']
        except Exception as exc:item.update(status='controller_check_failed',error=str(exc))
        item['finished_utc']=datetime.now(timezone.utc).isoformat();write_json(out/'state.json',state);print(json.dumps({k:item.get(k) for k in ['name','status','exit_code','receipt','error']},ensure_ascii=False),flush=True)
    state.update(status='queue_finished',finished_utc=datetime.now(timezone.utc).isoformat());write_json(out/'state.json',state);print(json.dumps({'state':(out/'state.json').relative_to(repo).as_posix(),'accepted':sum(x['status'] in ['accepted_prerequisite','existing_complete_receipt_validated'] for x in state['jobs']),'pending_or_failed':sum(x['status'] not in ['accepted_prerequisite','existing_complete_receipt_validated'] for x in state['jobs']),'new_B_original_results':0}),flush=True);return 0
if __name__=='__main__':raise SystemExit(main())