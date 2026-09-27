"""Read-only verification of this round, including an independent Newton lift."""
from __future__ import annotations
from pathlib import Path
import argparse, hashlib, json, math, time
from core import *
from algebra import verify_algebra
from discover import full_row, direct_checks
ROOT=Path(__file__).resolve().parents[1]

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def tree():return {str(p.relative_to(ROOT)):sha(p) for p in sorted(ROOT.rglob('*')) if p.is_file()}
def read(name):return json.loads((ROOT/'certificates'/name).read_text())
def manifest(name):
    p=ROOT/name
    if not p.exists():return None
    count=0
    for line in p.read_text().splitlines():
        digest,rel=line.split('  ',1);q=(ROOT/rel).resolve()
        assert q.is_relative_to(ROOT) and q.is_file() and not q.is_symlink()
        assert sha(q)==digest,(name,rel);count+=1
    return count

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args();out=args.output.resolve()
    if out.is_relative_to(ROOT):raise SystemExit('Output must be outside the extracted tree')
    before=tree();t=time.perf_counter();checks={}
    assert read('algebra.json')==verify_algebra();checks['polynomial_identities']=read('algebra.json')['count']
    ex,data=exhaustion(1000000,'newton')
    assert ex==read('hensel_exhaustion.json')
    assert data==(ROOT/'certificates/hensel_ledger.csv').read_bytes()
    checks['independent_newton_z_values']=ex['z_values'];checks['high_2adic_candidates']=ex['candidate_count'];checks['T0_survivors']=ex['T0_pass']
    aa=read('actual_rows.json')
    for w in aa['rows']:
        assert w==actual_record(w['z'],w['a'],w['eps'],w['witness'])
    checks['actual_rows']=aa['count'];checks['two_full_Lucas_rows']=aa['two_lucas_pass'];checks['nontrivial_powers']=aa['nontrivial_power_count']
    assert read('full_row.json')==full_row();checks['full_row_pairs']=read('full_row.json')['j_count']
    assert read('binomial_checks.json')==direct_checks();checks['direct_integer_binomial_pairs']=read('binomial_checks.json')['count']
    weak=read('weak_hensel_family.json')
    assert weak['rows']==[weak_family(m) for m in range(3,65)]
    checks['unbounded_family_sample_checks']=len(weak['rows'])
    for w in read('resonance_audit.json')['rows']:
        z=w['z'];a=2*z-4;c=reconstruct(z,a,1);A,B=3*z-4,6*z-5
        assert c['Q']==A*B and math.gcd(A,B)==1 and A>1 and B>1
        assert c['T0_j_remainder']!=0
        for k in ['a','P','Q','n','j','T0','T0_j_remainder']:assert c[k]==w[k]
    checks['resonance_rejected_shapes']=len(read('resonance_audit.json')['rows'])
    for w in read('finite_weak_candidates.json')['rows']:
        for side in ['P','Q']:
            fs=w[side+'_factorization'];product=1
            for p,e in fs.items():
                p=int(p);assert is_prime(p) and e>=1;product*=p**e
            assert product==w[side]
        assert len(w['P_factorization'])>1
        assert w['j']%w['T0']!=0
    checks['weak_candidate_factorizations']=2
    hashes={'payload':manifest('PAYLOAD_SHA256SUMS.txt'),'final':manifest('SHA256SUMS.txt')}
    after=tree();assert before==after,'Verification modified the extracted tree'
    result={'status':'PASS','checks':checks,'manifests':hashes,'files_in_tree':len(after),
      'tree_unchanged':True,'runtime_seconds':time.perf_counter()-t,
      'evidence_level':'same-author deterministic arithmetic and second algorithm; not Lean or external independent review'}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result))
if __name__=='__main__':main()
