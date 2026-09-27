#!/usr/bin/env python3
"""Read-only package acceptance and deterministic regeneration; standard library."""
import argparse,hashlib,json,os,subprocess,sys,tempfile
from pathlib import Path

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    parser=argparse.ArgumentParser();parser.add_argument('--manifest',default='SHA256SUMS.txt');args=parser.parse_args()
    root=Path(__file__).resolve().parent
    manifest=root/args.manifest
    if not manifest.is_file():raise RuntimeError('missing checksum manifest: '+str(manifest))
    count=0
    for line in manifest.read_text(encoding='utf-8').splitlines():
        if not line.strip():continue
        digest,name=line.split('  ',1);p=(root/name).resolve()
        if root not in p.parents:raise RuntimeError('unsafe path in manifest')
        if not p.is_file() or sha(p)!=digest:raise RuntimeError('checksum mismatch: '+name)
        count+=1
    expected='f5649da486255e85a8e639ad133d4596cf65ea4d4762a594f55084c29a7e21b3'
    if sha(root/'inputs/parent_HEIGHT26_evidence.zip')!=expected:raise RuntimeError('parent source hash mismatch')
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONHASHSEED='0')
    result=subprocess.run([sys.executable,str(root/'evidence/verify.py')],cwd=root,env=env,capture_output=True,text=True)
    print(result.stdout,end='')
    if result.returncode:
        print(result.stderr,file=sys.stderr);raise RuntimeError('mathematical receiver failed')
    with tempfile.TemporaryDirectory(prefix='b699-cubic3-regenerate-') as td:
        out=Path(td)
        regenerated=subprocess.run([sys.executable,str(root/'evidence/generate.py'),'--output',str(out)],cwd=root,env=env,capture_output=True,text=True)
        if regenerated.returncode:raise RuntimeError(regenerated.stderr)
        expected_files=sorted(p.name for p in (root/'certificates').glob('*.json'))
        actual_files=sorted(p.name for p in out.glob('*.json'))
        if expected_files!=actual_files:raise RuntimeError('regenerated certificate member mismatch')
        for name in expected_files:
            if (out/name).read_bytes()!=(root/'certificates'/name).read_bytes():raise RuntimeError('regeneration differs: '+name)
    print(json.dumps(dict(status='PASS',manifest_files=count,parent_bytes_verified=True,parent_mathematics_rerun=False,regenerated_certificates=len(expected_files),byte_identical=True,network_used=False,repository_accessed=False),sort_keys=True))
if __name__=='__main__':main()
