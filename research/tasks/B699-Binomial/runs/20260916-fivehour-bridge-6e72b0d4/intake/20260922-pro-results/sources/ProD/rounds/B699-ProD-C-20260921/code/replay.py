"""Replay exact algebra, source-adapter regressions, and named countermodels.
This is NOT a Lean proof, independent review, or an original-problem finite endpoint.
"""
from pathlib import Path
from fractions import Fraction as F
from math import gcd, comb, isqrt
import json
import sys
from source_adapter import assess, assess_norm_candidate, v_binomial
from local_depth_family import verify as verify_local
ROOT=Path(__file__).resolve().parents[1]

# Sparse rational polynomial arithmetic, with four formal variables.
Z=(0,0,0,0)
def c(x):return {Z:F(x)} if x else {}
def var(i):
    e=[0]*4;e[i]=1;return {tuple(e):F(1)}
def add(*args):
    out={}
    for a in args:
        for e,v in a.items():out[e]=out.get(e,F(0))+v
    return {e:v for e,v in out.items() if v}
def scale(a,s):return {e:v*s for e,v in a.items() if v*s}
def neg(a):return scale(a,-1)
def sub(a,b):return add(a,neg(b))
def mul(*args):
    out=c(1)
    for a in args:
        new={}
        for e,v in out.items():
            for f,w in a.items():
                h=tuple(x+y for x,y in zip(e,f))
                new[h]=new.get(h,F(0))+v*w
        out={e:v for e,v in new.items() if v}
    return out
def sq(a):return mul(a,a)
def same(a,b):
    assert sub(a,b)=={},sub(a,b)

def algebra_checks():
    n,U=var(0),var(1)
    N=sub(n,c(1));x=sub(n,c(4))
    P=add(scale(mul(sub(n,c(3)),sub(n,c(4))),4),scale(mul(n,U),-9),scale(sq(U),27))
    V=add(scale(n,2),c(4),scale(U,-9))
    Z4=add(mul(N,sub(U,c(2))),c(2))
    same(add(scale(Z4,9),mul(N,V)),scale(sq(x),2))
    same(scale(P,3),add(scale(sq(x),10),neg(mul(add(x,c(12)),V)),sq(V)))
    same(P,add(scale(sq(sub(U,scale(n,F(1,6)))),27),scale(sq(n),F(13,4)),scale(n,-28),c(48)))
    same(sub(scale(mul(sub(n,c(3)),sub(n,c(4))),4),P),scale(mul(U,sub(n,scale(U,3))),9))
    # Exact higher-layer near-slot equations, Q,h,y,s formal.
    Q,h,y,s=(var(i) for i in range(4))
    n=add(c(5),mul(Q,h));U=add(c(1),mul(Q,s))
    for b in (1,4):
        j=add(c(b),mul(Q,y));k=sub(n,j)
        lhs=sub(mul(sub(j,c(1)),sub(k,c(1))),mul(sub(n,c(1)),sub(U,c(1))))
        near_y=y if b==1 else sub(h,y)
        rhs=mul(Q,add(scale(near_y,3),scale(s,-4),mul(Q,sub(mul(y,sub(h,y)),mul(h,s)))))
        same(lhs,rhs)
    return 6

def norm_model_check():
    m=json.loads((ROOT/'outputs/norm_probe.json').read_text())['models'][0]
    r=assess_norm_candidate(m['n'],m['g'],m['a'],m['delta'],m['z'])
    assert r['first_N_relation'] and not r['scalar_pass']['2'] and not r['low_mass']
    assert r['q5_all_nearside'] is False
    assert v_binomial(m['n'],6,7)==1 and v_binomial(m['n'],m['j'],7)==69
    assert (m['n']-1)*m['j']*(m['n']-m['j'])==10*((m['n']-1)*m['g']*m['z'])**2
    return {'a':m['a'],'z':m['z'],'q2_full':False,'low_mass':False,
            'q5_all_nearside':False,'common_prime':7,'source_valuation':1,'target_valuation':69,
            'q2_defect_square_identity':True}

def square_route_check():
    # y+x sqrt(10) = (117+37 sqrt(10))^(2m+1); these are weak inputs.
    y,x=117,37
    step_y,step_x=27379,8658 # square of 117+37 sqrt(10)
    for m in range(4):
        assert y*y-10*x*x==-1 and x%37==0
        n=10*x*x;j=5*n//37;k=n-j
        assert (n*(n-1)*j*k)==(40*x*n*y//37)**2
        assert isqrt(n)**2!=n and 7<=j<=n//2
        assert j*k%(n-1)!=0
        if m==0:
            assert (n,j,isqrt(n*(n-1)*j*k))==(13690,1850,64069200)
        y,x=y*step_y+10*x*step_x,y*step_x+x*step_y
    return {'formula_verified_examples':4,'first_n':13690,'first_j':1850,
            'missing':'first source and alpha=3^a; not NC6'}

def main():
    assert pow(3,30,31**2)==528
    assert all(pow(3,30//p,31)!=1 for p in (2,3,5))
    assert pow(3,100,1000)==1 and 14*14%31==10
    identities=algebra_checks()
    regression_inputs=0;first_inputs=0
    # Implementation regression for identities, NOT claimed original-problem coverage.
    for n in range(14,241):
        for j in range(7,n//2+1):
            r=assess(n,j);regression_inputs+=1
            first_inputs+=r['first_N_relation']
    fixtures=json.loads((ROOT/'outputs/local_depth_family.json').read_text())['examples']
    for old in fixtures:
        assert verify_local(old['e'],old['H'],old['m'])==old
    # p-specific quotient transport retains target valuation but not the i=6 source.
    assert v_binomial(192,78,11)==v_binomial(17,7,11)==1
    assert v_binomial(192,6,11)==1 and v_binomial(17,6,11)==0
    # Do NOT infer anything about NC6 of either pair from this witness example.
    out={'status':'PASS_EXACT_REPLAY_NOT_FRONTIER_CLOSURE',
         'polynomial_identities':identities,'adapter_regression_inputs':regression_inputs,
         'adapter_first_relation_inputs':first_inputs,'local_depth_fixtures':len(fixtures),
         'norm_weak_model':norm_model_check(),'square_route_weak_family':square_route_check(),
         'higher_quotient_witness_transport_example':'PASS, not an NC6 descent',
         'frontier_reduction':0,'lean':False,'external_independent_review':False}
    if len(sys.argv)>1:
        Path(sys.argv[1]).write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(out,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
