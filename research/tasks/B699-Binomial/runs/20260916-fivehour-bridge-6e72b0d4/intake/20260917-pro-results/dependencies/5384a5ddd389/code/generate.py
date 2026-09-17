#!/usr/bin/env python3
"""Construct the new exact algebra certificate; does not run inherited chains."""
from pathlib import Path
import json
import sympy as S
from consumer import source_small
ROOT=Path(__file__).resolve().parents[1]
x,y,N,Z,A,u,L,s=S.symbols('x y N Z A u L s')
f=x*y*(x-1)*(y-1)*(2*x-y-2)*(2*y-x-2)
def terms(p,vs):
    return [[*m,int(c)] for m,c in sorted(S.Poly(S.expand(p),*vs).terms())]
nodes=[]
for r,bs in [(1,range(2)),(2,[1]),(3,range(4)),(4,range(5))]:
    for b in bs:
        w=3 if r==1 else 2 if (r,b) in [(2,1),(4,2)] else 1
        nodes.append(dict(r=r,b=b,order=w))
D=(N-1)**3*(N-3)*(N-4)
mid=[]
for a in (2,3):
    n=x+y;m=2*a-1
    K=m*m*L-s*a*(a-1)*n-s*a*a
    U=m*x-(a-1)*n-a;V=m*y-(a-1)*n-a
    error=S.expand((n-1)*K-s*U*V-m*m*((n-1)*L-s*x*y))
    assert error==0
    mid.append(dict(a=a,K_terms=terms(K,(x,y,L,s)),U_terms=terms(U,(x,y)),V_terms=terms(V,(x,y))))
cost=[]
for i in (5,6):
    for r in range(1800):
        if r%72 not in (18,56) or (i==6 and r%5 not in (0,2)):continue
        n=r+3600; ss=[source_small(n-h,i) for h in (1,3,4)]
        cost.append(dict(i=i,residue=r,s1=ss[0],s3=ss[1],s4=ss[2],Aprime=ss[0]**3*ss[1]*ss[2]))
out={
 'schema':'paired-midpoint-v1','targets':[5,6,7,8],
 'F_terms':terms(f,(x,y)), 'nodes':nodes,'origin_order':2,'degree':6,
 'F_NZ_terms':terms(Z*(Z-N+1)*(9*Z-2*N*N-2*N+4),(N,Z)),
 'upper_positive_identity':terms((N*N-4*Z)*(144*Z*Z+4*Z*N*N+N**4),(N,Z)),
 'lower_identity':terms((27*Z-4*A)**2*(27*Z+2*A),(A,Z)),
 'tail_terms':terms((8*D-7*N**5).subs(N,80+u),(u,)),
 'negative_bound_cutoff':64,'joint_bound_cutoff':80,'joint_constant':56,
 'constant_margin':2187*64**3-2048*65**3,
 'midpoints':mid,'costs':cost,
 'weak_lift_example':{'n':1503090,'i':5,'j':5202,'s':1,'g':18,'t':16,'L':5184,
                      'q4':751543,'widehat_M4':169,'actual_M4':13,'K4':-2959528},
 'zero_case':{'n':16,'i':5,'j':6},
 'failure_status':'not a global height or a closed two-base residual branch'
}
# Check the numerical example against the actual local source before freezing.
from consumer import data
z=data(1503090,5,5202)
for k in ('s','g','t','L','q4','widehat_M4','K4'):
    value=z['q'][4] if k=='q4' else z[k]
    assert value==out['weak_lift_example'][k],(k,value,out['weak_lift_example'][k])
assert z['M4']==13 and z['K4']%(169*169)!=0
(ROOT/'evidence/new-certificate.json').write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
print(json.dumps({'F_terms':len(out['F_terms']),'nodes':len(nodes),'taylor_conditions':sum(v['order']*(v['order']+1)//2 for v in nodes),'cost_classes':len(cost),'certificate':'evidence/new-certificate.json'}))
