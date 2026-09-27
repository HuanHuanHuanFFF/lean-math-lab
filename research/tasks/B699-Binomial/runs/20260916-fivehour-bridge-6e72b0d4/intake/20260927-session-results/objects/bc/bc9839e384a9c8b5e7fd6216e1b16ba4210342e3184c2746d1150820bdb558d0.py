"""Read-only recomputation. It is same-author verification, not independent review."""
from __future__ import annotations
import argparse,hashlib,json,sys,time
from pathlib import Path
from core import canonical,digest
from experiments import build_all,ROOT

def hash_tree(root):
    return {str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(root.rglob('*')) if p.is_file()}

def main():
    if sys.flags.optimize: raise RuntimeError('Run without -O: assertions are part of verification')
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path)
    args=ap.parse_args()
    if args.output and (ROOT==args.output.resolve() or ROOT in args.output.resolve().parents):
        raise ValueError('Output must be OUTSIDE the evidence tree')
    before=hash_tree(ROOT);start=time.monotonic();computed=build_all();checks={}
    for name,obj in computed.items():
        path=ROOT/'certificates'/name
        expected=json.loads(path.read_text())
        if canonical(expected)!=canonical(obj): raise AssertionError('Certificate differs: '+name)
        checks[name]={'status':'PASS','sha256':digest(obj)}
    after=hash_tree(ROOT)
    if before!=after:raise AssertionError('Verifier modified evidence tree')
    result={'status':'PASS','python':sys.version,'certificate_count':len(checks),
            'certificates':checks,'read_only_tree_unchanged':True,
            'elapsed_seconds':round(time.monotonic()-start,6),
            'evidence_level':'same-author exact finite recomputation, not Lean or independent mathematical review'}
    if args.output:args.output.write_bytes(canonical(result))
    sys.stdout.buffer.write(canonical(result))
if __name__=='__main__':main()
