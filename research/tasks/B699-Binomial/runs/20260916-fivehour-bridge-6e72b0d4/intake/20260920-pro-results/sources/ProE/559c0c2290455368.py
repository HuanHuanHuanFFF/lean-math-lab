#!/usr/bin/env python3
"""Read-only, offline evidence replay. No third-party packages required."""
import sys
sys.dont_write_bytecode=True
import json,hashlib
from pathlib import Path

ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'code'))


def check_hashes():
    expected={}
    for line in (ROOT/'SHA256SUMS').read_text().splitlines():
        if not line:continue
        digest,name=line.split('  ',1)
        if name in expected:raise ValueError('duplicate hash member')
        path=Path(name)
        if path.is_absolute() or '..' in path.parts:raise ValueError('unsafe hash member')
        expected[name]=digest
    actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file() and p.name!='SHA256SUMS'}
    if actual!=set(expected):raise ValueError('member inventory differs from SHA256SUMS')
    for name,digest in expected.items():
        if hashlib.sha256((ROOT/name).read_bytes()).hexdigest()!=digest:raise ValueError('SHA256 mismatch: '+name)
    return len(expected)


def main():
    count=check_hashes()
    from kernel_crt import verify as crt_verify
    from check_sturm import verify as sturm_verify
    from check_identities import identity_checks
    from check_boundary import check as boundary_check
    from bad_certificates import run as negative_checks
    cert=json.loads((ROOT/'certificates/endpoint.json').read_text())
    identities=identity_checks()
    assert identities==json.loads((ROOT/'outputs/identities.json').read_text())
    raw=crt_verify(cert)
    second=sturm_verify(cert)
    assert second==json.loads((ROOT/'outputs/sturm_check.json').read_text())
    assert raw==second['raw_roots']
    # Recover Q for every unfiltered nonzero-T5 endpoint; all violate Q>=11.
    Qs=[]
    for row in raw:
        numerator=row['X']**2+row['d']*row['Y']**2
        den=row['den']**2
        assert numerator%den==0
        Qs.append(numerator//den)
    assert Qs==[3,1,1,3]
    bad=negative_checks(cert)
    assert bad==json.loads((ROOT/'outputs/bad_certificates.json').read_text())
    boundary=boundary_check()
    assert boundary==json.loads((ROOT/'outputs/boundary.json').read_text())
    assert check_hashes()==count
    print(json.dumps(dict(status='PASS_READ_ONLY_MAXIMAL_ORDER5_REPLAY',hashed_members=count,identities=identities['status'],CRT='PASS_COMPLETE_CRT_ENDPOINT',Sturm='PASS_INDEPENDENT_STURM_ENDPOINT',endpoint_Qs=Qs,bad_certificates=bad['status'],boundary=boundary['status'],no_Lean=True,no_network=True),indent=2))

if __name__=='__main__':
    try:main()
    except Exception as exc:
        print('FAIL_REPLAY: '+str(exc),file=sys.stderr)
        raise SystemExit(1)
