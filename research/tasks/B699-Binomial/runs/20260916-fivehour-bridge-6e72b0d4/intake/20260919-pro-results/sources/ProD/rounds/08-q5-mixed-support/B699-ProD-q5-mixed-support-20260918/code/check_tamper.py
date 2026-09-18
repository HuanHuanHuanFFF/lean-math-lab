#!/usr/bin/env python3
"""Run explicit mathematical rejection tests in disposable copies, not the original package.
The test copies have their hashes recomputed so rejection cannot rely on a stale hash.
"""
from __future__ import annotations
import hashlib,json,shutil,subprocess,sys,tempfile
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]

def manifest(root):
    paths=[p for p in sorted(root.rglob('*')) if p.is_file() and p.name!='SHA256SUMS' and '__pycache__' not in p.parts]
    (root/'SHA256SUMS').write_text(''.join(hashlib.sha256(p.read_bytes()).hexdigest()+'  '+str(p.relative_to(root))+'\n' for p in paths))

def main():
    tests=[('dual_component','dual_certificates.json'),('dual_coverage','dual_certificates.json'),
           ('source_slot_value','algebra.json'),('six_log_input','analytic.json'),
           ('finite_count','finite_compression.json'),('terminal_row','finite_tail.json')]
    results=[]
    with tempfile.TemporaryDirectory(prefix='b699-mixed-tamper-') as td:
        copy=Path(td)/ROOT.name;shutil.copytree(ROOT,copy,ignore=shutil.ignore_patterns('__pycache__'))
        for name,file in tests:
            path=copy/'evidence'/file;original=path.read_bytes();obj=json.loads(original)
            if name=='dual_component':obj[0]['dual'][1]=str(int(obj[0]['dual'][1])+1)
            elif name=='dual_coverage':obj.pop()
            elif name=='source_slot_value':obj['slot_values'][2]['Kcal']+=1
            elif name=='six_log_input':obj['logarithm_count']=4
            elif name=='finite_count':obj[0]['count']-=1
            elif name=='terminal_row':obj[0]['n']=str(int(obj[0]['n'])+1800)
            path.write_text(json.dumps(obj,indent=2)+'\n');manifest(copy)
            proc=subprocess.run([sys.executable,str(copy/'code/verify.py'),'--json'],capture_output=True,text=True,timeout=45)
            last=proc.stderr.strip().splitlines()[-1] if proc.stderr.strip() else ''
            if proc.returncode==0:raise AssertionError('tamper was not rejected: '+name)
            results.append({'test':name,'rejected':True,'hashes_recomputed':True,'last_error':last})
            path.write_bytes(original);manifest(copy)
        proc=subprocess.run([sys.executable,str(copy/'code/verify.py'),'--json'],capture_output=True,text=True,timeout=45)
        if proc.returncode:raise AssertionError('restored copy failed: '+proc.stderr[-1000:])
        restored=json.loads(proc.stdout)['status']
    print(json.dumps({'tests':results,'restored_status':restored,'original_package_modified':False},ensure_ascii=False,indent=2))
if __name__=='__main__':main()
