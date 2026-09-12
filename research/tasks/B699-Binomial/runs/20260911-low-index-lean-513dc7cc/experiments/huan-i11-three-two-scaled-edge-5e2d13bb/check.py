from pathlib import Path
from fractions import Fraction as F
from math import comb,gcd
from functools import reduce
import re,json,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-three-two-scaled-edge-5e2d13bb'
qe=run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-02.json'
data=json.loads(qe.read_text())
beta=F(data['factorial_certificate']['beta']);ql=F(data['Q']['lambda']);el=F(data['E']['lambda'])
Lt=F(41069,31250);g=Lt**15;qb=beta*ql;eb=beta*el
qr=9**8*g/qb;wr=F(72**23)*g/(9**8*eb)
N,D=qr.numerator,qr.denominator
Z=37002653975761602583641821923;M=162
assert 1<=qr and Z<=wr
assert 64*D**32<=N**32 and 32<=M
growth=(out/'GrowthInputs.lean').read_text()
assert f'def qLambda : ℚ := {ql.numerator} / {ql.denominator}' in growth
assert f'def eLambda : ℚ := {el.numerator} / {el.denominator}' in growth
assert 'factorial_strict_k_23_15' in growth
actual=(out/'ActualRows.lean').read_text()
assert 'Math.B699.I11DivisorThreeTwo.qContent_lower' in actual
assert 'I11DivisorSevenTwo' not in actual
def choose(n,k):return comb(n,k) if 0<=k<=n else 0
def polys(u,v):
    p=[(-1)**(u+r)*choose(2*u+v+1,r)*choose(2*u-r,u) for r in range(u+1)]
    q=[(-1)**u*choose(2*u-r,u)*choose(v+r,r) for r in range(u+1)]
    e=[(-1)**r*choose(u+r,r)*choose(2*u+v+1,2*u+r+1) for r in range(v+1)]
    return p,q,e
def ev(a,z):return sum((F(c)*z**r for r,c in enumerate(a)),F(0))
def hom(a,u):return sum(c*9**(u-r) for r,c in enumerate(a))
tests=[]
for m in range(1,5):
    for delta in (0,1):
        u=15*m-delta;v=8*m+delta-1
        p,q,e=polys(u,v);G=reduce(gcd,(abs(c) for c in q))
        ph=hom(p,u);qh=hom(q,u)
        assert ph%G==0 and qh%G==0
        pn=ph//G;qn=qh//G;err=9**(23*m)*pn-8**(23*m)*qn
        Q=ev(q,F(1,9));E=ev(e,F(1,9))
        assert G*qn==9**u*Q and G*err==9**v*E
        assert 9**v<=9**(8*m)
        assert abs(Q)<=qb**m and abs(E)<=eb**m
        if m==1:assert 2*abs(Q)<=qb and 2*abs(E)<=eb
        tests.append({'m':m,'delta':delta,'G':str(G),'Q':str(Q) if m==1 else None,'E':str(E) if m==1 else None,
          'CQ':str(2*abs(Q)/qb) if m==1 else None,'CE':str(2*abs(E)/eb) if m==1 else None})
assert Z**161<=4*2**15359
# Short bases only; derive numerical exponent checks without huge target evaluation.
v=256
u=(Z**v).bit_length()-1
assert 2**u<=Z**v
basis=[]
for p,b,k,alpha in [(3,4096,46000,774),(2,1,69000,732)]:
    a=(p**b-1).bit_length()
    assert p**b<=2**a
    margins=[u*b*alpha-a*v*k,b*15359*alpha-a*k*M,u*b*alpha*M-(2*alpha*b*v+a*v*k*(M+1))]
    assert min(margins)>=0,margins
    basis.append({'p':p,'a':a,'b':b,'u':u,'v':v,'J_exponent':k,'alpha':alpha,'margins':margins})
report={'status':'EXACT_SMALL_PYTHON_NOT_LEAN','c':23,'d':15,'Lt':str(Lt),'beta':str(beta),'qLambda':str(ql),'eLambda':str(el),
 'qBase':str(qb),'eBase':str(eb),'qRate':str(qr),'wRate':str(wr),'Z':Z,'M':M,
 'rate_strategy':{'N':str(N),'D':str(D),'inequality':'64*D^32 <= N^32','holds':True,
 'max_bits':max((64*D**32).bit_length(),(N**32).bit_length()),'symbolic':'64 <= R^32 <= R^162 and 48 <64; use R>=1, 32<=162'},
 'hom_tests':tests,'m_range':[1,4],'delta_cases':[0,1],
 'selector_short_bases':basis,'max_selector_basis_bits':max((Z**v).bit_length(),u+1),'previous_bits':(Z**161).bit_length(),
 'no_full_capacity_power_evaluation':True,'new_Lean_invocations':0}
p=out/'exact-checks.json'
if p.exists():assert json.loads(p.read_text())==report
else:p.write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in report.items() if k!='hom_tests'},indent=2))
