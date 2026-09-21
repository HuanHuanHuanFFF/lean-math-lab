#!/usr/bin/env python3
"""Read-only complete replay. Python standard library only; no network."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import hashlib,json
ROOT=Path(__file__).resolve().parent
if not __debug__:
    raise SystemExit('Run without Python -O: the independent checker uses assertions.')

def main():
    manifest=ROOT/'SHA256SUMS'
    if not manifest.is_file():raise RuntimeError('SHA256SUMS missing')
    listed=set()
    for line in manifest.read_text().splitlines():
        expected,rel=line.split('  ',1)
        p=ROOT/rel
        if not p.is_relative_to(ROOT) or '..' in Path(rel).parts:raise RuntimeError('unsafe manifest path')
        if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=expected:
            raise RuntimeError('HASH_MISMATCH: '+rel)
        listed.add(rel)
    actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()
       and '__pycache__' not in p.parts and p.name!='SHA256SUMS'}
    if actual!=listed:raise RuntimeError('manifest membership mismatch')
    sys.path.insert(0,str(ROOT/'code'))
    from verify import check
    from verify_endpoint_matrix import run as matrix
    from reject_bad import run as bad
    a=check(json.loads((ROOT/'certificates/h13.json').read_text()))
    b=matrix();c=bad()
    if a['full_sequence_sha256']!=b['full_sequence_sha256']:
        raise RuntimeError('independent integer sequences differ')
    expected=[('exact_verification.json',a),('matrix_verification.json',b),('bad_certificate_tests.json',c)]
    for name,data in expected:
        if json.loads((ROOT/'outputs'/name).read_text())!=data:
            raise RuntimeError('recorded output mismatch: '+name)
    print(json.dumps({'status':'PASS_READ_ONLY_H13_REPLAY','hashed_members':len(listed),
      'exact':a['status'],'independent_endpoint':b['status'],'bad_certificates':c['status'],
      'all_integer_solutions':[[1,0]],'original_NC3_h13_branch':'EXCLUDED',
      'scope':'canonical minimal branch only; all i3 remains open'},indent=2))
if __name__=='__main__':main()
