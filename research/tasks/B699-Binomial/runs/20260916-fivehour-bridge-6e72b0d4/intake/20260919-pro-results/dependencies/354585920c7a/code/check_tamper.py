#!/usr/bin/env python3
"""Optional negative tests in disposable copies; never edits the input evidence bundle."""
from __future__ import annotations
import argparse,hashlib,json,shutil,subprocess,sys,tempfile
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]

def manifest(root:Path)->None:
    entries=[]
    for p in sorted(root.rglob('*')):
        if p.is_file() and p.name!='SHA256SUMS' and '__pycache__' not in p.parts:
            entries.append(hashlib.sha256(p.read_bytes()).hexdigest()+'  '+str(p.relative_to(root)))
    (root/'SHA256SUMS').write_text('\n'.join(entries)+'\n')

def execute(root:Path):
    return subprocess.run([sys.executable,str(root/'code'/'verify.py'),'--json'],capture_output=True,text=True,timeout=45)

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--receipt',type=Path)
    args=parser.parse_args();results=[]
    tests=[
      ('core_coefficient','algebra.json',lambda d:d['polynomials']['R'][0].__setitem__(2,d['polynomials']['R'][0][2]+1)),
      ('dual_congruence','dual_certificates.json',lambda d:d[0]['dual'].__setitem__(0,str(int(d[0]['dual'][0])+1))),
      ('incomplete_finite_domain','modular_caps.json',lambda d:d[0].__setitem__('count',d[0]['count']-1)),
      ('terminal_integer','finite_tail.json',lambda d:d[0].__setitem__('rhs',str(int(d[0]['rhs'])+1))),
      ('positive_expansion','algebra.json',lambda d:d['positive_shifts']['S_upper'][0].__setitem__(2,0)),
    ]
    with tempfile.TemporaryDirectory(prefix='b699-tamper-') as tmp:
        dst=Path(tmp)/ROOT.name;shutil.copytree(ROOT,dst,ignore=shutil.ignore_patterns('__pycache__'))
        baseline=execute(dst)
        if baseline.returncode:raise RuntimeError('baseline failed: '+baseline.stderr[-1000:])
        for name,fname,change in tests:
            path=dst/'evidence'/fname;raw=path.read_bytes();data=json.loads(raw);change(data)
            path.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n');manifest(dst)
            proc=execute(dst)
            if proc.returncode==0:raise AssertionError('invalid mathematical certificate accepted: '+name)
            # Recomputed manifest ensures this is not merely the outer hash check.
            decisive=proc.stderr.strip().splitlines()[-1]
            if 'hash mismatch' in decisive:raise AssertionError('test only detected a stale manifest')
            results.append({'name':name,'rejected':True,'manifest_recomputed':True,'error':decisive})
            path.write_bytes(raw);manifest(dst)
        restored=execute(dst)
        if restored.returncode:raise RuntimeError('restored replay failed: '+restored.stderr[-1000:])
    receipt={'negative_tests':results,'baseline_passed':True,'restored_replay_passed':True,
             'note':'These finite mutation tests do not constitute an independent proof review.'}
    if args.receipt:
        args.receipt.parent.mkdir(parents=True,exist_ok=True)
        args.receipt.write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(receipt,ensure_ascii=False,indent=2))

if __name__=='__main__':main()
