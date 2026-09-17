"""Rebuild current finite evidence without overwriting frozen files.

The unrestricted mathematical proof is PROOFS.md. A successful replay is not
Lean checking or external peer review. Core replay uses only Python stdlib.
"""
from __future__ import annotations
import argparse,hashlib,json,subprocess,sys
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
def sha(p:Path)->str:
    return hashlib.sha256(p.read_bytes()).hexdigest()

def main()->None:
    ap=argparse.ArgumentParser()
    ap.add_argument('--output-dir',type=Path,required=True)
    ap.add_argument('--symbolic',action='store_true',help='Run optional SymPy exact polynomial checks.')
    args=ap.parse_args();out=args.output_dir.resolve()
    if out==ROOT or ROOT in out.parents:
        ap.error('Use an output directory outside the frozen package.')
    out.mkdir(parents=True,exist_ok=True)
    py=sys.executable;records=[]
    jobs=[('build',[py,'-S','-B',str(ROOT/'scripts/build_certificate.py'),'--output',str(out/'CERTIFICATE.json')]),
          ('verify',[py,'-S','-B',str(ROOT/'scripts/verify_certificate.py'),'--certificate',str(out/'CERTIFICATE.json'),'--output',str(out/'ACCEPTANCE.json'),'--negative-tests'])]
    if args.symbolic:
        jobs.append(('symbolic',[py,'-B',str(ROOT/'scripts/check_symbolic.py'),'--output',str(out/'SYMBOLIC.json')]))
    for name,cmd in jobs:
        log=out/(name+'.log')
        with log.open('w') as f:
            proc=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=False)
        records.append(dict(step=name,command=cmd,returncode=proc.returncode,log=str(log)))
        if proc.returncode:
            raise RuntimeError(f'{name} failed, see {log}')
    names=['CERTIFICATE.json','ACCEPTANCE.json']+(['SYMBOLIC.json'] if args.symbolic else [])
    comparisons=[]
    for name in names:
        old=ROOT/'outputs'/name;new=out/name
        equal=old.read_bytes()==new.read_bytes()
        comparisons.append(dict(file=name,sha256=sha(new),byte_identical_to_frozen=equal))
        if not equal:
            raise RuntimeError(f'{name} differs from frozen output; compare versions and result content.')
    result=dict(status='PASS',evidence_scope='same-author deterministic finite replay; paper proof separately stated',
                python_version=sys.version.split()[0],commands=records,comparisons=comparisons)
    dest=out/'REPRODUCTION.json';dest.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(dict(status='PASS',checked_files=len(comparisons),report=str(dest))))

if __name__=='__main__':main()
