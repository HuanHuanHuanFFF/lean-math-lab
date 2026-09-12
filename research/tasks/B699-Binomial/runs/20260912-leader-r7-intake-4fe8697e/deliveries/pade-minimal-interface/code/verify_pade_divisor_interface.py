"""Sufficient full-power Padé divisor check; no transport or exact G imported."""
from pathlib import Path
from fractions import Fraction as F
import json,time,copy
from verify_thresholds import trial_primes,frac_log
ROOT=Path(__file__).resolve().parents[1]
SCALE=10**18

def check(cert,primeset,logs):
    rows_checked=terms=0
    if cert.get('kind')!='FINITE_C2_BRIDGE':raise ValueError('kind')
    for fam in cert['families']:
        old,new=fam['source_m0'],fam['new_m0'];g=F(fam['g'])
        rows=[r for r in fam['rows'] if r['m']>new]
        if [r['m'] for r in rows]!=list(range(new+1,old+1)):raise ValueError('non-contiguous bridge')
        for row in rows:
            m=row['m'];xyz=[a*m for a in fam['triple']];S=sum(xyz);lower=0;seen=set()
            for p,exponent in row['factors']:
                if p not in primeset or p in seen or not isinstance(exponent,int) or exponent<1:
                    raise ValueError('prime power record')
                seen.add(p);q=p;legal_layers=0
                while q<=S:
                    # Floor-quotient calculation, independent of residue code.
                    if S-q*sum(x//q for x in xyz)>=2*q+1:legal_layers+=1
                    q*=p
                if exponent>legal_layers:raise ValueError('unsupported prime power')
                lower+=exponent*logs[p][0];terms+=1
            if not lower>g*m*SCALE:raise ValueError('insufficient product bound')
            rows_checked+=1
    return dict(bridge_rows=rows_checked,prime_power_records=terms)

def main():
    start=time.monotonic();cert=json.loads((ROOT/'evidence/threshold_certificate.json').read_text())
    limit=max(sum(f['triple'])*f['source_m0']//2 for f in cert['families'])
    ps=trial_primes(limit);logs={p:frac_log(p) for p in ps};result=check(cert,set(ps),logs)
    bad=[]
    for name in ['missing_accepted_m','unsupported_exponent','empty_product']:
        b=copy.deepcopy(cert);f=b['families'][0]
        ix=next(ix for ix,r in enumerate(f['rows']) if r['m']>f['new_m0'])
        if name=='missing_accepted_m':f['rows'].pop(ix)
        elif name=='unsupported_exponent':f['rows'][ix]['factors'][0][1]+=1000
        else:f['rows'][ix]['factors']=[]
        try:check(b,set(ps),logs)
        except ValueError:bad.append(name)
        else:raise RuntimeError('bad sufficient-divisor certificate accepted')
    result.update(status='PASS_TRANSPORT_FREE_PADE_FINITE_BRIDGE',negative_tests_rejected=bad,
                  depends_on_exact_G_formula=False,depends_on_transport=False,
                  old_infinite_tail_adopted_not_reverified=True,lean=False,
                  seconds=round(time.monotonic()-start,3))
    (ROOT/'evidence/minimal_pade_check.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result),flush=True)
if __name__=='__main__':main()
