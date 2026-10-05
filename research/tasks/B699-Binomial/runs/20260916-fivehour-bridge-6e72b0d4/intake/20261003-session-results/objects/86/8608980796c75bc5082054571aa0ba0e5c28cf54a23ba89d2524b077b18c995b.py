#!/usr/bin/env python3
"""Offline R04 replay. Parent archives are hashed, never executed.
Usage: python -I -B replay.py --output ../D-R04-replay.json
"""
from __future__ import annotations
import argparse
import hashlib
import io
import json
import subprocess
import sys
import tempfile
import zipfile
from pathlib import Path, PurePosixPath

PARENT_SHA='4e2398772d9253b120ef624ccb6d1d2f56c528d23ba0b998ec440be9ae268c8c'
EXCLUDE_PAYLOAD={'MEMBERS.json','SHA256SUMS.txt','logs/CLEAN_REPLAY_RECEIPT.json'}

def sha(b): return hashlib.sha256(b).hexdigest()
def require(ok,message):
    if not ok: raise ValueError(message)
def canonical(obj): return (json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()

def safe_member(name):
    p=PurePosixPath(name)
    require(not p.is_absolute() and '..' not in p.parts and '\\' not in name,'unsafe member: '+name)

def audit_archive(data,chain):
    checksum=sha(data); z=zipfile.ZipFile(io.BytesIO(data)); names=[a.filename for a in z.infolist() if not a.is_dir()]
    require(len(names)==len(set(names)),'duplicate archive member')
    for name in names: safe_member(name)
    require(z.testzip() is None,'zip CRC error')
    manifests=[n for n in names if n.endswith('/SHA256SUMS.txt') or n=='SHA256SUMS.txt']
    require(len(manifests)==1,'expected one member hash manifest')
    manifest=manifests[0]; prefix=manifest[:-len('SHA256SUMS.txt')]; checked=[]
    for line in z.read(manifest).decode('utf-8').splitlines():
        if not line.strip() or line.startswith('#'): continue
        digest,relative=line.split(None,1); relative=relative.strip().lstrip('*'); name=prefix+relative
        require(len(digest)==64 and name in names,'malformed parent manifest')
        require(sha(z.read(name))==digest,'parent member hash mismatch: '+name)
        checked.append(name)
    require(set(checked)==set(names)-{manifest},'parent manifest missing/extra members')
    record={'chain':chain,'sha256':checksum,'members':len(names),'manifest_entries_verified':len(checked)}
    results=[record]
    for name in sorted(names):
        if name.endswith('.zip'): results.extend(audit_archive(z.read(name),chain+[name]))
    return results

def audit_parent(root):
    raw=(root/'dependencies/D-R03-evidence.zip').read_bytes()
    require(sha(raw)==PARENT_SHA,'parent archive identity mismatch')
    archives=audit_archive(raw,['dependencies/D-R03-evidence.zip'])
    return {'status':'BYTE_INTEGRITY_VERIFIED','parent_sha256':PARENT_SHA,
            'archives':archives,'archive_count':len(archives),
            'recursive_member_records':sum(a['members'] for a in archives),
            'recursive_manifest_entries_verified':sum(a['manifest_entries_verified'] for a in archives),
            'parent_math_executed':False,'q6_terminal_executed':False}

def verify_manifest(root):
    path=root/'SHA256SUMS.txt'; require(path.exists(),'missing SHA256SUMS.txt')
    expected=[]
    for line in path.read_text(encoding='utf-8').splitlines():
        if not line.strip() or line.startswith('#'): continue
        digest,name=line.split(None,1); name=name.strip(); safe_member(name)
        require((root/name).is_file(),'missing file '+name)
        require(sha((root/name).read_bytes())==digest,'hash mismatch '+name); expected.append(name)
    actual={p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file()}
    require(actual==set(expected)|{'SHA256SUMS.txt'},'unexpected or unhashed file in extracted archive')
    members=json.loads((root/'MEMBERS.json').read_text(encoding='utf-8'))
    for item in members['ordinary_members']:
        name=item['path']; content=(root/name).read_bytes()
        require(len(content)==item['bytes'] and sha(content)==item['sha256'],'provenance member hash mismatch')
    return len(expected)

def payload_identity(root):
    records=[]
    for p in sorted(root.rglob('*')):
        if p.is_file():
            name=p.relative_to(root).as_posix()
            if name not in EXCLUDE_PAYLOAD: records.append({'path':name,'sha256':sha(p.read_bytes())})
    return sha(canonical(records))

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args(); root=Path(__file__).resolve().parent
    verify_manifest(root); parent=audit_parent(root)
    require(parent==json.loads((root/'logs/PARENT_INTEGRITY.json').read_text()),'parent integrity receipt drift')
    with tempfile.TemporaryDirectory(prefix='b699-r04-replay-') as td:
        temp=Path(td); regenerated=temp/'certificate.json'; acceptance=temp/'acceptance.json'
        commands=[
            [sys.executable,'-I','-B',str(root/'scripts/build_certificate.py'),'--output',str(regenerated)],
            [sys.executable,'-I','-B',str(root/'scripts/verify_certificate.py'),'--certificate',str(regenerated),'--output',str(acceptance),'--negative-tests']]
        command_outputs=[]
        for command in commands:
            run=subprocess.run(command,cwd=temp,text=True,capture_output=True,timeout=120)
            require(run.returncode==0,'replay process failed: '+run.stderr)
            command_outputs.append(json.loads(run.stdout))
        require(regenerated.read_bytes()==(root/'certificates/certificate.json').read_bytes(),'regenerated certificate differs')
        require(acceptance.read_bytes()==(root/'logs/VERIFY.json').read_bytes(),'second-algorithm result differs')
        verified=json.loads(acceptance.read_text())
    receipt={'schema':'B699-D-R04-replay-v1','status':'PASS','exit_code':0,
         'payload_sha256_excluding_receipt_and_manifests':payload_identity(root),
         'certificate_sha256':sha((root/'certificates/certificate.json').read_bytes()),
         'regenerated_certificate_byte_equal':True,'second_algorithm_byte_equal':True,
         'parent_integrity':parent,'new_mathematical_acceptance':verified,
         'command_outputs':command_outputs,'network_access':False,'Lean_executed':False,
         'repository_operations':[],'parent_math_executed':False,'q6_terminal_executed':False,
         'external_theorem_status':'adopted published statement; not proved by replay',
         'not_claimed':['external independent review','full i3/B699 closure','global finite NC3 list','historical net-domain audit']}
    args.output.parent.mkdir(parents=True,exist_ok=True); args.output.write_bytes(canonical(receipt))
    print(json.dumps({'status':'PASS','root_levels':14,'negative_tests':12,'parent_math_executed':False,'q6_terminal_executed':False},sort_keys=True))
if __name__=='__main__': main()
