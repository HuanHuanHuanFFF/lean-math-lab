#!/usr/bin/env python3
"""Self-contained R5 replay. Standard library only; no network, Lean or repository writes."""
from __future__ import annotations
import argparse,hashlib,json,os,subprocess,sys,time,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent
R4_SHA='1fb349775f703798be07ab669b569d0b33cf11a1fbdaf2bf0eb202da86223dbc'
R14_SHA='400b3af9713f0c528be83ff1fae2935879a987b91bf3873068d93e68049f0461'

def digest(data:bytes)->str:return hashlib.sha256(data).hexdigest()
def manifest_check(name:str)->dict:
    if name not in ['SHA256SUMS','PAYLOAD_SHA256SUMS']:raise ValueError('Unknown manifest')
    p=ROOT/name;listed={}
    for line in p.read_text().splitlines():
        sha,rel=line.split('  ',1)
        if len(sha)!=64 or rel in listed or Path(rel).is_absolute() or '..' in Path(rel).parts:raise ValueError('Invalid manifest entry')
        f=ROOT/rel
        if not f.is_file() or digest(f.read_bytes())!=sha:raise AssertionError('Manifest mismatch: '+rel)
        listed[rel]=sha
    skip={name}
    if name=='PAYLOAD_SHA256SUMS':skip|={'SHA256SUMS','receipts/CLEAN_REPLAY.json'}
    actual={f.relative_to(ROOT).as_posix()for f in ROOT.rglob('*')if f.is_file()}-skip
    if actual!=set(listed):raise AssertionError('Member set mismatch: '+repr(sorted(actual.symmetric_difference(listed))))
    return {'status':'PASS','manifest':name,'entries':len(listed),'manifest_sha256':digest(p.read_bytes())}

def source_check()->dict:
    p=ROOT/'inputs/PREVIOUS_EVIDENCE.zip'
    if digest(p.read_bytes())!=R4_SHA:raise AssertionError('R4 ZIP hash mismatch')
    with zipfile.ZipFile(p)as z:
        if z.testzip() is not None:raise AssertionError('R4 ZIP CRC mismatch')
        names=[n for n in z.namelist()if not n.endswith('/')]
        if len(names)!=60 or len(names)!=len(set(names)):raise AssertionError('R4 ZIP members')
        prefix=next(n[:-len('SHA256SUMS')]for n in names if n.endswith('/SHA256SUMS') and not n.endswith('PAYLOAD_SHA256SUMS'))
        checks={}
        for line in z.read(prefix+'SHA256SUMS').decode().splitlines():
            sha,rel=line.split('  ',1)
            if digest(z.read(prefix+rel))!=sha:raise AssertionError('R4 member '+rel)
            checks[rel]=sha
        if len(checks)!=59 or set(names)!={prefix+r for r in checks}|{prefix+'SHA256SUMS'}:raise AssertionError('R4 manifest coverage')
        bindings={
          'inputs/generic.json':'inputs/generic.json',
          'inputs/R1_scale.json':'inputs/R1_scale.json',
          'inputs/recovery.json':'inputs/recovery.json',
          'inputs/R14_HANDOFF.md':'inputs/R14_HANDOFF.md',
          'inputs/R4_HANDOFF.md':'HANDOFF.md',
          'inputs/R4_branch_factors.json':'certificates/branch_factors.json',
          'code/ipoly.py':'code/ipoly.py',
          'code/recover.py':'code/recover.py',
          'code/affine_audit.py':'code/affine_audit.py',
          'code/original_pair_audit.py':'code/original_pair_audit.py'}
        hashes={}
        for dst,src in bindings.items():
            a=(ROOT/dst).read_bytes();b=z.read(prefix+src)
            if a!=b:raise AssertionError('Copied source mismatch '+dst)
            hashes[dst]=digest(a)
    if hashes['inputs/R14_HANDOFF.md']!=R14_SHA:raise AssertionError('R14 bytes')
    receipt=json.loads((ROOT/'receipts/R4_ADOPTION_REPLAY.json').read_text())
    if receipt.get('status')!='PASS':raise AssertionError('Prior actual replay receipt')
    return {'status':'PASS','zip_sha256':R4_SHA,'crc':'PASS','members':60,'original_manifest_entries':59,'copied_source_hashes':hashes,'prior_full_replay_receipt_retained':True,'prior_math_reexecution_in_this_command':False,'specified_overview_bytes_verified':False}

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--manifest',choices=['SHA256SUMS','PAYLOAD_SHA256SUMS'],default='SHA256SUMS')
    p.add_argument('--receipt',help='Optional output receipt path OUTSIDE this frozen package.')
    a=p.parse_args();outpath=Path(a.receipt).resolve()if a.receipt else None
    if outpath and (outpath==ROOT or ROOT in outpath.parents):raise ValueError('Receipt must be outside the frozen package')
    t=time.monotonic();before=manifest_check(a.manifest);src=source_check();programs=[]
    for program,expected in [('code/verify.py',115),('code/test_consumers.py',26)]:
        start=time.monotonic()
        run=subprocess.run([sys.executable,'-I','-B',str(ROOT/program)],cwd=ROOT,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True,check=False)
        if run.returncode:raise RuntimeError(program+' FAILED\n'+run.stderr+'\n'+run.stdout)
        result=json.loads(run.stdout)
        if result.get('status')!='PASS' or result.get('checks')!=expected:raise AssertionError('Unexpected checker receipt '+program)
        programs.append({'program':program,'exit_code':run.returncode,'seconds':round(time.monotonic()-start,4),'source_sha256':digest((ROOT/program).read_bytes()),'stdout_sha256':digest(run.stdout.encode()),'stderr':run.stderr,'result':result})
    after=manifest_check(a.manifest)
    out={'status':'PASS','seconds':round(time.monotonic()-t,4),'manifest_before':before,'source_audit':src,'programs':programs,'manifest_after':after,
      'network_used':False,'lean_run':False,'repository_touched':False,'external_independent_math_review':False,
      'proof_scope':'J real-base and A5 rational-base full subdomain terminals, B9-H gate and four EXCLUDED boundary RUR points; no complete Omega endpoint',
      'global_modular_UNIT_adopted_as_Q_proof':False,'historical_original_net_gain':'0 / unverified'}
    text=json.dumps(out,ensure_ascii=False,indent=2)+'\n'
    if outpath:outpath.parent.mkdir(parents=True,exist_ok=True);outpath.write_text(text)
    print(text,end='')
if __name__=='__main__':main()
