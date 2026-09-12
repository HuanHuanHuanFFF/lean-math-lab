"""Fresh unified A verification. Canonical receipts and the exact 151 types are required."""
from pathlib import Path
from datetime import datetime, timezone
import argparse, hashlib, json, os, re, subprocess, sys
from huan_atomic import write_json
import verify_huan_historical_v6 as historical
RUN = Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
INDICES = [29, *range(35, 185)]
NS = 'B699LowIndex.LowIndexLean513dc7cc.HuanAllA'
ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--package-root',type=Path,required=True)
    ap.add_argument('--memory-mb',type=int,default=2048)
    ap.add_argument('--preflight-only',action='store_true')
    ap.add_argument('--memory-profile',type=Path)
    args=ap.parse_args();repo=Path.cwd();run=repo/RUN
    mp=run/'verification/huan-all-a-plan/input-manifest.json';manifest=json.loads(mp.read_text())
    assert [x['i'] for x in manifest['entries']]==INDICES
    pending=[]
    for i in (29,35,36,37):
        receipt,error=historical.valid_receipt(repo,run,i)
        if receipt is None: pending.append({'i':i,'error':error})
    ready=not pending and manifest['static_checks']['all_historical_receipts_ready']
    if not ready:
        print(json.dumps({'status':'pending_historical_receipts_or_manifest','pending':pending,'manifest_ready':manifest['static_checks']['all_historical_receipts_ready']}));return 2
    root=RUN/'lean/HuanAllA.lean';source=(repo/root).read_text()
    assert [int(x) for x in re.findall(r'^theorem original_i(\d{3}) :',source,re.M)]==INDICES
    for i in INDICES:
        ty=(f'∀ n j : ℕ, 1 ≤ {i} ∧ {i} < j ∧ j ≤ n / 2 →\n'
            f'      ∃ p : ℕ, p.Prime ∧ {i} ≤ p ∧ p ∣ Nat.choose n {i} ∧ p ∣ Nat.choose n j')
        assert f'theorem original_i{i:03d} :\n    {ty} :=' in source
    for token in ['sorry','admit','native_decide','Lean.ofReduceBool','axiom ']:assert token not in source
    expected={f'{NS}.original_i{i:03d}' for i in INDICES}
    assert set(re.findall(r'^#print axioms (\S+)',source,re.M))==expected
    argv=manifest['reuse_evidence']['planned_argument_vector'];assert argv and len(argv)%2==0
    for index in range(0,len(argv),2):
        assert argv[index]=='--reuse'
        p=(repo/argv[index+1]).resolve();assert p.is_relative_to(run/'verification')
        obj=json.loads(p.read_text());assert obj.get('success') is True
    cmd=[sys.executable,'-B',str(RUN/'verification/runner/verify_huan.py'),'--repo','.',
         '--package-root',str(args.package_root),'--root',root.as_posix(),'--memory-mb',str(args.memory_mb),'--timeout','900',*argv]
    if args.memory_profile:cmd.extend(['--memory-profile',str(args.memory_profile)])
    assert len(subprocess.list2cmdline(cmd))<32767
    if args.preflight_only:
        print(json.dumps({'status':'preflight_ready_not_compiled','indices':len(INDICES),'reuse_evidences':len(argv)//2,'commandline_chars':len(subprocess.list2cmdline(cmd))}));return 0
    stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ');out=run/'verification'/('huan-all-a-verify-'+stamp);out.mkdir()
    (out/'controller-source.py').write_bytes(Path(__file__).read_bytes());(out/'input-manifest.json').write_bytes(mp.read_bytes());(out/'HuanAllA.source.lean.txt').write_bytes((repo/root).read_bytes())
    state={'status':'running','root':root.as_posix(),'source_sha256':sha(repo/root),'manifest_sha256':sha(mp),'command':cmd,'indices':INDICES,'new_original_results':0};write_json(out/'state.json',state)
    before=set((run/'verification').glob('20*/evidence.json'))
    with (out/'verify.log').open('w',encoding='utf-8') as log:
        rc=subprocess.run(cmd,cwd=repo,stdout=log,stderr=subprocess.STDOUT,env={**os.environ,'PYTHONUTF8':'1','PYTHONDONTWRITEBYTECODE':'1'},creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0)).returncode
    matches=[p for p in set((run/'verification').glob('20*/evidence.json'))-before if json.loads(p.read_text()).get('root_sources')==[root.as_posix()]];assert len(matches)==1
    ep=matches[0];e=json.loads(ep.read_text());state.update(exit_code=rc,evidence=ep.relative_to(repo).as_posix(),finished_utc=datetime.now(timezone.utc).isoformat(),failure=e.get('failure'))
    if rc or not e.get('success'):
        state['status']='failed_not_accepted';write_json(out/'state.json',state);print(json.dumps({k:v for k,v in state.items() if k not in ('command','indices')}));return 1
    assert sha(repo/root)==state['source_sha256'] and sha(mp)==state['manifest_sha256']
    rec=next(x for x in e['compile_records']+e['reuse_records'] if x['source']==root.as_posix())
    printed=rec['axiom_audit']['printed'];assert len(printed)==151 and {x['declared_name'] for x in printed}==expected
    assert not rec['axiom_audit']['unexpected_axioms'] and all(set(x['axioms'])<=ALLOWED for x in printed)
    assert rec['source_sha256_before']==rec['source_sha256_after']==state['source_sha256']
    assert sha(repo/rec['output'])==rec['output_sha256'] and sha(repo/rec['log'])==rec['log_sha256']
    accepted={'kind':'unified_full_original_A_consumers','status':'fresh_complete_Lean_verification','indices':INDICES,'count':151,'root':root.as_posix(),'source_sha256':state['source_sha256'],'evidence':ep.relative_to(repo).as_posix(),'evidence_sha256':sha(ep),'output':rec['output'],'output_sha256':rec['output_sha256'],'log':rec['log'],'log_sha256':rec['log_sha256'],'printed_original_declarations':printed,'compiled_modules':e['compiled_count'],'reused_modules':e['reused_count'],'verification_seconds':sum(x['seconds'] for x in e['compile_records']),'new_original_results':0,'B_original_results':0,'publication_status':'local_only_pending_explicit_authorization'}
    write_json(run/'verification/huan-all-a-plan/acceptance.json',accepted);state['status']='accepted_unified_A';write_json(out/'state.json',state)
    print(json.dumps({k:v for k,v in accepted.items() if k not in ('indices','printed_original_declarations')},ensure_ascii=False));return 0
if __name__=='__main__':raise SystemExit(main())