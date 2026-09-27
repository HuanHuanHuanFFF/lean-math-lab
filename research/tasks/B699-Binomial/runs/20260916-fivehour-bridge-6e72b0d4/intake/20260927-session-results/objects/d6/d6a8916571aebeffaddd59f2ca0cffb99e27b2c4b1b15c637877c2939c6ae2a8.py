#!/usr/bin/env python3
"""Clean replay of this round only. Pure Python standard library."""
from __future__ import annotations
import argparse,hashlib,json,platform,subprocess,sys,tempfile
from datetime import datetime,timezone
from pathlib import Path
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def check_manifest(root,name):
    path=root/name
    if not path.exists():return {'present':False,'checked':0}
    count=0
    for line in path.read_text(encoding='utf-8').splitlines():
        if not line:continue
        digest,rel=line.split('  ',1);p=root/rel
        assert p.is_file(),f'missing file: {rel}'
        assert sha(p)==digest,f'hash mismatch: {rel}'
        count+=1
    return {'present':True,'checked':count,'sha256':sha(path)}
def run(command):
    r=subprocess.run(command,text=True,capture_output=True,timeout=120)
    assert r.returncode==0, f'{command}: {r.stderr}'
    return {'exit_code':r.returncode,'stdout':r.stdout.strip(),'stderr':r.stderr.strip()}
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--receipt',type=Path);a=ap.parse_args()
    root=Path(__file__).resolve().parents[1]
    manifests={name:check_manifest(root,name) for name in ['PAYLOAD.sha256','SHA256SUMS']}
    assert manifests['PAYLOAD.sha256']['present'],'missing core manifest'
    with tempfile.TemporaryDirectory(prefix='b699-c-r4-replay-') as td:
        d=Path(td)/'certificates'
        gen=run([sys.executable,str(root/'scripts/discover.py'),'--out',str(d)])
        comparison=[]
        for original in sorted((root/'certificates').glob('*.json')):
            rebuilt=d/original.name
            assert rebuilt.exists() and original.read_bytes()==rebuilt.read_bytes(),f'certificate mismatch: {original.name}'
            comparison.append({'name':original.name,'sha256':sha(rebuilt),'byte_identical':True})
        assert len(comparison)==7
        acc=run([sys.executable,str(root/'scripts/accept.py'),'--cert-dir',str(d)])
        mut=run([sys.executable,str(root/'scripts/mutation_test.py'),'--cert-dir',str(d)])
    receipt={'status':'PASS','round':'C-R4-RETURN5','scope':'this round; not historical whole-chain verification',
        'utc_finished':datetime.now(timezone.utc).isoformat(),'python':platform.python_version(),
        'manifests':manifests,'certificates':comparison,'discovery':gen,'acceptance':acc,'mutations':mut,
        'evidence_level':'author proof and deterministic separated implementation; not external review or Lean'}
    text=json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    if a.receipt:
        a.receipt.parent.mkdir(parents=True,exist_ok=True);a.receipt.write_text(text,encoding='utf-8')
    print(text,end='')
if __name__=='__main__':
    if not __debug__:raise RuntimeError('Do not run proof checks with Python -O or -OO.')
    main()
