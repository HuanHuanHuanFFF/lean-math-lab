"""Nonvacuous content tests and the general rational-root denominator mechanism."""
from fractions import Fraction as Q
from math import comb,gcd
import json,sys
from pathlib import Path
from common import content,vp,eval_poly,residual

def run():
    ct=0;hh=0;rr=0
    for n in range(8,241,4):
        for j in range(4,n//2+1):
            fc,H,L,ps=content(n,j)
            assert comb(n,j)%L==0
            for x in [Q(1,3),Q(2,5),Q(1,2)]:
                lhs=H*eval_poly(ps,x)
                rhs=sum(Q(fc[i])*x**(3-i)*(x-1)**i for i in range(4))
                assert lhs==rhs
            ct+=1
            if vp(j,2)<vp(n,2):
                assert vp(H,2)==vp(j,2)
                assert ps[2]%2!=0
                assert vp(L,2)==vp(n,2)-vp(j,2)
                hh+=1
            # Content residual identity valid with rational q, without NC3.
            for A,u in [(3,1),(4,1),(5,2)]:
                y,r,q,R=residual(n,j,A,u)
                E=Q(A**3)*eval_poly(ps,Q(u,A))
                assert E.denominator==1
                assert (n-1)*R==-36*H*E
                rr+=1
    # General lemma: first two valuations cannot cancel except at d=s.
    choices=[]
    for s in range(1,25):
        for d in range(1,s):
            vals=[s,d,2*d,3*d]
            assert vals.count(min(vals))==1
            choices.append([s,d])
    roots=0
    for s in range(1,9):
        L=2**s
        for u in range(1,L,2):
            for b in [-2,0,3]:
                for c in [1,2]:
                    cs=[-u*c,L*c-u*b,L*b-u,L]
                    assert cs[2]%2 and eval_poly(cs,Q(u,L))==0
                    assert Q(u,L).denominator==L
                    roots+=1
    f,H,L,ps=content(28,14)
    assert ps==[-2,13,-27,18] and eval_poly(ps,Q(1,3))==0
    y,r,q,R=residual(28,14,3,1)
    assert (q,R)==(20,0)
    # Complete p=3 layer: high carry is not interchangeable with mod9.
    n,j,p=56,11,3
    assert j%27>n%27 and not(j%9>n%9)
    return {'status':'PASS','legal_content_inputs':ct,'dyadic_content_inputs':hh,'residual_checks':rr,
            'unique_low_valuation_checks':len(choices),'constructed_rational_roots':roots,
            'zero_residual_boundary':{'n':28,'j':14,'H':H,'L':L,'Psi':ps,'A':3,'u':1,'q':20,'R':0},
            'p_equal_i_complete_power':{'n':56,'j':11,'p':3,'correct_modulus':27,'wrong_modulus':9}}
if __name__=='__main__':
    out=run();Path(sys.argv[1]).write_text(json.dumps(out,indent=2,sort_keys=True)+'\n');print('PASS content',out['legal_content_inputs'])
