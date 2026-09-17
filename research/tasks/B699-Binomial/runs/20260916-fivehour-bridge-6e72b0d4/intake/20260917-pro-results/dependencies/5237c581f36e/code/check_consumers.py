"""Finite regression only; all infinite consumers are proved in notes/PROOFS.md."""
from pathlib import Path
from fractions import Fraction as Q
from math import comb,gcd,isqrt
import json,sys,hashlib
from common import kernel_gate,row_gate,source_primes,choose_vp,subdigits,prime,vp,residual

ROW_PARAMS=[(5,1,4,24,4),(5,2,4,24,4),(5,1,4,624,7),
            (7,1,6,48,4),(11,1,10,120,4),
            (3,2,2,8,4),(3,2,2,80,7),
            (5,1,4,4*5**4+4,8),(5,2,3,2*5**4+1,8),
            (7,1,6,6*7**4+6,8),(11,1,10,10*11**4+10,8)]
LIFTS=[(8,4,5,39,1,5),(4,3,23,273,1,23),(11,4,8,87,1,8),
       (13,8,4,51,1,4)]

def run():
    rows=[];total=0
    for P,f,A,B,e in ROW_PARAMS:
        assert row_gate(P,f,A,B,e)
        T=P**f;X=P**e;n=T*(A*X+B)
        ps=source_primes(n)
        assert all(prime(p) for p in ps)
        entries=[]
        for u in subdigits(A,P):
            for w in subdigits(B,P):
                j=T*(u*X+w)
                if not 4<=j<=n//2:continue
                assert choose_vp(n,j,P)==0
                good=[(p,choose_vp(n,3,p),choose_vp(n,j,p)) for p in ps]
                good=[z for z in good if z[1] and z[2]]
                assert good,(n,j)
                entries.append([j,*good[0]])
        total+=len(entries)
        digest=hashlib.sha256(json.dumps(entries,separators=(',',':')).encode()).hexdigest()
        rows.append({'params':[P,f,A,B,e],'n':n,'allocations':len(entries),'digest':digest,'source_primes':ps,
                     'first':entries[:2],'old_gate':X>=3*A*B*B})
    # Exact size estimate, including rational q, both signs of the terms and even T.
    sizes=0;negterm=0;max_ratio=Q(0);min_ex=None
    for T in [2,3,4,5,7,8,11,13]:
      for A in range(1,T):
       for B in range(1,11):
        need=(A*B*B*(T*B+2)+T-1)//T
        X0=max(A*B,isqrt(need))
        if X0*X0<need:X0+=1
        for X in [X0,X0+1]:
         assert kernel_gate(T,A,B,X)
         n=T*(A*X+B)
         for u in range(A+1):
          for w in range(B+1):
           de=A*w-B*u
           j=T*(u*X+w)
           if de<=0 or not 0<j<n:continue
           y,r,q,R=residual(n,j,A,u)
           assert 0<q<Q(3*T*A*B*B,X)
           ratio=abs(R)/Q(6*T*(n-2))
           assert ratio<1
           negterm+=(de+Q(2*(2*u-A),T)<0)
           if ratio>max_ratio:max_ratio=ratio;min_ex=[T,A,B,X,u,w]
           sizes+=1
    lifts=[]
    for T,A,B,X,u,w in LIFTS:
        n=T*(A*X+B);j=T*(u*X+w)
        assert kernel_gate(T,A,B,X) and X<3*A*B*B
        assert n%4==0 and 4<=j<n/2 and 3*j*(j-1)%(n-1)==0
        y,r,q,R=residual(n,j,A,u)
        h=(3*r-q)/T
        assert q.denominator==h.denominator==R.denominator==1 and h<0
        ww=6*j*(j-1)*(j-2)%(n-2)
        assert ww
        found=next((p,choose_vp(n,3,p),choose_vp(n,j,p)) for p in source_primes(n) if choose_vp(n,j,p))
        lifts.append({'params':[T,A,B,X,u,w],'n':n,'j':j,'q':int(q),'h':int(h),'R':int(R),'W2_rem':ww,'witness':found})
    # Infinite family inequalities, sampled at symbolic integer parameter values; not infinite proof.
    fam=[]
    for P in [5,7,11,101]:
        for b in [1,2,5,20]:
            A=P-1;B=P**(2*b)-1;X=P**(3*b+1)
            assert kernel_gate(P,A,B,X) and X<3*A*B*B
            fam.append([P,b,X.bit_length(),B.bit_length()])
    triples=0
    for P in [3,5,7,11,17,31,101]:
        for f in [1,2,5]:
            for e in [4,5,9]:
                x=P**e
                for a,b,c in [(1,1,1),(P-1,P-1,P-1),(P-1,1,P-1)]:
                    assert kernel_gate(P**f,a,b*x+c,x*x)
                    triples+=1
    isolated=0;small_n=set()
    for e in range(1,17):
        x=3**e
        for a in [1,2]:
         for b in [1,2]:
          for c in [1,2]:
           n=3*(a*x*x+b*x+c)
           if n%4==0:
            assert vp(n,2)<=4 and n>=39
            if e<=2:small_n.add(n)
            isolated+=1
    actual=0
    for n in sorted(small_n):
        cn=comb(n,3)
        for j in range(4,n//2+1):
            g=gcd(cn,comb(n,j));odd=g//(g&-g)
            assert odd>1
            actual+=1
    return {'status':'PASS','rows':rows,'digit_allocations':total,
            'size_estimate_regression':{'count':sizes,'negative_term_branch':negterm,'max_ratio':str(max_ratio),'max_parameters':min_ex},
            'signed_first_window_examples':lifts,'symbolic_family_instances':fam,'triple_gate_instances':triples,
            'isolated_three_states':isolated,'direct_binomial_rows':sorted(small_n),'direct_binomial_pairs':actual}
if __name__=='__main__':
    out=run();Path(sys.argv[1]).write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print('PASS consumers',out['digit_allocations'],'digital allocations;',out['size_estimate_regression']['count'],'size cases')
