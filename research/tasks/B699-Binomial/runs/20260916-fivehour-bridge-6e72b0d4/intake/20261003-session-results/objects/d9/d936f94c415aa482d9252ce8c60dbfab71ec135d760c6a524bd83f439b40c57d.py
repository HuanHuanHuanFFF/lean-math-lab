#!/usr/bin/env python3
"""Offline R10 replay: fresh G4 mathematics, exact frozen output bytes and new audit.
No Lean, network, Git or G7 mathematics. Requires Python 3.10+ standard library.
"""
from __future__ import annotations
import argparse, datetime, hashlib, json, os, platform, shutil, subprocess, sys, tempfile, time
from pathlib import Path, PurePosixPath
ROOT=Path(__file__).resolve().parents[1]
STEPS=['seed_certify.py','check_seed_powers.py','graph_select.py','check_graph_heights.py',
       'block_compress.py','check_blocks.py','generate_four_certificate.py','check_four_certificate.py']
RESERVED={'PAYLOAD_SHA256.json','SHA256SUMS.json','CLEAN_REPLAY_RECEIPT.json'}

def clock():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def sha(data):return hashlib.sha256(data).hexdigest()
def canonical(obj):return json.dumps(obj,ensure_ascii=False,sort_keys=True,separators=(',',':')).encode()
def require(ok,msg):
    if not ok:raise ValueError(msg)

def safe_relative(p):
    q=PurePosixPath(p)
    require(not q.is_absolute() and '..' not in q.parts and '\\' not in p,'unsafe manifest path')
    return Path(*q.parts)

def check_manifest(name):
    p=ROOT/name
    if not p.exists():return None
    obj=json.loads(p.read_text());counts=0
    for n,h in obj['sha256'].items():
        f=ROOT/safe_relative(n)
        require(f.is_file() and not f.is_symlink(),'missing or symbolic member '+n)
        require(sha(f.read_bytes())==h,'member hash mismatch '+n);counts+=1
    return {'name':name,'sha256':sha(p.read_bytes()),'entries_verified':counts}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--receipt',type=Path);ap.add_argument('--logs',type=Path)
    args=ap.parse_args();require(sys.version_info>=(3,10),'Python 3.10+ required')
    begin=clock();t0=time.monotonic()
    manifests=[r for r in (check_manifest('PAYLOAD_SHA256.json'),check_manifest('SHA256SUMS.json')) if r]
    require(any(r['name']=='PAYLOAD_SHA256.json' for r in manifests),'missing payload manifest')
    pins=json.loads((ROOT/'sources/G4_MEMBER_PINS.json').read_text())
    source=ROOT/'sources/G4_fixed';expected_outputs={};programs=[]
    for name,pin in pins['members'].items():
        f=source/safe_relative(name);d=f.read_bytes()
        require(len(d)==pin['bytes'] and sha(d)==pin['expected_sha256'],'G4 original byte pin '+name)
        actual_blob=hashlib.sha1(b'blob '+str(len(d)).encode()+b'\0'+d).hexdigest()
        if pin.get('expected_blob'):require(actual_blob==pin['expected_blob'],'G4 original blob '+name)
        if name.endswith('.py'):programs.append(name)
        else:expected_outputs[name]=pin['expected_sha256']
    require(len(programs)==14 and len(expected_outputs)==9,'incomplete fixed closure')
    runs=[]
    with tempfile.TemporaryDirectory(prefix='b699-e-r10-') as tmp:
        work=Path(tmp)/'G4_clean';work.mkdir()
        for d in ['input','outputs','code','baseline/low/code']:(work/d).mkdir(parents=True,exist_ok=True)
        for name in programs:
            p=work/safe_relative(name);p.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(source/name,p)
        # All mathematical outputs and generated inputs start absent.
        require(all(not(work/name).exists() for name in expected_outputs),'not a fresh mathematical output directory')
        logs=args.logs.resolve() if args.logs else Path(tmp)/'logs'
        logs.mkdir(parents=True,exist_ok=True)
        env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1';env['PYTHONHASHSEED']='0';env['PYTHONIOENCODING']='utf-8'
        def execute(k,name,argv):
            start=clock();ticks=time.monotonic();out=logs/f'{k:02d}-{name}.stdout.txt';err=logs/f'{k:02d}-{name}.stderr.txt'
            code=None
            try:
                with out.open('wb') as stdout,err.open('wb') as stderr:
                    p=subprocess.run(argv,cwd=work,env=env,stdout=stdout,stderr=stderr,timeout=180)
                code=p.returncode
            finally:
                runs.append({'stage':name,'argv':argv,'start_utc':start,'end_utc':clock(),'seconds':time.monotonic()-ticks,
                    'exit_code':code,'stdout_sha256':sha(out.read_bytes()) if out.exists() else None,
                    'stderr_sha256':sha(err.read_bytes()) if err.exists() else None})
            require(code==0,'failed stage '+name+'; logs retained if --logs provided')
            print(json.dumps({'stage':name,'exit_code':code},ensure_ascii=False),flush=True)
        for k,name in enumerate(STEPS,1):execute(k,name,[sys.executable,'-B',str(work/'code'/name)])
        actual={}
        for name,h in expected_outputs.items():
            actual[name]=sha((work/name).read_bytes());require(actual[name]==h,'regenerated original data mismatch '+name)
        require(all(sha((work/name).read_bytes())==pins['members'][name]['sha256'] for name in programs),'source mutated')
        result_path=work/'R10_new_audit.json'
        execute(9,'R10_new_audit',[sys.executable,'-B',str(ROOT/'scripts/audit.py'),str(work),'--output',str(result_path)])
        audit=json.loads(result_path.read_text());expected=json.loads((ROOT/'certificates/R10_AUDIT.json').read_text())
        require(audit==expected,'new audit canonical mismatch')
        check=json.loads((work/'outputs/four_index_independent_check.json').read_text())
        totals={k:check[k] for k in ['bound_stages_checked','power_pairs_checked','unique_prime_witnesses','max_prime_witness']}
        normalized={'status':'PASS_G4_MATH_PAYLOAD_WITH_EXPLICIT_P_SIGN_REPAIR','original_output_hashes':actual,
            'new_audit_sha256':sha(canonical(audit)),'fixed_programs':14,'original_math_stages':8,
            'fixed_math_data':9,'totals':totals,'candidate_rows':audit['terminal']['total_candidates'],
            'graded_residual':audit['graded_sets']['after_mixed_residual'],
            'Lean_run':False,'external_theorem_internal_proofs_rechecked':False,'raw_original_ZIP_verified':False}
        receipt={'start_utc':begin,'end_utc':clock(),'elapsed_seconds':time.monotonic()-t0,'python':sys.version,
             'platform':platform.platform(),'manifests':manifests,'runs':runs,
             'result':normalized,'normalized_result_sha256':sha(canonical(normalized)),
             'scope':'actual offline finite re-execution plus payload hashes; paper arguments and BFT adopted inputs are not formal kernel proofs',
             'source_programs_unchanged':True,'fresh_outputs_reconstructed':True}
        if args.receipt:
            args.receipt.parent.mkdir(parents=True,exist_ok=True);args.receipt.write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
        print(json.dumps({'status':normalized['status'],'normalized_result_sha256':receipt['normalized_result_sha256'],
             'math_stages':8,'new_audit':True,'terminal_rows':normalized['candidate_rows'],'Lean_run':False},ensure_ascii=False),flush=True)
if __name__=='__main__':main()
