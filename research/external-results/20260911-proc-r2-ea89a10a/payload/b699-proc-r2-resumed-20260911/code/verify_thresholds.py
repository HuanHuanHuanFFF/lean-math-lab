"""Independent certificate checker: minimize over all six shifted G valuations.
Uses floor quotients, not the shared residue function; independent prime list,
Fraction log enclosures with 32 terms, and complete contiguous m coverage.
This verifies only the new finite bridge, not the adopted unbounded tail.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations
import json,math,time,copy
ROOT=Path(__file__).resolve().parents[1]
SCALE=10**18

def trial_primes(n):
    ps=[]
    for a in range(2,n+1):
        prime=True
        for p in ps:
            if p*p>a:break
            if a%p==0:prime=False;break
        if prime:ps.append(a)
    return ps

def frac_log(n):
    def f(a,b):
        t=F(a,b);partial=2*sum((t**(2*k+1)/(2*k+1) for k in range(32)),F(0))
        tail=2*t**65/(65*(1-t*t))
        return partial,partial+tail
    k=n.bit_length()-1;a,b=f(1,3);c,d=f(n-(1<<k),n+(1<<k))
    lo,hi=k*a+c,k*b+d
    return (lo.numerator*SCALE//lo.denominator,
            (hi.numerator*SCALE+hi.denominator-1)//hi.denominator)

def check(cert,ps,logs):
    if cert.get('kind')!='FINITE_C2_BRIDGE' or cert.get('scale')!=SCALE:raise ValueError('header')
    if len(cert['families'])!=6:raise ValueError('families')
    expected={(5,7,14),(9,12,20),(5,6,15),(8,8,13),(9,11,18),(10,15,19)}
    seen=set();accepted=0;raw=0
    for f in cert['families']:
        triple=tuple(f['triple']);rate=F(f['g']);old=f['source_m0'];new=f['new_m0']
        if triple not in expected or triple in seen:raise ValueError('triple')
        seen.add(triple)
        source=json.loads((ROOT/'source/B699-ProC-interrupted-handoff-20260911/input/A/evidence'/('content_finite_'+'_'.join(map(str,triple))+'.json')).read_text())
        if source['m0']!=old or F(source['g'])!=rate:raise ValueError('adopted source mismatch')
        if [r['m'] for r in f['rows']]!=list(range(1,old+1)):raise ValueError('coverage')
        failed=[];minmargin=None
        for row in f['rows']:
            m=row['m'];xyz=[a*m for a in triple];S=sum(xyz);variants=[]
            for d in [1,2]:
                for sub in combinations(range(3),d):
                    a=[x-(ix in sub) for ix,x in enumerate(xyz)];variants.append(a)
            want=[];lo=hi=0
            for p in ps:
                if p>S//2:break
                vs=[]
                for a in variants:
                    q=p;v=0
                    while q<=S:
                        v+= ((sum(a)+1)//q-sum(x//q for x in a)>=2)
                        q*=p
                    vs.append(v)
                e=min(vs)
                if e:
                    want.append([p,e]);l,u=logs[p];lo+=l*e;hi+=u*e
            if want!=row['factors']:raise ValueError(('factorization',triple,m))
            target=rate*m*SCALE
            if lo>target:status='ABOVE'
            elif hi<target:status='BELOW';failed.append(m)
            else:raise ValueError('independent log undecided')
            if row['status']!=status:raise ValueError('classification')
            # Recorded generator bounds must overlap and remain close to the
            # independently reconstructed enclosures; never used for acceptance.
            if not row['log_lower']<=hi or not lo<=row['log_upper']:raise ValueError('log record')
            raw+=1
            if m>new:
                if status!='ABOVE':raise ValueError('bad m0')
                margin=F(lo,SCALE)-rate*m
                minmargin=margin if minmargin is None else min(minmargin,margin)
                accepted+=1
        if max(failed,default=0)!=new or f['failed_m']!=failed:raise ValueError('last failure')
        if [f['accepted_from'],f['accepted_to'],f['finite_count']]!=[new+1,old,old-new]:raise ValueError('range metadata')
    return dict(raw_rows=raw,accepted_bridge_rows=accepted,families=6)

def main():
    st=time.monotonic();cert=json.loads((ROOT/'evidence/threshold_certificate.json').read_text())
    maxp=max(sum(f['triple'])*f['source_m0']//2 for f in cert['families'])
    ps=trial_primes(maxp);logs={p:frac_log(p) for p in ps}
    result=check(cert,ps,logs)
    print('PASS independent bridge',result,flush=True)
    # Mutations fail in the first family, so none reruns historical work.
    bads=[]
    for name in ['missing_row','extra_prime_power','classification','artificially_lowered_m0','source_boundary']:
        b=copy.deepcopy(cert);f=b['families'][0]
        if name=='missing_row':f['rows'].pop(0)
        elif name=='extra_prime_power':
            f['rows'][0]['factors'][0][1]+=1
        elif name=='classification':f['rows'][0]['status']='ABOVE' if f['rows'][0]['status']=='BELOW' else 'BELOW'
        elif name=='artificially_lowered_m0':f['new_m0']=0
        else:f['source_m0']+=1
        try:check(b,ps,logs)
        except (ValueError,AssertionError):bads.append(name)
        else:raise RuntimeError(('bad certificate accepted',name))
    result.update(status='PASS_FRESH_FINITE_BRIDGE_CHECK',negative_tests_rejected=bads,
                  prime_limit=maxp,prime_count=len(ps),seconds=round(time.monotonic()-st,3),
                  tail_reverified=False,lean=False)
    (ROOT/'evidence/threshold_check.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result),flush=True)
if __name__=='__main__':main()
