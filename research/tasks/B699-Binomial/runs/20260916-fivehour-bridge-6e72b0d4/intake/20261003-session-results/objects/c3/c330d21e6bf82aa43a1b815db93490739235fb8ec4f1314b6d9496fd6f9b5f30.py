#!/usr/bin/env python3
"""Offline clean replay of exact branch certificates and their adopted R6/R5 inputs."""
from __future__ import annotations
import argparse,hashlib,io,json,os,subprocess,sys,tempfile,time,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent
SHA6='080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c'
SHA5='6f11f03219cb7ee6d14ea9da49b7618dcc4f154d8965e4d341a434e6624f2af9'
def sha(b):return hashlib.sha256(b).hexdigest()
def manifest(payload=False):
    name='PAYLOAD_SHA256SUMS'if payload else'SHA256SUMS';rows={}
    for line in (ROOT/name).read_text().splitlines():
        h,n=line.split('  ',1)
        if len(h)!=64 or n in rows or Path(n).is_absolute()or'..'in Path(n).parts:raise ValueError('bad manifest entry')
        if sha((ROOT/n).read_bytes())!=h:raise AssertionError('member hash '+n)
        rows[n]=h
    skip={name}
    if payload:skip|={'SHA256SUMS','receipts/CLEAN_REPLAY.json'}
    files={p.relative_to(ROOT).as_posix()for p in ROOT.rglob('*')if p.is_file()}-skip
    if files!=set(rows):raise AssertionError('manifest coverage '+str(files.symmetric_difference(rows)))
    return dict(status='PASS',manifest=name,entries=len(rows),sha256=sha((ROOT/name).read_bytes()))
def zip_audit(data,expected):
    if sha(data)!=expected:raise AssertionError('archive SHA')
    z=zipfile.ZipFile(io.BytesIO(data));names=[n for n in z.namelist()if not n.endswith('/')]
    if z.testzip()is not None:raise AssertionError('archive CRC')
    if len(set(names))!=len(names):raise ValueError('duplicate archive member')
    for n in names:
        if Path(n).is_absolute()or'..'in Path(n).parts:raise ValueError('unsafe archive path')
    ms=[n for n in names if n.endswith('/SHA256SUMS')]
    if len(ms)!=1:raise ValueError('archive manifest count')
    pref=ms[0][:-len('SHA256SUMS')];seen={}
    for line in z.read(ms[0]).decode().splitlines():
        h,n=line.split('  ',1)
        if n in seen or sha(z.read(pref+n))!=h:raise AssertionError('archive member hash')
        seen[n]=h
    if set(names)!={pref+n for n in seen}|{ms[0]}:raise AssertionError('archive manifest coverage')
    return z,pref,dict(status='PASS',sha256=expected,crc='PASS',members=len(names),manifest_entries=len(seen))
def run(path,cwd=None):
    st=time.monotonic();env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    q=subprocess.run([sys.executable,'-B',str(path)],cwd=cwd or path.parent,env=env,capture_output=True,text=True)
    if q.returncode:raise RuntimeError(str(path)+'\n'+q.stdout+'\n'+q.stderr)
    result=json.loads(q.stdout)
    if result.get('status')!='PASS':raise AssertionError('no PASS from '+str(path))
    return dict(status='PASS',program=path.name,source_sha256=sha(path.read_bytes()),exit_code=q.returncode,seconds=round(time.monotonic()-st,4),stdout_sha256=sha(q.stdout.encode()),stderr=q.stderr,result=result)
def adopted():
    z6,p6,a6=zip_audit((ROOT/'inputs/R6_EVIDENCE.zip').read_bytes(),SHA6)
    data5=z6.read(p6+'inputs/PREVIOUS_EVIDENCE.zip');z5,p5,a5=zip_audit(data5,SHA5)
    for name in ['PROOFS.md','HANDOFF.md','SOURCE_ADOPTION.md','FAILURE_BOUNDARIES.md']:
        if (ROOT/'inputs'/('R6_'+name)).read_bytes()!=z6.read(p6+name):raise AssertionError('R6 copied text')
    if (ROOT/'inputs/R14_HANDOFF.md').read_bytes()!=z6.read(p6+'inputs/R14_HANDOFF.md'):raise AssertionError('R14 copied text')
    with tempfile.TemporaryDirectory(prefix='reg3-adopted-')as td:
        td=Path(td);z6.extractall(td/'r6');z5.extractall(td/'r5')
        r6=run(td/'r6'/p6/'replay.py');r5=run(td/'r5'/p5/'replay.py')
    return dict(R6_archive=a6,R5_archive=a5,R6_actual_replay=r6,R5_actual_replay=r5,R4_math_reexecuted=False,large_overview_raw_sha_verified=False,new_remote_source_comparison=False)
def main():
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--payload',action='store_true');ap.add_argument('--receipt',type=Path);args=ap.parse_args();st=time.monotonic()
    if args.receipt and (args.receipt.resolve()==ROOT or ROOT in args.receipt.resolve().parents):raise ValueError('receipt must be outside immutable input package')
    before=manifest(args.payload);a=adopted();programs=[run(ROOT/'code/verify.py'),run(ROOT/'code/test_guards.py')];after=manifest(args.payload)
    out=dict(status='PASS',seconds=round(time.monotonic()-st,4),manifest_before=before,adoption=a,programs=programs,manifest_after=after,claim='exact H and Jcal complex branch exclusions / N coordinate; NOT global saturated UNIT, complete RUR, Lean, or original NC3 closure',original_net_gain='0 / unverified')
    text=json.dumps(out,ensure_ascii=False,indent=2)+'\n'
    if args.receipt:args.receipt.write_text(text)
    print(text,end='')
if __name__=='__main__':main()
