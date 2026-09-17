#!/usr/bin/env python3
"""Reproduce only this round plus the explicitly adopted small-C terminal.
Frozen files are never overwritten; the output directory must be outside
this evidence directory. No external calls or third-party modules.
"""
from __future__ import annotations
import argparse,hashlib,json,subprocess,sys
from pathlib import Path

def sha(path:Path)->str:return hashlib.sha256(path.read_bytes()).hexdigest()

def verify_sources(root:Path)->int:
    data=json.loads((root/'SOURCE_HASHES.json').read_text())
    for path,expected in data.items():
        assert sha(root/path)==expected,'changed adopted source: '+path
    return len(data)

def verify_manifest(root:Path)->int:
    manifest=root/'MANIFEST.json'
    if not manifest.exists():return 0
    data=json.loads(manifest.read_text())
    for record in data['members']:
        path=root/record['path']
        assert path.is_file() and path.stat().st_size==record['bytes'],record['path']
        assert sha(path)==record['sha256'],record['path']
    return len(data['members'])

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',type=Path,required=True);args=ap.parse_args()
    root=Path(__file__).resolve().parents[1];out=args.output_dir.resolve()
    if out==root or root in out.parents:raise ValueError('output directory must be outside frozen evidence')
    out.mkdir(parents=True,exist_ok=True)
    members=verify_manifest(root);sources=verify_sources(root)
    commands=[
        ['build_certificate.py','--output',str(out/'certificate.json')],
        ['verify_certificate.py','--certificate',str(out/'certificate.json'),'--output',str(out/'finite_acceptance.json'),'--negative-tests'],
        ['verify_algebra.py','--certificate',str(root/'outputs/algebra_certificate.json'),'--output',str(out/'algebra_acceptance.json')],
        ['check_regressions.py','--output',str(out/'regression.json')],
        ['check_small_C.py','--source',str(root/'sources/small-C-terminals.json'),'--output',str(out/'small_C_acceptance.json')],
    ]
    receipts=[]
    for index,cmd in enumerate(commands):
        full=[sys.executable,'-S','-B',str(root/'code'/cmd[0])]+cmd[1:]
        p=subprocess.run(full,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,check=False)
        (out/f'command-{index+1}.log').write_text(p.stdout)
        receipts.append({'script':cmd[0],'returncode':p.returncode,'log':f'command-{index+1}.log'})
        if p.returncode:raise RuntimeError(f'{cmd[0]} failed; see {out}/command-{index+1}.log')
    frozen={}
    for name in ['certificate.json','finite_acceptance.json','algebra_acceptance.json','regression.json','small_C_acceptance.json']:
        assert (root/'outputs'/name).read_bytes()==(out/name).read_bytes(), 'changed output: '+name
        frozen[name]=sha(out/name)
    receipt={'schema':'B699-ODD13-replay-v1','manifest_members_checked':members,
             'source_files_checked':sources,'commands':receipts,'byte_identical_outputs':frozen,
             'evidence_grade':'author paper plus same-author deterministic implementations; not Lean or external review',
             'scope':'new proof checks and complete Q0|39 domain; old SIGN archive not replayed'}
    (out/'reproduction.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'manifest_members':members,'adopted_sources':sources,
                      'commands_passed':len(commands),'byte_identical_outputs':len(frozen)}))
