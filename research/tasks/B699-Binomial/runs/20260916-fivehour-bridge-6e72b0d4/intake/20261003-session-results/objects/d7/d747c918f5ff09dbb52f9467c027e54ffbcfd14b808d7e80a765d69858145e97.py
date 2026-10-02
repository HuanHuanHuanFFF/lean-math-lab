#!/usr/bin/env python3
"""Offline reproducibility receipt. Never executes ancestor research or Lean."""
from __future__ import annotations
import argparse, hashlib, io, json, subprocess, sys, tempfile, zipfile
from pathlib import Path, PurePosixPath

PARENT_SHA='112d977f084aa42d718b5e6718a57b1d93e0442e5ee8ae0f578956f2ac61a5ca'
EXCLUDED={'MEMBERS.json','SHA256SUMS.txt','logs/CLEAN_REPLAY_RECEIPT.json'}
def sha(b):return hashlib.sha256(b).hexdigest()
def need(ok,msg):
    if not ok:raise ValueError(msg)
def canonical(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def safe(name):
    p=PurePosixPath(name)
    need(not p.is_absolute() and '..' not in p.parts and '\\' not in name,'unsafe member path')

def audit_archive(data,chain='D-R04'):
    out=[]
    with zipfile.ZipFile(io.BytesIO(data)) as z:
        names=[i.filename for i in z.infolist() if not i.is_dir()]
        need(len(names)==len(set(names)),'duplicate archive member')
        for n in names:safe(n)
        need(z.testzip() is None,'archive CRC')
        manifest=[n for n in names if n.endswith('/SHA256SUMS.txt') or n=='SHA256SUMS.txt']
        need(len(manifest)==1,'parent SHA manifest ambiguity')
        prefix=manifest[0][:-len('SHA256SUMS.txt')]
        for line in z.read(manifest[0]).decode().splitlines():
            if not line.strip():continue
            h,n=line.split('  ',1);safe(n)
            need(prefix+n in names,'parent declared member missing')
            need(sha(z.read(prefix+n))==h.lower(),'parent declared SHA mismatch')
        for n in sorted(names):
            b=z.read(n);out.append({'archive_chain':chain,'member':n,'size':len(b),'sha256':sha(b)})
            if n.lower().endswith('.zip'):out.extend(audit_archive(b,chain+'!'+n))
    return out

def manifest_check(root):
    files={p.relative_to(root).as_posix():p for p in root.rglob('*') if p.is_file()}
    need(all(not p.is_symlink() for p in root.rglob('*')),'symlink in replay tree')
    checks={}
    for line in (root/'SHA256SUMS.txt').read_text().splitlines():
        if not line.strip():continue
        h,n=line.split('  ',1);safe(n);need(n not in checks,'duplicate SHA entry');checks[n]=h
    need(set(checks)==set(files)-{'SHA256SUMS.txt'},'SHA manifest does not exactly cover members')
    for n,h in checks.items():need(sha(files[n].read_bytes())==h,'member SHA mismatch: '+n)
    members=json.loads((root/'MEMBERS.json').read_text())
    expected=set(files)-{'MEMBERS.json','SHA256SUMS.txt'}
    need({r['path'] for r in members['members']}==expected,'MEMBERS coverage')
    for r in members['members']:
        b=files[r['path']].read_bytes();need(r['sha256']==sha(b) and r['size']==len(b),'MEMBERS SHA')
    payload=[{'path':n,'size':p.stat().st_size,'sha256':sha(p.read_bytes())} for n,p in sorted(files.items()) if n not in EXCLUDED]
    return files,members,sha(canonical(payload))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);args=ap.parse_args()
    root=Path(__file__).resolve().parent;files,members,payload=manifest_check(root)
    parent=(root/'dependencies/D-R04-evidence.zip').read_bytes();need(sha(parent)==PARENT_SHA,'wrong parent ZIP')
    ancestor_rows=audit_archive(parent)
    need(ancestor_rows==members['recursive_parent_members'],'recursive provenance mismatch')
    with tempfile.TemporaryDirectory(prefix='b699-r05-replay-') as td:
        tmp=Path(td);cert=tmp/'certificate.json';receipt=tmp/'VERIFY.json'
        commands=[
          [sys.executable,'-I','-B',str(root/'scripts/build_certificate.py'),'--output',str(cert)],
          [sys.executable,'-I','-B',str(root/'scripts/verify_certificate.py'),'--certificate',str(cert),'--output',str(receipt),'--negative-tests']]
        statuses=[]
        for cmd in commands:
            r=subprocess.run(cmd,capture_output=True,text=True,timeout=120)
            need(r.returncode==0,'math replay failed: '+r.stdout+r.stderr)
            statuses.append(json.loads(r.stdout.strip().splitlines()[-1]))
        need(cert.read_bytes()==(root/'certificates/certificate.json').read_bytes(),'regenerated certificate differs')
        need(receipt.read_bytes()==(root/'logs/VERIFY.json').read_bytes(),'regenerated receiver receipt differs')
        finite=json.loads(receipt.read_text())
    result={'schema':'B699-D-R05-clean-replay-v1','status':'PASS','payload_sha256':payload,
      'package_member_count':len(files),'member_hashes_checked':len(files)-1,
      'parent_zip_sha256':PARENT_SHA,'recursive_parent_members_checked':len(ancestor_rows),
      'certificate_sha256':sha((root/'certificates/certificate.json').read_bytes()),
      'generated_certificate_byte_identical':True,'receiver_receipt_byte_identical':True,
      'finite_verification':finite,'subprocess_results':statuses,
      'ancestor_math_executed_by_this_replay':False,'q6_terminal_executed':False,'external_BL_theorem_reproved':False,
      'lean_executed':False,'repository_actions':False}
    out=Path(args.output);out.parent.mkdir(parents=True,exist_ok=True);out.write_bytes(canonical(result))
    print(json.dumps({'status':'PASS','identities':9,'negative_tests':len(finite['negative_tests']),'parent_members':len(ancestor_rows),'q6_reexecuted':False}))
if __name__=='__main__':main()
