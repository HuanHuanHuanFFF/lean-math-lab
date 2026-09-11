"""Serial phase-A continuation. Only complete original roots update acceptance."""
from pathlib import Path
import argparse, hashlib, json, os, subprocess, sys, time
from datetime import datetime, timezone
from huan_atomic import write_json
RUN=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
SHARED=RUN/'verification/20260911T004440769454Z/evidence.json'
ALLOWED={'propext','Classical.choice','Quot.sound'}
def stamp():return datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
def accept_row(repo,i,evidence):
    e=json.loads((repo/evidence).read_text(encoding='utf-8'))
    if not e['success'] or e['exit_code']!=0:raise RuntimeError('Unsuccessful root cannot be accepted')
    if len(e['root_sources'])!=1:raise RuntimeError('Expected one complete root')
    root=e['root_sources'][0]
    text=(repo/root).read_text(encoding='utf-8')
    statement=f'∀ n j : ℕ, 1 ≤ {i} ∧ {i} < j ∧ j ≤ n / 2 →\n      ∃ p : ℕ, p.Prime ∧ {i} ≤ p ∧ p ∣ Nat.choose n {i} ∧ p ∣ Nat.choose n j := by'
    if statement not in text:raise RuntimeError('Full original statement mismatch')
    record=next(x for x in e['compile_records'] if x['source']==root)
    name=f'B699LowIndex.LowIndexLean513dc7cc.common_i{i:03d}'
    axioms=[x for x in record['axiom_audit']['printed'] if x['declared_name']==name]
    if len(axioms)!=1 or not set(axioms[0]['axioms'])<=ALLOWED:raise RuntimeError('Root axiom audit mismatch')
    if hashlib.sha256((repo/root).read_bytes()).hexdigest()!=record['source_sha256_after']:raise RuntimeError('Root changed after verification')
    if record.get('failure') or record['exit_code']!=0:raise RuntimeError('Root did not compile')
    plan=json.loads((repo/RUN/f'verification/huan-plans/row{i:03d}.json').read_text(encoding='utf-8'))
    state_path=repo/RUN/'target-status.json'
    state=json.loads(state_path.read_text(encoding='utf-8'))
    row=next(x for x in state['targets'] if x['i']==i and x['phase']=='A')
    row.update(full_original_statement_accepted=True,status='huan_full_original_lean_accepted',accepted_declaration=name,evidence=evidence.as_posix(),source_commit=e['source_commit'],source_sha256=record['source_sha256_after'],output_sha256=record['output_sha256'],axioms=axioms[0]['axioms'],publication_status='local_verified_not_pushed',proof_publication_commit=None,verified_components={'witnesses_checked':plan['goods'],'witness_total':plan['goods'],'cover_layers_checked':plan['layers'],'layer_total':plan['layers'],'full_row_check':True,'original_consumer':True})
    state['completed_phase_a']=sorted(x['i'] for x in state['targets'] if x['phase']=='A' and x['full_original_statement_accepted'])
    current=state.setdefault('counter_semantics',{}).setdefault('huan_new_original_indices',[])
    if i not in current:current.append(i);current.sort()
    state['counter_semantics']['huan_new_original_indices_meaning']='new full original-statement Lean formalizations, not new paper mathematics'
    state['new_lean_acceptance']=len(state['completed_phase_a'])
    state['last_verified_event']={'kind':'huan_new_full_original_lean_index','i':i,'evidence':evidence.as_posix(),'base_commit':e['source_commit'],'novelty_claimed':False}
    write_json(state_path,state)
    summary={'i':i,'declaration':name,'full_original_statement':True,'evidence':evidence.as_posix(),'root':root,'source_sha256':record['source_sha256_after'],'axioms':axioms[0]['axioms'],'new_modules':e['compiled_count'],'reused_modules':e['reused_count'],'verification_seconds':sum(x['seconds'] for x in e['compile_records']),'sampled_peak_tree_bytes':max(x.get('windows_process_tree',{}).get('peak_tree_working_set_bytes',0) for x in e['commands']),'novelty_claimed':False,'publication_status':'local_verified_not_pushed'}
    write_json(repo/RUN/f'verification/huan-accepted/row{i:03d}.json',summary)
    return summary

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--repo',type=Path,default=Path('.'))
    p.add_argument('--package-root',type=Path,required=True)
    p.add_argument('--start',type=int,default=47)
    p.add_argument('--end',type=int,default=184)
    p.add_argument('--memory-mb',type=int,default=2048)
    p.add_argument('--block-size',type=int,choices=[4,8,16,32,64,1024],default=8)
    p.add_argument('--timeout',type=int,default=900)
    p.add_argument('--accept-existing',type=Path)
    p.add_argument('--i',type=int)
    a=p.parse_args();repo=a.repo.resolve()
    if a.accept_existing:
        if a.i is None:p.error('--accept-existing requires --i')
        print(json.dumps(accept_row(repo,a.i,a.accept_existing)));return 0
    if not 47<=a.start<=a.end<=184:p.error('Continuation range must be inside 47..184')
    initial=json.loads((repo/RUN/'target-status.json').read_text())
    if 46 not in initial['completed_phase_a']:raise RuntimeError('Representative full Row046 must pass first')
    runner=repo/RUN/'verification/runner'
    out=repo/RUN/'verification'/('huan-batch-'+stamp());out.mkdir(parents=True)
    rows=[]
    report={'status':'running','requested_indices':list(range(a.start,a.end+1)),'rows':rows,'started_utc':datetime.now(timezone.utc).isoformat()}
    write_json(out/'state.json',report)
    env=dict(os.environ,PYTHONUTF8='1',PYTHONDONTWRITEBYTECODE='1',GIT_OPTIONAL_LOCKS='0')
    def command(args,log):
        with log.open('w',encoding='utf-8',newline='\n') as stream:
            return subprocess.run([sys.executable,'-B',*map(str,args)],cwd=repo,env=env,stdout=stream,stderr=subprocess.STDOUT,creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0)).returncode
    for i in range(a.start,a.end+1):
        control=repo/RUN/'verification/huan-control.json'
        if control.exists() and json.loads(control.read_text()).get('pause_before_next_row'):
            report.update(status='operator_requested_checkpoint',next_i=i);write_json(out/'state.json',report);return 75
        state=json.loads((repo/RUN/'target-status.json').read_text())
        if i in state['completed_phase_a']:
            rows.append({'i':i,'status':'already_accepted_skipped'});write_json(out/'state.json',report);continue
        print('ROW_START '+json.dumps({'i':i,'memory_mb':a.memory_mb,'block_size':a.block_size}),flush=True)
        record={'i':i,'status':'preparing','started_utc':datetime.now(timezone.utc).isoformat()};rows.append(record)
        write_json(out/'state.json',report)
        plan=RUN/f'verification/huan-plans/row{i:03d}.json'
        if not (repo/plan).exists():
            rc=command([runner/'generate_huan_row.py','--i',i,'--plan',plan],out/f'row{i:03d}-generate.log')
            if rc:record.update(status='generation_failed',exit_code=rc);write_json(out/'state.json',report);continue
        output=RUN/f'lean/rows/Row{i:03d}B{a.block_size}'
        manifest=repo/output/'bundle-manifest.json'
        if not manifest.exists():
            rc=command([runner/'bundle_huan_row.py','--repo-root',repo,'--plan',repo/plan,'--output',repo/output,'--block-size',a.block_size],out/f'row{i:03d}-bundle.log')
            if rc:record.update(status='bundling_failed',exit_code=rc);write_json(out/'state.json',report);continue
        m=json.loads(manifest.read_text());root=m['root']
        before=set((repo/RUN/'verification').glob('20*/evidence.json'))
        log=out/f'row{i:03d}-verify.log'
        rc=command([runner/'verify_huan.py','--repo',repo,'--package-root',a.package_root.resolve(),'--root',root,'--reuse',SHARED,'--memory-mb',a.memory_mb,'--timeout',a.timeout],log)
        after=set((repo/RUN/'verification').glob('20*/evidence.json'))-before
        matches=[p for p in after if json.loads(p.read_text()).get('root_sources')==[root]]
        if len(matches)!=1:raise RuntimeError('No unique fresh row evidence')
        evidence=matches[0].relative_to(repo);d=json.loads(matches[0].read_text())
        record.update(evidence=evidence.as_posix(),exit_code=rc,finished_utc=datetime.now(timezone.utc).isoformat())
        if rc==0 and d['success']:
            accepted=accept_row(repo,i,evidence);record.update(status='full_original_accepted',summary=accepted)
            print('ROW_ACCEPTED '+json.dumps(accepted),flush=True)
        else:
            record.update(status='not_accepted',failure=d.get('failure'))
            print('ROW_FAILED '+json.dumps(record),flush=True)
        write_json(out/'state.json',report)
        if d.get('failure') and any(x in d['failure'] for x in ['Insufficient available memory','Insufficient disk']):
            report.update(status='resource_checkpoint_requires_adjustment');write_json(out/'state.json',report)
            return 2
    report.update(status='range_attempted_remaining_failures_retained',finished_utc=datetime.now(timezone.utc).isoformat())
    write_json(out/'state.json',report)
    print('BATCH_FINISHED '+json.dumps({'directory':out.relative_to(repo).as_posix(),'accepted':[x['i'] for x in rows if x['status']=='full_original_accepted'],'failed':[x['i'] for x in rows if x['status'] not in ['full_original_accepted','already_accepted_skipped']]}),flush=True)
    return 0 if all(x['status'] in ['full_original_accepted','already_accepted_skipped'] for x in rows) else 1
if __name__=='__main__':raise SystemExit(main())
