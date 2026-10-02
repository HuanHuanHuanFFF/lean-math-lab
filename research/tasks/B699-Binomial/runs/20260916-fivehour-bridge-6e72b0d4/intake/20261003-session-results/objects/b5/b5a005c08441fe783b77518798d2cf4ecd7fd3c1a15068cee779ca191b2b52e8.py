#!/usr/bin/env python3
"""Read-only local replay; no Lean, network, old-round execution or repo access."""
from __future__ import annotations
import hashlib,json,os,subprocess,sys
from pathlib import Path,PurePosixPath
if not __debug__:raise RuntimeError('Run without Python -O / PYTHONOPTIMIZE.')
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
EXCLUDED={'PAYLOAD_SHA256SUMS.txt','CLEAN_REPLAY_RECEIPT.json','SHA256SUMS.txt'}

def sha(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()
def read_sums(p:Path)->dict[str,str]:
    entries={}
    for line in p.read_text(encoding='utf-8').splitlines():
        digest,name=line.split('  ',1)
        q=PurePosixPath(name)
        if q.is_absolute() or '..' in q.parts or name in entries or len(digest)!=64:
            raise ValueError('Invalid checksum manifest entry')
        if not (ROOT/name).is_file() or (ROOT/name).is_symlink():raise ValueError('Missing or unsafe member: '+name)
        if sha(ROOT/name)!=digest:raise AssertionError('Hash mismatch: '+name)
        entries[name]=digest
    return entries

def main():
    expected=read_sums(ROOT/'PAYLOAD_SHA256SUMS.txt')
    actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()
            and '__pycache__' not in p.parts and p.relative_to(ROOT).as_posix() not in EXCLUDED}
    if actual!=set(expected):raise AssertionError('Payload member-set mismatch')
    allsum=ROOT/'SHA256SUMS.txt'
    if allsum.exists():
        listed=read_sums(allsum)
        allfiles={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()
                  and '__pycache__' not in p.parts and p.relative_to(ROOT).as_posix()!='SHA256SUMS.txt'}
        if allfiles!=set(listed):raise AssertionError('Outer member-set mismatch')
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
    run=subprocess.run([sys.executable,str(ROOT/'scripts/verify.py')],cwd=ROOT,env=env,capture_output=True)
    if run.returncode:
        sys.stdout.buffer.write(run.stdout);sys.stderr.buffer.write(run.stderr)
        raise RuntimeError(f'Exact verifier exited {run.returncode}')
    receipt={'protocol':'E4_payload_v1','payload_manifest_sha256':sha(ROOT/'PAYLOAD_SHA256SUMS.txt'),
             'payload_member_count':len(expected),'verifier_exit_code':run.returncode,
             'verifier_stdout_sha256':hashlib.sha256(run.stdout).hexdigest(),
             'verifier_stderr_sha256':hashlib.sha256(run.stderr).hexdigest(),
             'status':'PASS: current new exact certificates only; frozen R2/R3 contracts adopted, not independently revalidated'}
    old=ROOT/'CLEAN_REPLAY_RECEIPT.json'
    if old.exists():
        rec=json.loads(old.read_text())
        if rec['payload_result']!=receipt:raise AssertionError('Clean receipt payload result mismatch')
    print(json.dumps(receipt,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
