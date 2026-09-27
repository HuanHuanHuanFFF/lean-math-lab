"""Read-only receiver: exact new terminals, identities and original witnesses.
No network, CAS, Lean, repository access, old P-shell or m=2/zero replays.
"""
from __future__ import annotations
import argparse,hashlib,json,time
from pathlib import Path
import algebra,experiments,discover
from core import canonical
ROOT=Path(__file__).resolve().parents[1]

def filehash(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def check_manifest(name):
    p=ROOT/name
    if not p.exists():return dict(present=False,count=0)
    lines=p.read_text().splitlines();count=0
    for line in lines:
        h,rel=line.split('  ',1);q=ROOT/rel
        if not q.resolve().is_relative_to(ROOT):raise ValueError('unsafe manifest path')
        assert q.is_file() and filehash(q)==h,(name,rel)
        count+=1
    if name=='SHA256SUMS.txt':
        declared={line.split('  ',1)[1] for line in lines}
        actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()}
        assert actual==declared|{'SHA256SUMS.txt'},'extra/missing final files'
    return dict(present=True,count=count,status='PASS')

def main(output=None):
    if output is not None and output.resolve().is_relative_to(ROOT):
        raise ValueError('verification output must be outside the evidence tree')
    start=time.time();checks={}
    checks['payload_hashes']=check_manifest('PAYLOAD_SHA256SUMS.txt')
    checks['final_hashes']=check_manifest('SHA256SUMS.txt')
    # Source snapshots are checked for integrity, not replayed as new work.
    ih=json.loads((ROOT/'sources'/'INPUT_HASHES.json').read_text())
    for rec in ih['frozen_files']:
        assert filehash(ROOT/rec['frozen_path'])==rec['sha256']
    rows=experiments.z2_primary();other=experiments.z2_secondary()
    assert rows==other
    lb=experiments.ledger_bytes(rows)
    assert lb==(ROOT/'certificates'/'z2_terminal_ledger.csv').read_bytes()
    generated=dict(algebra=algebra.run(),small_terminals=experiments.small_terminals(),
      z2_terminal=experiments.z2_certificate(rows),
      independent_terminal=dict(algorithm='Original-P interval traversal, independent LCM arithmetic',
           count=len(other),ledger_sha256=experiments.z2_certificate(other)['ledger_sha256'],status='PASS'),
      weak_capacity=experiments.weak_certificate(),actual_rows=discover.actual_certificate(),
      direct_rows=experiments.direct_checks([(7,37),(11,101),(25,107),(43,137)]))
    for name,data in generated.items():
        expected=json.loads((ROOT/'certificates'/f'{name}.json').read_text())
        assert canonical(data)==canonical(expected),name
    result=dict(status='PASS',elapsed_seconds=round(time.time()-start,3),
       manifests=checks,source_snapshots_checked=len(ih['frozen_files']),
       exact_certificates=len(generated)+1,polynomial_identities=generated['algebra']['identity_count'],
       complete_new_z2_records=len(rows),independent_original_P_records=len(other),
       finite_survivors=0,actual_complete_power_rows=generated['actual_rows']['count'],
       nontrivial_power_rows=generated['actual_rows']['nontrivial_power_rows'],
       direct_original_binomial_pairs=generated['direct_rows']['total_pairs'],
       old_P_le_1000_shell_replayed=False,old_m2_or_zero_terminals_replayed=False,
       network_used=False,Lean=False,external_independent_math_review=False)
    if output is not None:output.write_bytes(canonical(result))
    print(json.dumps(result,ensure_ascii=False,indent=2))
    return result

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path);a=ap.parse_args();main(a.output)
