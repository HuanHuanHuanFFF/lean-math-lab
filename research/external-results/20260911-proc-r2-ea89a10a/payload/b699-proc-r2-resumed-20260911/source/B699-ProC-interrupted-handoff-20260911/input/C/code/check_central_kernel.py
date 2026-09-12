#!/usr/bin/env python3
"""Deterministic independent checks of support lemma and central finite consumer.
Bounded tests supplement, not replace, the paper proof of the height theorem.
"""
from math import comb, gcd, prod
from pathlib import Path
import argparse,json,time
from central_kernel import factor,prime,kernel,c,bound

def vfact(n,p):
    s=0
    while n:n//=p;s+=n
    return s

def vchoose(n,j,p):return vfact(n,p)-vfact(j,p)-vfact(n-j,p)

def support_check():
    rows=[]
    for i in range(2,15):
        m=i//2;ps=[p for p in range(3,i) if prime(p)];period=prod(ps)
        covered=0;example=None
        for x in range(period):
            supports=[[p for p in ps if (x+2*r)%p==0] for r in range(m)]
            if any(not s for s in supports):continue
            covered+=1
            pure=[r for r,s in enumerate(supports) if s==[3]]
            pairs=[(a,b) for a in pure for b in pure if a<b and (2*(b-a))%3==0 and (2*(b-a))%9!=0]
            assert c(i)==3 and pairs,(i,x,supports)
            if example is None:example={'residue':x,'supports':supports,'pair':pairs[0]}
        rows.append({'i':i,'odd_rows':m,'period':period,'covered_residues':covered,'c':c(i),'example':example})
    return rows

def transfer_tests(N):
    tests=0
    # Check the stronger pointwise implication for each p avoided by C(n,j),
    # not only under noCommon (which has no positive regression instances).
    for n in range(6,N+1):
        for i in range(2,min(15,n//2)):
            for j in range(i+1,n//2+1):
                d=n-2*j;K=kernel(i,d)
                for a in range(i):
                    if (n-a)%2==0:continue
                    for p,e in factor(n-a).items():
                        if p<i:continue
                        if p==i and e==1:
                            assert K%p==0;tests+=1
                        elif vchoose(n,j,p)==0:
                            assert K%(p**e)==0,(n,i,j,a,p,e,K)
                            tests+=1
    return tests

def finite_band(D):
    rows=[];count=0;witnesses=[]
    for i in range(2,15):
        for d in range(D+1):
            B=bound(i,d);lo=2*i+2+d
            if (lo-d)%2:lo+=1
            checked=0
            for n in range(lo,B+1,2):
                j=(n-d)//2;assert i<j<=n//2
                ps=[p for p in factor(comb(n,i)) if p>=i]
                p=next((p for p in ps if vchoose(n,j,p)>0),None)
                assert p is not None,('B699 candidate!',n,i,j,d)
                # Check the witness by independent floor-residue carry test.
                q=p;exponent=None
                while q<=n:
                    if j%q>n%q:exponent=0;qq=q
                    if exponent is not None:
                        while qq>1:exponent+=1;qq//=p
                        break
                    q*=p
                assert exponent is not None and comb(n,i)%p==0
                witnesses.append([i,d,n,p,exponent]);count+=1;checked+=1
            rows.append({'i':i,'d':d,'K':kernel(i,d),'bound':B,'checked':checked})
    return {'D':D,'status':'PASS_FINITE_REMAINDERS_OF_PROVED_UNBOUNDED_HEIGHT','total_checked':count,'rows':rows,'witnesses':witnesses}

if __name__=='__main__':
    pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);pa.add_argument('--D',type=int,default=8);pa.add_argument('--N',type=int,default=100)
    a=pa.parse_args();a.out.mkdir(parents=True,exist_ok=True);t=time.monotonic()
    s=support_check();(a.out/'support-check.json').write_text(json.dumps({'status':'PASS_EXACT_COMPLETE_RESIDUES','rows':s},ensure_ascii=False,indent=2)+'\n')
    print('support patterns PASS',[(r['i'],r['covered_residues']) for r in s],flush=True)
    tests=transfer_tests(a.N);print('pointwise transfer checks',tests,flush=True)
    z=finite_band(a.D);(a.out/'central-band-certificate.json').write_text(json.dumps(z,separators=(',',':'))+'\n')
    info={'status':'PASS','transfer_test_n_max':a.N,'transfer_tests':tests,'band_D':a.D,'finite_pairs_checked':z['total_checked'],'max_height':max(r['bound'] for r in z['rows']),'seconds':time.monotonic()-t}
    (a.out/'central-check-summary.json').write_text(json.dumps(info,indent=2)+'\n');print(info)
