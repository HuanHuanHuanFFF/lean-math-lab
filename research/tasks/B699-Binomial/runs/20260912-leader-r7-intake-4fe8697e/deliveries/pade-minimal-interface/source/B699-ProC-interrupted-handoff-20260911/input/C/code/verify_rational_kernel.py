#!/usr/bin/env python3
"""Second implementation of master-kernel certificate verification.
NO imports from linear_kernel, rational_height, or any generator.
"""
from copy import deepcopy
from pathlib import Path
from math import gcd
import json,time
from verify_certificates import (is_prime,kernel_from_list,ratio_parameters,
                               inequality_fails,check_witness,require,CertificateError)
ROOT=Path(__file__).resolve().parents[1]

def reconstruct_kernel(i,A,B,q):
    pos=[a for a in range(i) if (A*a)%q]
    D=max(pos)-min(pos)
    ps=[p for p in range(2,i) if p!=q and is_prime(p)]
    r=len(pos)-len(ps);require(r>0,'no surviving row guarantee')
    F,W=1,1
    for p in ps:
        power=p;maxpow=1
        while power<=D:
            largest=max(sum((a-b)%power==0 for b in pos) for a in pos)
            F*=p**(largest-1);maxpow=power;power*=p
        W*=maxpow
    if q==2:
        W=3 if i in (8,9,12,13,14) else 1
        require(W**r<=F,'two existence statements cannot be combined')
    values=[i if is_prime(i) else 1]
    values.extend(abs(B*b-A*a) for a in pos for b in range(a+1))
    require(all(v>0 for v in values),'zero determinant entered kernel')
    K=kernel_from_list(values,i,False)
    return {'q':q,'positions':pos,'diameter':D,'W':W,'K':K,'modulus':W*K,'r':r,'F':F}

def condition_holds(n,i,kernels):
    ps=[p for p in range(2,i) if is_prime(p)]
    for k in kernels:
        ok=False
        for a in k['positions']:
            large=n-a
            for p in ps:
                while large%p==0:large//=p
            small=(n-a)//large
            if k['W']%small==0 and k['K']%large==0 and small**k['r']<=k['F']:
                ok=True;break
        if not ok:return False
    return True

def verify(cert):
    rows,ws=cert['rows'],cert['witnesses'];pos=0
    expected=[(i,A,B) for B in range(3,9) for A in range(1,B//2+1) if gcd(A,B)==1 for i in range(2,15)]
    require(len(rows)==len(expected),'wrong cell count')
    byB={};endpoint=0;higher=0
    for row,(i,A,B) in zip(rows,expected):
        require((row['i'],row['A'],row['B'])==(i,A,B),'wrong ratio cell')
        z,s,K,E,lo=ratio_parameters(i,A,B)
        require((row['z'],row['small_primes'],row['K'],row['E'],row['t_min'])==(z,s,K,E,lo),'wrong height parameters')
        require(E>=0,'missing height monotonicity')
        cut=row['t_cut'];require(isinstance(cut,int) and cut>=lo,'bad cutoff')
        require(inequality_fails(i,B,cut,z,s,K),'tail not excluded')
        if cut>lo:require(not inequality_fails(i,B,cut-1,z,s,K),'nonminimal cutoff')
        require(row['n_bound']==B*(cut-1) and row['candidate_count']==cut-lo,'wrong height domain')
        ks=[reconstruct_kernel(i,A,B,q) for q in range(2,B+1) if B%q==0 and is_prime(q)]
        require(row['kernels']==ks,'wrong or missing master kernel')
        require(row['witness_start']==pos,'wrong witness segment')
        count=0
        for t in range(lo,cut):
            if not condition_holds(B*t,i,ks):continue
            require(pos<len(ws),'missing optimized ratio witness')
            w=ws[pos]
            require(len(w)==6 and w[:4]==[i,A,B,t],'missing/duplicate optimized ratio candidate')
            check_witness(B*t,i,A*t,w[4],w[5]);pos+=1;count+=1
            endpoint+=w[4]==i;higher+=w[5]>1
        require(row['witness_count']==count,'wrong optimized count')
        byB[B]=byB.get(B,0)+count
    require(pos==len(ws)==cert['total_checked'],'extra optimized ratio witnesses')
    return {'cells':len(rows),'pairs':pos,'by_denominator':byB,'endpoint_witnesses':endpoint,'higher_carries':higher}

def main():
    ts=time.monotonic();c=json.loads((ROOT/'evidence/rational-kernel-certificate.json').read_text())
    result=verify(c);tests=[]
    corruptions=[('delete optimized candidate',lambda c:c['witnesses'].pop(0)),
                 ('duplicate optimized candidate',lambda c:c['witnesses'].insert(0,c['witnesses'][0])),
                 ('delete a prime-factor kernel',lambda c:c['rows'][0]['kernels'].pop()),
                 ('alter product-of-smallparts bound',lambda c:c['rows'][0]['kernels'][0].__setitem__('F',0)),
                 ('alter remaining-row count',lambda c:c['rows'][0]['kernels'][0].__setitem__('r',0)),
                 ('omit eligible row',lambda c:c['rows'][0]['kernels'][0]['positions'].pop()),
                 ('p<i witness',lambda c:c['witnesses'][0].__setitem__(4,1)),
                 ('zero carry exponent',lambda c:c['witnesses'][0].__setitem__(5,0))]
    for name,mut in corruptions:
        bad=deepcopy(c);mut(bad)
        try:verify(bad)
        except CertificateError as e:tests.append({'mutation':name,'status':'REJECTED','reason':str(e)})
        else:raise AssertionError('accepted corrupted certificate: '+name)
    out={'status':'PASS_SECOND_IMPLEMENTATION_NOT_LEAN','result':result,'negative_tests':tests,'seconds':time.monotonic()-ts}
    (ROOT/'evidence/rational-kernel-verification.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()
