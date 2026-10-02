#!/usr/bin/env python3
"""Immutable R6 replay: source hashes, exact integer certificates, regression guards."""
from __future__ import annotations
import argparse,hashlib,io,json,os,subprocess,sys,tempfile,time,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent
R5SHA='6f11f03219cb7ee6d14ea9da49b7618dcc4f154d8965e4d341a434e6624f2af9'
R4SHA='1fb349775f703798be07ab669b569d0b33cf11a1fbdaf2bf0eb202da86223dbc'
R1SHA='ccc7ffd50366e33ef859f181a48841f967f2c6951327093b9a0d429726d41ecc'
R14SHA='400b3af9713f0c528be83ff1fae2935879a987b91bf3873068d93e68049f0461'
def sha(data):return hashlib.sha256(data).hexdigest()
def manifest(name):
    if name not in ['SHA256SUMS','PAYLOAD_SHA256SUMS']:raise ValueError('unknown manifest')
    rows={}
    for line in (ROOT/name).read_text().splitlines():
        h,p=line.split('  ',1)
        if len(h)!=64 or p in rows or Path(p).is_absolute() or '..' in Path(p).parts:raise ValueError('bad manifest')
        if sha((ROOT/p).read_bytes())!=h:raise AssertionError('hash mismatch '+p)
        rows[p]=h
    skip={name}
    if name=='PAYLOAD_SHA256SUMS':skip|={'SHA256SUMS','receipts/CLEAN_REPLAY.json'}
    actual={p.relative_to(ROOT).as_posix()for p in ROOT.rglob('*')if p.is_file()}-skip
    if actual!=set(rows):raise AssertionError('manifest member mismatch '+str(actual.symmetric_difference(rows)))
    return {'status':'PASS','manifest':name,'entries':len(rows),'sha256':sha((ROOT/name).read_bytes())}
def zipcheck(data,expected):
    if sha(data)!=expected:raise AssertionError('source archive SHA')
    z=zipfile.ZipFile(io.BytesIO(data))
    if z.testzip()is not None:raise AssertionError('source CRC')
    names=[n for n in z.namelist()if not n.endswith('/')]
    if len(names)!=len(set(names)):raise AssertionError('duplicate archive member')
    for n in names:
        if Path(n).is_absolute()or '..'in Path(n).parts:raise ValueError('unsafe archive path')
    m=[n for n in names if n.endswith('/SHA256SUMS')]
    if len(m)!=1:raise AssertionError('source manifest')
    prefix=m[0][:-len('SHA256SUMS')];rows={}
    for line in z.read(m[0]).decode().splitlines():
        h,p=line.split('  ',1)
        if p in rows or sha(z.read(prefix+p))!=h:raise AssertionError('source member hash')
        rows[p]=h
    if set(names)!={prefix+p for p in rows}|{m[0]}:raise AssertionError('source coverage')
    return z,prefix,{'status':'PASS','sha256':expected,'crc':'PASS','members':len(names),'manifest_entries':len(rows)}
def sources():
    z,p,a=zipcheck((ROOT/'inputs/PREVIOUS_EVIDENCE.zip').read_bytes(),R5SHA)
    bindings={f'inputs/{n}':f'inputs/{n}'for n in ['generic.json','R1_scale.json','recovery.json','R14_HANDOFF.md','R4_branch_factors.json']}
    bindings.update({f'inputs/R5_{n}':n for n in ['HANDOFF.md','PROOFS.md','SOURCE_ADOPTION.md']})
    bindings.update({f'code/{n}':f'code/{n}'for n in ['ipoly.py','recover.py','affine_audit.py','original_pair_audit.py']})
    bound={}
    for dst,src in bindings.items():
        v=(ROOT/dst).read_bytes()
        if v!=z.read(p+src):raise AssertionError('copied R5 source '+dst)
        bound[dst]=sha(v)
    if bound['inputs/R14_HANDOFF.md']!=R14SHA:raise AssertionError('R14 bytes')
    z4,p4,a4=zipcheck(z.read(p+'inputs/PREVIOUS_EVIDENCE.zip'),R4SHA)
    for n in ['PROOFS.md','HANDOFF.md']:
        v=(ROOT/'inputs'/('R4_'+n)).read_bytes()
        if v!=z4.read(p4+n):raise AssertionError('R4 proof binding')
        bound['inputs/R4_'+n]=sha(v)
    z1,p1,a1=zipcheck((ROOT/'inputs/R1_EVIDENCE.zip').read_bytes(),R1SHA)
    if (ROOT/'inputs/R1_regular.json').read_bytes()!=z1.read(p1+'certificates/regular.json'):raise AssertionError('R1 regular binding')
    old=json.loads((ROOT/'receipts/R5_ADOPTION_REPLAY.json').read_text())
    if old.get('status')!='PASS':raise AssertionError('R5 actual prior replay receipt')
    return {'status':'PASS','R5':a,'R4_nested_source_only':a4,'R1_source_only':a1,'copied_source_hashes':bound,'R5_actual_replay_in_this_round_receipt':'receipts/R5_ADOPTION_REPLAY.json','R4_full_math_reexecuted_in_this_command':False,'specified_large_overview_raw_sha_verified':False}
def run(script):
    t=time.monotonic();env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    p=subprocess.run([sys.executable,'-B',str(ROOT/script)],cwd=ROOT,env=env,capture_output=True,text=True,check=False)
    if p.returncode:raise RuntimeError(script+' failed\n'+p.stdout+'\n'+p.stderr)
    result=json.loads(p.stdout)
    if result.get('status')!='PASS':raise AssertionError(script+' no PASS')
    return {'program':script,'exit_code':p.returncode,'seconds':round(time.monotonic()-t,4),'source_sha256':sha((ROOT/script).read_bytes()),'stdout_sha256':sha(p.stdout.encode()),'stderr':p.stderr,'result':result}
def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--payload',action='store_true');ap.add_argument('--receipt');ap.add_argument('--replay-adopted-r5',action='store_true');args=ap.parse_args();t=time.monotonic()
    m='PAYLOAD_SHA256SUMS'if args.payload else 'SHA256SUMS';before=manifest(m);ss=sources();programs=[run('code/verify.py'),run('code/test_consumers.py')];extra=None
    if args.replay_adopted_r5:
        with tempfile.TemporaryDirectory(prefix='r6-r5-replay-')as td:
            with zipfile.ZipFile(ROOT/'inputs/PREVIOUS_EVIDENCE.zip')as z:z.extractall(td)
            entry=next(Path(td).glob('*/replay.py'));p=subprocess.run([sys.executable,'-B',str(entry)],cwd=entry.parent,capture_output=True,text=True,env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1'))
            if p.returncode:raise RuntimeError('R5 optional replay failed '+p.stderr)
            extra=json.loads(p.stdout)
    after=manifest(m)
    out={'status':'PASS','seconds':round(time.monotonic()-t,4),'manifest_before':before,'source_audit':ss,'programs':programs,'optional_R5_replay':extra,'manifest_after':after,'claim':'exact N^3 memberships and conditional bound only; NOT global UNIT, RUR completeness, Lean or independent mathematical review'}
    text=json.dumps(out,ensure_ascii=False,indent=2)+'\n'
    if args.receipt:Path(args.receipt).write_text(text)
    print(text,end='')
if __name__=='__main__':main()
