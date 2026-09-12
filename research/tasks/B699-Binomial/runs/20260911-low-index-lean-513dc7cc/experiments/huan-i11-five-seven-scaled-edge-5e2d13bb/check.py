from pathlib import Path
from fractions import Fraction as F
from math import comb,gcd
from functools import reduce
import json,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-five-seven-scaled-edge-5e2d13bb'
qe=run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-04.json'
data=json.loads(qe.read_text());beta=F(data['factorial_certificate']['beta'])
ql=F(data['Q']['lambda']);el=F(data['E']['lambda'])
Lt=F(1303943,1000000);g=Lt**7;qb=beta*ql;eb=beta*el
qr=F(25**11)*g/(50**7*qb);wr=F((25*49)**11)*g/(50**4*eb)
N,D=qr.numerator,qr.denominator
Z=719422706382292314227864;M=194
assert 1<=qr and Z<=wr
assert 2*D**32<=N**32 and 32*6<=M
grow=(out/'GrowthInputs.lean').read_text()
assert f'def qLambda : ℚ := {ql.numerator} / {ql.denominator}' in grow
assert f'def eLambda : ℚ := {el.numerator} / {el.denominator}' in grow
assert 'factorial_strict_k_11_7' in grow
actual=(out/'ActualRows.lean').read_text();scaled=(out/'ScaledGap.lean').read_text()
assert 'Math.B699.I11DivisorFiveSeven.qContent_lower' in actual
assert '(a := (2 : ℤ) ^ (11 * m)) (b := 1)' in actual
assert '∃ row : Bool, (25 : ℤ) ^ (11 * m) ≤' in actual
assert 'def qNumerator : ℚ := (25 : ℚ) ^ 11 * contentBase' in scaled
assert 'def qDenominator (BQ : ℚ) : ℚ := (50 : ℚ) ^ 7 * BQ' in scaled
assert 'def wDenominator (BE : ℚ) : ℚ := (50 : ℚ) ^ 4 * BE' in scaled
def choose(n,k):return comb(n,k) if 0<=k<=n else 0
def polys(u,v):
    return ([(-1)**(u+r)*choose(2*u+v+1,r)*choose(2*u-r,u) for r in range(u+1)],
      [(-1)**u*choose(2*u-r,u)*choose(v+r,r) for r in range(u+1)],
      [(-1)**r*choose(u+r,r)*choose(2*u+v+1,2*u+r+1) for r in range(v+1)])
def ev(a):return sum((F(c,50**r) for r,c in enumerate(a)),F(0))
def hom(a,u):return sum(c*50**(u-r) for r,c in enumerate(a))
tests=[]
for m in range(1,7):
    for delta in (0,1):
        u=7*m-delta;v=4*m+delta-1
        p,q,e=polys(u,v);G=reduce(gcd,(abs(c) for c in q))
        ph=hom(p,u);qh=hom(q,u);assert ph%G==0 and qh%G==0
        pn=ph//G;qn=qh//G;err=50**(11*m)*pn-49**(11*m)*qn
        Q=ev(q);E=ev(e)
        assert G*qn==50**u*Q and G*err==50**v*E
        assert 50**v<=50**(4*m)
        assert abs(Q)<=qb**m and abs(E)<=eb**m
        assert 25**(11*m)*2**(11*m)==50**(11*m)
        # Exact integer identity behind the gap; keeps a=2^(11m).
        U,V=2,3;r=25**(11*m);s=49**(11*m);a=2**(11*m)
        assert r*(qn*U-a*pn*V)==qn*(r*U-s*V)-err*V
        if m==1:assert 2*abs(Q)<=qb and 2*abs(E)<=eb
        tests.append({'m':m,'delta':delta,'G':str(G),'Q':str(Q) if m==1 else None,'E':str(E) if m==1 else None,
         'CQ':str(2*abs(Q)/qb) if m==1 else None,'CE':str(2*abs(E)/eb) if m==1 else None})
assert Z**193<=4*2**15359
short_source=run/'experiments/huan-i11-approximation-bridge-plan-5e2d13bb/short-power-bases.json'
short=json.loads(short_source.read_text())
hits=[]
def find_row(x):
    if isinstance(x,dict):
        if x.get('seed',{}).get('p')==5 and x.get('seed',{}).get('q')==7 and 'ends' in x:hits.append(x)
        for t in x.values():find_row(t)
    elif isinstance(x,list):
        for t in x:find_row(t)
find_row(short)
assert len(hits)==1
cert=hits[0];v=cert['v'];u=cert['u'];assert (u,v)==(81153,1024)
assert 2**u<=Z**v
basis=[]
for end in cert['ends']:
    p=end['prime'];a=end['a'];b=end['b'];k=22000;alpha=end['alpha']
    assert p**b<=2**a
    margins=[u*b*alpha-a*v*k,b*15359*alpha-a*k*M,u*b*alpha*M-(2*alpha*b*v+a*v*k*(M+1))]
    assert min(margins)>=0,margins
    assert margins==[end['rate_exponent_margin'],end['base_exponent_margin'],end['lookahead_exponent_margin']]
    basis.append({'p':p,'a':a,'b':b,'u':u,'v':v,'J_exponent':k,'alpha':alpha,'margins':margins})
plan=json.loads((run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json').read_text())
row=plan['selected_plan']['rows'][4]
assert row['seed']['p']==5 and row['seed']['q']==7
assert row['wp']==352 and row['wq']==216 and row['D_threshold_m0']==149
assert F(row['L_target'])==Lt and F(row['Omega3_power_d'])==qr
assert F(row['Omega4_power_d'])*49**11==wr
plan_view={'top_keys':list(row),'seed':row['seed'],
 'scalars':{k:v for k,v in row.items() if not isinstance(v,(dict,list))}}
report={'status':'EXACT_SMALL_PYTHON_NOT_LEAN','c':11,'d':7,'Lt':str(Lt),'beta':str(beta),'qLambda':str(ql),'eLambda':str(el),
 'qBase':str(qb),'eBase':str(eb),'qRate':str(qr),'wRate':str(wr),'Z':Z,'M':M,
 'rate_strategy':{'N':str(N),'D':str(D),'inequality':'2*D^32 <= N^32','holds':True,
  'max_bits':max((2*D**32).bit_length(),(N**32).bit_length()),'symbolic':'R^32>=2 => R^192>=64>48; R>=1 and192<=194'},
 'hom_tests':tests,'m_range':[1,6],'deltas':[0,1],
 'selector_short_bases':basis,'max_basis_bits':max((Z**v).bit_length(),u+1),'previous_bits':(Z**193).bit_length(),
 'plan_row04':plan_view,'no_large_capacity_power_evaluation':True,'new_Lean_invocations':0}
p=out/'exact-checks.json'
if p.exists():assert json.loads(p.read_text())==report
else:p.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in report.items() if k!='hom_tests'},ensure_ascii=False,indent=2))
