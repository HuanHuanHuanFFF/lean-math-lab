from pathlib import Path
from itertools import combinations_with_replacement
from math import comb
import json,hashlib,ctypes,time
import sympy as sp
N,X,T=sp.symbols('N X T');BASE=Path(__file__).parent

def span_rank(polys):
    pp=[sp.Poly(p,N,X) for p in polys]
    mons=sorted(set(m for p in pp for m,c in p.terms()))
    return int(sp.Matrix([[p.coeff_monomial(m) for p in pp] for m in mons]).rank())

def products(basis,d):
    return [sp.prod(basis[i] for i in inds) for inds in combinations_with_replacement(range(len(basis)),d)]

start=time.monotonic();sharp=[]
for d in range(2,8):
    p=sp.Poly(T**d-2,T);coeff=list(map(int,p.all_coeffs()))
    eisenstein=(coeff[0]%2!=0 and all(c%2==0 for c in coeff[1:]) and coeff[-1]%4!=0)
    mons=[(a,b) for b in range(d+1) for a in range(2*d-2*b+1)]
    kernel=[(a,b) for a,b in mons if a+2*b>=2*d]
    rank=span_rank(products([N**2,X],d))
    assert eisenstein and len(kernel)==d+1==rank
    repetitions=[]
    for e in range(1,4):
        target=[(2*(d*e-j),j) for j in range(d*e+1)]
        attainable={sum(k) for k in combinations_with_replacement(range(d+1),e)}
        assert attainable==set(range(d*e+1))
        repetitions.append(dict(e=e,dim_V=len(target),weighted_charge=e*d,equality=e*d==len(target)-1))
    sharp.append(dict(d=d,q=d,D=2*d,source_weight=2*d,U_basis=['N**2','X'],U_dimension=2,W_dimension=len(kernel),product_dimension=rank,eisenstein_prime2=eisenstein,repetitions=repetitions))

A=[N+X,N*N+X,X*X+N];B=[N+1,X+1,N*X+1,X*X+N]
ra=span_rank(A);rb=span_rank(B);rab=span_rank([a*b for a in A for b in B]);assert rab>=ra+rb-1
bad_full_sym=dict(basis=['1','N','N**2'],power=2,symmetric_power_dimension=comb(4,2),actual_product_dimension=span_rank(products([1,N,N*N],2)))
assert bad_full_sym['actual_product_dimension']==5
rational_matrix=sp.Matrix([[1,0,2],[0,1,0]])
nu=rational_matrix.nullspace();assert len(nu)==1 and list(nu[0])==[-2,0,1]
sq=sp.sqrt(2);H=X*X-2*N**4;F1=X-sq*N*N;F2=X+sq*N*N
assert sp.expand(F1*F2-H)==0
assert [sp.simplify(f.subs({N:1,X:sq})) for f in (F1,F2)]==[0,2*sq]
assert [sp.simplify(f.subs({N:1,X:-sq})) for f in (F1,F2)]==[-2*sq,0]
mem=(ctypes.c_ulonglong*8)();mem[0]=64;ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(mem))
result=dict(scope='Exact small controls for the paper theorem. These are auxiliary polynomial/source examples, not B699 G or original NC points. No finite examples substitute for the general proof.',sharp_families=sharp,product_space_control=dict(A_dimension=ra,B_dimension=rb,product_dimension=rab,lower_bound=ra+rb-1),full_symmetric_power_is_not_injective=bad_full_sym,nonrational_source_counterexample=dict(basis=['N**4','N**2*X','X**2'],rational_constraint_matrix=[[1,0,2],[0,1,0]],dimension=1,generator=str(H),absolute_factors=[str(F1),str(F2)],individual_source_orders=[[1,0],[0,1]],source_rationality_hypothesis_fails=True),resource_observation=dict(available_physical_bytes=mem[2]),seconds=round(time.monotonic()-start,3))
(BASE/'geometric-budget-check.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(dict(sharp_d_range=[2,7],all_sharp_equalities=True,product_space_control=result['product_space_control'],counterexample_dimension=1,seconds=result['seconds']),ensure_ascii=False))
