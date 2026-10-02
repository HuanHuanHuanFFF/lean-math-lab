#!/usr/bin/env python3
"""Offline P3 full numerical replay. The BFT publication contracts remain explicit.
Runs only the required original asymmetric-height and P3 mathematics, in fresh
work directories. It never executes Lean, Git, network calls, or archive wrappers.
"""
from __future__ import annotations
import argparse, datetime, hashlib, json, os, platform, shutil, subprocess, sys, tempfile, time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
IGNORE={'seconds','elapsed_seconds','check_seconds','peak_rss_kib','block_generation_seconds','block_certificate_bytes'}
SKIP={'source_check.json','regression_tests.json','cost_and_diagnostics.json'}

def sha(b):return hashlib.sha256(b).hexdigest()
def read(p):return json.loads(p.read_text(encoding='utf-8'))
def canonical(x):
    if isinstance(x,dict):return {k:canonical(v) for k,v in x.items() if k not in IGNORE}
    if isinstance(x,list):return [canonical(v) for v in x]
    return x

def digest(x):return sha(json.dumps(canonical(x),sort_keys=True,separators=(',',':')).encode())
def ensure(c,msg):
    if not c:raise ValueError(msg)

def safe_rel(s):
    p=Path(s);ensure(not p.is_absolute() and '..' not in p.parts,'unsafe relative path');return p

def integrity():
    name='SHA256SUMS.json' if (ROOT/'SHA256SUMS.json').exists() else 'PAYLOAD_SHA256.json'
    m=read(ROOT/name);seen=set()
    for x in m['members']:
        rel=safe_rel(x['path']);ensure(x['path'] not in seen,'duplicate manifest entry');seen.add(x['path'])
        p=ROOT/rel;ensure(p.is_file() and not p.is_symlink(),'missing/nonregular member '+str(rel))
        b=p.read_bytes();ensure(len(b)==x['bytes'] and sha(b)==x['sha256'],'member checksum '+str(rel))
    if name=='SHA256SUMS.json':
        actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file() and '__pycache__' not in p.parts}
        ensure(actual==seen|{name},'unlisted or missing delivery files')
    pins=read(ROOT/'sources/MEMBER_PINS.json')
    for x in pins['members']:
        b=(ROOT/safe_rel(x['path'])).read_bytes()
        expected=x.get('original_member_sha256',x.get('measured_sha256'))
        ensure(sha(b)==expected,'original source SHA256 '+x['path'])
        ensure(hashlib.sha1(b'blob '+str(len(b)).encode()+b'\0'+b).hexdigest()==x['git_blob'],'original Git blob '+x['path'])
    return dict(manifest=name,listed_members=len(seen),fixed_source_members=len(pins['members']))

def execute(command,cwd,logs,label,runs):
    start=time.monotonic();o=logs/(label+'.stdout.txt');e=logs/(label+'.stderr.txt')
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1');env.pop('PYTHONOPTIMIZE',None)
    with o.open('wb') as out,e.open('wb') as err:
        p=subprocess.run(command,cwd=cwd,env=env,stdout=out,stderr=err,timeout=600)
    record=dict(step=label,command=command,cwd=str(cwd),exit_code=p.returncode,seconds=time.monotonic()-start,
        stdout_sha256=sha(o.read_bytes()),stderr_sha256=sha(e.read_bytes()))
    runs.append(record);ensure(p.returncode==0,'failed '+label+'; inspect '+str(logs))
    print(label+': PASS',flush=True)

def main():
    ensure(not sys.flags.optimize,'Run without -O/-OO')
    ap=argparse.ArgumentParser();ap.add_argument('--receipt',type=Path);ap.add_argument('--log-dir',type=Path);args=ap.parse_args()
    started=datetime.datetime.now(datetime.timezone.utc).isoformat();t=time.monotonic();runs=[]
    status=integrity()
    with tempfile.TemporaryDirectory(prefix='B699-E-R11-clean-') as td:
        base=Path(td);asym=base/'asym';p3=base/'p3';logs=args.log_dir.resolve() if args.log_dir else base/'logs';logs.mkdir(parents=True,exist_ok=True)
        shutil.copytree(ROOT/'sources/ASYM_fixed/code',asym/'code')
        (asym/'results').mkdir();shutil.copy2(ROOT/'sources/ASYM_fixed/results/refined_profiles.json',asym/'results/refined_profiles.json')
        shutil.copytree(ROOT/'sources/P3_fixed/code',p3/'code');shutil.copytree(ROOT/'sources/P3_fixed/vendor',p3/'vendor');(p3/'results').mkdir()
        execute([sys.executable,'-B','code/verify_refined_profiles.py'],asym,logs,'01_original_asymmetric_height',runs)
        upstream=read(asym/'results/refined_certificate.json')
        adopted=[x for x in upstream['profiles'] if x['i'] in (11,16,21)]
        ensure({x['i']:x['height_bits'] for x in adopted}=={11:4096,16:65536,21:32768},'initial height to P3 source binding')
        ensure(all(x['cut_height_bits']==x['height_bits']-1 and x['comparison_margin']>0 for x in adopted),'initial source margin')
        uprecord=dict(status='PASS',all_old_cuts_replayed=upstream['analytic_cut_occurrences'],all_old_orientations=upstream['enumerated_orientations'],
          adopted_profiles=adopted,seconds=0.0,scope='Finite arithmetic replay only. Old frontier strings ignored; not a reproof of BFT or a new seven-index result.')
        (p3/'results/upstream_replay.json').write_text(json.dumps(uprecord),encoding='utf-8')
        for k,name in enumerate(['block_targets.py','crt_descent.py','terminal_targets.py','check_targets.py'],2):
            execute([sys.executable,'-B','code/'+name],p3,logs,f'{k:02d}_original_{name[:-3]}',runs)
        legacy=read(ROOT/'sources/P3_fixed/replay/reproduction.json')
        ensure(set(legacy['excluded_nonmathematical_fields'])==IGNORE,'canonicalization field policy')
        matched=[]
        for x in legacy['compared_payloads']:
            if x['file'] in SKIP:continue
            p=p3/'results'/safe_rel(x['file']);ensure(p.is_file(),'missing complete regenerated payload '+x['file'])
            h=digest(read(p));ensure(h==x['canonical_mathematics_sha256'],'original canonical mismatch '+x['file'])
            shipped=read(ROOT/'certificates/P3_canonical'/x['file']);ensure(digest(shipped)==h,'shipped canonical mismatch')
            matched.append(dict(file=x['file'],canonical_mathematics_sha256=h))
        ensure(len(matched)==63,'incomplete mathematical payload coverage')
        newout=base/'new_audit.json'
        execute([sys.executable,'-B',str(ROOT/'scripts/audit.py'),'--asym-root',str(asym),'--p3-root',str(p3),'--output',str(newout)],
                base,logs,'06_new_application_audit',runs)
        audit=read(newout);ensure(audit==read(ROOT/'certificates/EXPECTED_AUDIT.json'),'new audit mathematical result mismatch')
        finite=read(p3/'results/independent_check.json')
        summary=dict(status='PASS',fixed_source_members=status['fixed_source_members'],
          canonical_math_payloads_matched=len(matched),canonical_payloads=matched,
          total_blocks=finite['total_blocks'],total_CRT_stages=sum(x['CRT_stages'] for x in finite['profiles']),
          total_CRT_pairs=finite['total_CRT_pairs'],total_candidates=finite['total_candidates'],
          total_residues=finite['total_residue_inequalities'],unique_primes=finite['unique_prime_witnesses'],
          source_cut_occurrences_recomputed=upstream['analytic_cut_occurrences'],
          P3_independently_recomputed_cuts=sum(len(x['source_cuts']) for x in audit['source_profiles']),
          negative_tests=len(audit['negative_tests']),new_author_audit_indices=[16,21],accepted_duplicate_index=11,
          remaining= audit['graded_sets']['after'],non_R7_remaining=audit['graded_sets']['non_R7_after'],
          original_archive_verified=False,whole_original_manifests_verified=False,
          skipped_legacy_administration_or_diagnostics=sorted(SKIP),
          publication_proofs_program_verified=False,Lean_run=False,project_acceptance_added=0,external_independent_review=False)
        if args.log_dir:
            (logs/'MATHEMATICAL_RESULT.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        receipt=dict(status='PASS',started_utc=started,finished_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
           python=sys.version,platform=platform.platform(),seconds=time.monotonic()-t,integrity=status,steps=runs,
           mathematical_result=summary,mathematical_result_sha256=digest(summary),
           scope='This actual clean local numerical replay; external BFT results and paper universal steps remain explicitly adopted, not Lean or external review.')
        if args.receipt:
            args.receipt.parent.mkdir(parents=True,exist_ok=True)
            args.receipt.write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print(json.dumps(dict(status='PASS',blocks=summary['total_blocks'],stages=summary['total_CRT_stages'],
              candidates=summary['total_candidates'],canonical_payloads=63,negative_tests=summary['negative_tests'],
              mathematical_result_sha256=receipt['mathematical_result_sha256']),ensure_ascii=False))
if __name__=='__main__':main()
