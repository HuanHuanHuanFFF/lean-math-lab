#!/usr/bin/env python3
"""Complete finite domains derived in notes/PROOFS.md; not a global n,j scan."""
from pathlib import Path
from math import gcd,isqrt
import json,sys
ROOT=Path(__file__).resolve().parents[1]
def dump(path,obj):
    path.write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
def cube(cert):
    C={'parameter_assignments':0,'integer_d':0,'legal_canonical':0,'first_pass':0}
    rows=[];b=cert['old_beta_bound'];limits=cert['cube']
    for g in range(1,limits['g_max']+1):
        for u in range(1,limits['u_max']+1,2):
            lo=-((limits['T_abs_max']+12*g)//u)
            hi=(limits['T_abs_max']-12*g)//u
            for k in range(lo+(1-lo)%2,hi+1,2):
                T=12*g+k*u
                assert T%2 and abs(T)<=limits['T_abs_max']
                for ep in [-1,1]:
                    C['parameter_assignments']+=1
                    num=3*u*u-2*ep*k
                    if num%T:continue
                    d=num//T
                    if d<cert['orientation_d_min']:continue
                    C['integer_d']+=1
                    X=d*u+ep;n=X*X;beta=d**3;j=g*beta
                    if not (4<=j<n//2 and n%4==0 and gcd(n,j)==g and gcd(beta,n-1)==d and beta>b):continue
                    if 4*(n-2)>=243*d**3 or n*n*g>=108*beta**3:continue
                    C['legal_canonical']+=1
                    rem=3*j*(j-1)%(n-1)
                    C['first_pass']+=rem==0
                    rows.append(dict(g=g,u=u,T=T,k=k,eps=ep,d=d,n=n,j=j,beta=beta,first_remainder=rem))
    rows.sort(key=lambda x:(x['n'],x['j']))
    assert C['first_pass']==0
    return {'counts':C,'records':rows,'claim':'complete finite cube-quotient over-cover; not actual counterexamples'}
def tails(cert):
    cases=[]
    for case in cert['tails']:
        r,t,w,K=(case[x] for x in ['r','t','weight','limit'])
        C=dict(q_values=0,g_values=0,powers=0,square_normalized=0,split_match=0)
        records=[];q=3
        while q**w<K:
            beta=q**r
            if beta<=cert['old_beta_bound']:q+=2;continue
            C['q_values']+=1
            for g in range(1,(K-1)//q**w+1):
                C['g_values']+=1;a=2
                while a<=2*beta:a*=2
                while a*a*g**3<108*beta**3:
                    C['powers']+=1;n=a*g;X=isqrt(n)
                    if n%4==0 and X*X==n:
                        C['square_normalized']+=1;d=gcd(beta,n-1)
                        if gcd(a,beta)==1 and d==q**t and ((X-1)%d==0 or (X+1)%d==0):
                            C['split_match']+=1;records.append([q,g,a,n,g*beta])
                    a*=2
            q+=2
        assert not records
        cases.append({'case':case,'counts':C,'survivors':records})
    return {'cases':cases,'q_policy':'ALL odd integers, composites included as a superset'}
if __name__=='__main__':
    if len(sys.argv)!=2:raise SystemExit('usage: generate.py OUTPUT_DIRECTORY')
    out=Path(sys.argv[1]);out.mkdir(parents=True,exist_ok=True)
    cert=json.loads((ROOT/'BOUND_CERTIFICATE.json').read_text())
    a,b=cube(cert),tails(cert);dump(out/'cube.json',a);dump(out/'tails.json',b)
    print(json.dumps({'cube':a['counts'],'tails':[x['counts'] for x in b['cases']]},ensure_ascii=False))
