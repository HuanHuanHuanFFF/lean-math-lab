"""Read-only replay of the frozen evidence using only the Python standard library."""
from __future__ import annotations
import argparse, hashlib, json, subprocess, sys
from pathlib import Path

def sha(path:Path)->str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def main()->None:
    p=argparse.ArgumentParser();p.add_argument('--output-dir',type=Path,required=True);ns=p.parse_args()
    root=Path(__file__).resolve().parent.parent
    out=ns.output_dir.resolve()
    if out==root or root in out.parents:
        raise ValueError('write replay outside the frozen evidence directory')
    out.mkdir(parents=True,exist_ok=True)
    manifest=json.loads((root/'MANIFEST.json').read_text())
    for row in manifest['files']:
        f=(root/row['path']).resolve()
        if root not in f.parents or not f.is_file() or sha(f)!=row['sha256']:
            raise ValueError('manifest mismatch: '+row['path'])
    sources=json.loads((root/'SOURCE_HASHES.json').read_text())
    for name,digest in sources.items():
        if sha(root/name)!=digest:raise ValueError('source mismatch: '+name)
    commands=[
        ['verify_certificate.py','--certificate',str(root/'outputs/certificate.json'),'--output',str(out/'algebra_acceptance.json'),'--negative-tests'],
        ['check_finite.py','--output-dir',str(out)],
    ]
    stages=[]
    for args in commands:
        cmd=[sys.executable,'-S','-B',str(root/'code'/args[0]),*args[1:]]
        r=subprocess.run(cmd,capture_output=True,text=True,timeout=90)
        (out/(args[0]+'.log')).write_text(r.stdout+r.stderr,encoding='utf-8')
        if r.returncode:
            raise RuntimeError(f'{args[0]} failed ({r.returncode}): '+r.stderr[-2000:])
        stages.append({'script':args[0],'return_code':r.returncode})
    compared=[]
    for name in ['algebra_acceptance.json','small_C_acceptance.json','finite_regression.json','consumer_regression.json']:
        if (out/name).read_bytes()!=(root/'outputs'/name).read_bytes():raise ValueError('output mismatch: '+name)
        compared.append(name)
    receipt={'status':'PASS','manifest_members_checked':len(manifest['files']),'frozen_sources_checked':len(sources),'stages':stages,'byte_identical_outputs':compared,'limitations':['no Lean','no external independent mathematical review','finite tests do not prove unrestricted NC3 claims','no new complete index']}
    (out/'replay_receipt.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
    print(json.dumps(receipt,ensure_ascii=False))
if __name__=='__main__':main()
