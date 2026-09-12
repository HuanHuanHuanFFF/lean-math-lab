from pathlib import Path
from fractions import Fraction as F
from math import comb,gcd
from functools import reduce
import json,hashlib,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb'
# Read-only checks after freeze. The recorded static corrections are historical.
assert '(1 : ℚ) ≤ 128' not in (out/'ActualRows.lean').read_text()
assert '(0 : ℚ) < 2187' not in (out/'ScaledGap.lean').read_text()
beta=F(43406276662336,9765625)
ql=F(19015678853391498507418691,79228162514264337593543950336)
el=F(18567076935738840000672813,19807040628566084398385987584)
qb=beta*ql;eb=beta*el;g=F(1302991,1000000)**5
qr=F(49**9)*g/(3**9*49**5*qb)
wr=F((49*16)**9)*g/(49**4*eb)
Z=17498099772305953;M=285
assert qr>=1 and wr>=Z
def choose(n,k):return comb(n,k) if 0<=k<=n else 0
def polynomials(u,v):
    p=[(-1)**(u+r)*choose(2*u+v+1,r)*choose(2*u-r,u) for r in range(u+1)]
    q=[(-1)**u*choose(2*u-r,u)*choose(v+r,r) for r in range(u+1)]
    e=[(-1)**r*choose(u+r,r)*choose(2*u+v+1,2*u+r+1) for r in range(v+1)]
    return p,q,e
def evalf(a,z):return sum((F(c)*z**i for i,c in enumerate(a)),F(0))
def hom(a,degree,x,y):return sum(c*x**i*y**(degree-i) for i,c in enumerate(a))
cases=[]
for m in range(1,7):
    for delta in (0,1):
        u=5*m-delta;v=4*m+delta-1
        p,q,e=polynomials(u,v);G=reduce(gcd,(abs(x) for x in q))
        ph=hom(p,u,1,49);qh=hom(q,u,1,49)
        assert ph%G==0 and qh%G==0
        pn=ph//G;qn=qh//G;err=49**(9*m)*pn-48**(9*m)*qn
        qv=evalf(q,F(1,49));ev=evalf(e,F(1,49))
        assert G*qn==49**u*qv
        assert G*err==49**v*ev
        assert abs(qv)<=qb**m and abs(ev)<=eb**m
        assert 49**v<=49**(4*m)
        if m==1:
            assert 2*abs(qv)<=qb and 2*abs(ev)<=eb
        cases.append({'m':m,'delta':delta,'G':str(G),'Q':str(qv) if m==1 else None,
                      'E':str(ev) if m==1 else None,
                      'Q_initial_ratio':str(2*abs(qv)/qb) if m==1 else None,
                      'E_initial_ratio':str(2*abs(ev)/eb) if m==1 else None})
# Small exact selector basis, never unfold multi-million-bit selector powers.
basis=[]
for p,a,b,k,alpha in [(7,11499,4096,18000,940),(2,1,1,36000,670)]:
    u=13813;v=256
    assert p**b<=2**a
    assert 2**u<=Z**v
    margins={'rate':u*b*alpha-a*v*k,
      'base':b*15359*alpha-a*k*M,
      'look':u*b*alpha*M-(2*alpha*b*v+a*v*k*(M+1))}
    assert min(margins.values())>=0
    basis.append({'p':p,'a':a,'b':b,'u':u,'v':v,'J_exponent':k,'alpha':alpha,
      'max_basis_bits':max((p**b).bit_length(),a+1,(Z**v).bit_length(),u+1),
      'margins':margins})
assert Z**(M-1)<=4*2**15359
N,D=qr.numerator,qr.denominator
assert 2*D**32<=N**32
assert 32*6<=M and 48<2**6
report={'status':'EXACT_BOUNDED_PYTHON_NOT_LEAN',
 'actual_polynomial_Hom_cases':cases,
 'm_range':[1,6],'deltas':[0,1],
 'qBase':str(qb),'eBase':str(eb),'contentBase':str(g),
 'qRate':str(qr),'wRate':str(wr),'Z':Z,'M':M,
 'qRate_matches_original_A3':str(qr)== '4330188673454998956186527952585840960990059954176/4199440704612936599415011687195348453521728515625',
 'qRate_small_basis':{'N':str(N),'D':str(D),'inequality':'2*D^32 <= N^32','holds':True,
    'max_bits':max((2*D**32).bit_length(),(N**32).bit_length()),'symbolic_exponent':'32*6=192 <=285; 2^6=64>48'},
 'selector_basis':basis,'previous_direct_bits':(Z**284).bit_length(),
 'no_full_selector_power_evaluation':True}
assert report['qRate_matches_original_A3']
if not (out/'exact-checks.json').exists():
    (out/'exact-checks.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
else:
    assert json.loads((out/'exact-checks.json').read_text()) == report
print(json.dumps({k:v for k,v in report.items() if k!='actual_polynomial_Hom_cases'},indent=2))
