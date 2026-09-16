#!/usr/bin/env python3
"""Exact receiving checker for the H013 two-kernel/resultant certificate.

Only integer arithmetic is used. NumPy accelerates bounded modular elimination;
no floating point, optimization, discovery search, old evidence replay, or Lean.
The characteristic-zero kernels are specified by adjugates of a proved nonsingular
integer minor. We do NOT pretend modular kernel vectors themselves are integer
polynomials satisfying the original equations.
"""
from __future__ import annotations
import argparse, json, math, time
from pathlib import Path
import numpy as np

ROOT=Path(__file__).resolve().parents[1]
ROWS=(2,4,5,6,7,8)
WEIGHTS=(18,10,9,7,6,6)

def require(test: bool, msg: str) -> None:
    if not test: raise ValueError(msg)

def ceil_log2(n: int) -> int:
    require(n>0,'positive logarithm argument')
    return (n-1).bit_length()

def basis_and_equations():
    basis=[(a,b) for b in range(25) for a in range(50-2*b)]
    equations=[]
    for r,w in zip(ROWS,WEIGHTS):
        for s in range(r//2+1):
            order=max(0,w-(s<3)-(r-s<3))
            for v in range(order if 2*s!=r else (order+1)//2):
                for u in range(order-v if 2*s!=r else order-2*v):
                    equations.append((r,s,u,v))
    return basis,equations

def taylor_entry(a:int,b:int,r:int,s:int,u:int,v:int)->int:
    if b<v:return 0
    if 2*s!=r:
        if a<u:return 0
        return math.comb(a,u)*r**(a-u)*math.comb(b,v)*(s*(r-s))**(b-v)
    # Expand (r+z)^a (s*s+s*z+w)^b in the opposite summation
    # order to the discovery implementation. No derivative denominators.
    total=0
    for h in range(max(0,u-(b-v)),min(a,u)+1):
        z_power=u-h
        total += math.comb(a,h)*r**(a-h)*math.comb(b-v,z_power)*(s*s)**(b-v-z_power)*s**z_power
    return math.comb(b,v)*total

def determinant_mod(matrix:np.ndarray,p:int)->int:
    a=matrix.copy();nr,nc=a.shape
    require(nr==nc,'square determinant')
    ans=1
    for col in range(nr):
        found=np.flatnonzero(a[col:,col])
        if not len(found):return 0
        pivot_row=col+int(found[0])
        if pivot_row!=col:
            a[[col,pivot_row]]=a[[pivot_row,col]];ans=-ans
        pivot=int(a[col,col]);ans=ans*pivot%p
        inv=pow(pivot,-1,p)
        # Products < p^2 and sums below are reduced at every elimination step.
        for start in range(col+1,nr,96):
            stop=min(nr,start+96)
            factors=a[start:stop,col]*inv%p
            a[start:stop,col+1:] = (a[start:stop,col+1:]-factors[:,None]*a[col,col+1:])%p
            a[start:stop,col]=0
    return int(ans%p)

def build_data():
    basis,equations=basis_and_equations()
    exact=[[taylor_entry(a,b,*equation) for a,b in basis] for equation in equations]
    return basis,equations,exact

def verify(cert:dict, cached=None)->dict:
    started=time.perf_counter()
    required={'schema':'B699-two-kernel-resultant-v1','degree_F':55,'peel':3,
      'basis_weight_bound':49,'source_rows':list(ROWS),'row_weights':list(WEIGHTS),
      'total_weight':56,'matrix_shape':[649,650],'rank_Q_and_Fp':647,
      'padded_sylvester_degree':24,'entry_power_of_two_bound':196,
      'kernel_coefficient_power_of_two_bound':133282,
      'nonzero_value_height_exponent':133908,'resultant_height_exponent':6397824,
      'uniform_H013_height_exponent':6400000,'frozen_entrance_exponent':14000001}
    for key,value in required.items():require(cert.get(key)==value,'fixed definition: '+key)
    p=cert['auxiliary_prime']
    require(isinstance(p,int) and 1000<p<2000000,'auxiliary modulus range')
    require(all(p%d for d in range(2,math.isqrt(p)+1)),'auxiliary modulus is not prime')
    basis,equations,A = build_data() if cached is None else cached
    nr,nc=len(equations),len(basis)
    require((nr,nc)==(649,650),'exact dimension')
    require(max(max(row) for row in A)<2**196,'Taylor coefficient bound')
    rel=cert['exact_left_relations']
    require(len(rel)==2 and all(len(v)==nr for v in rel),'two complete left relations')
    for vector in rel:
        nz=[(i,c) for i,c in enumerate(vector) if c]
        for column in range(nc):
            require(sum(c*A[i][column] for i,c in nz)==0,'integer row relation failed')
    a,b=cert['left_relation_independence_columns']
    require(0<=a<nr and 0<=b<nr and a!=b,'left independence indices')
    require((rel[0][a]*rel[1][b]-rel[0][b]*rel[1][a])%p!=0,'left relations not independent')
    Amod=np.array([[v%p for v in row] for row in A],dtype=np.int64)
    I=cert['independent_rows'];J=cert['independent_columns']
    require(len(I)==len(J)==647,'minor order')
    require(len(set(I))==647 and all(0<=i<nr for i in I),'minor row indices')
    require(len(set(J))==647 and all(0<=j<nc for j in J),'minor column indices')
    det=determinant_mod(Amod[np.ix_(I,J)],p)
    require(det!=0 and det==cert['minor_determinant_mod_p'],'rank minor determinant')
    free=[c for c in range(nc) if c not in J]
    require(free==cert['free_columns'],'complementary columns')
    require([list(basis[c]) for c in free]==cert['free_basis_terms'],'free basis terms')
    chosen=cert['chosen_free_columns']
    require(len(chosen)==2 and len(set(chosen))==2 and all(c in free for c in chosen),'chosen free columns')
    vectors=cert['normalized_modular_kernels']
    require(len(vectors)==2 and all(len(v)==nc for v in vectors),'two complete modular vectors')
    restrictions=[]
    for i,v in enumerate(vectors):
        require(all(isinstance(c,int) and 0<=c<p for c in v),'modular coefficient range')
        require(all(v[c]==int(c==chosen[i]) for c in free),'kernel normalization')
        # nc*p^2 < 2^63; NumPy dot products cannot overflow here.
        require(nc*(p-1)**2<2**63,'integer matrix-product overflow guard')
        require(np.all((Amod@np.array(v,dtype=np.int64))%p==0),'modular right kernel failed')
        restrictions.append([v[basis.index((0,b))] for b in range(25)])
    require(restrictions==cert['diagonal_restrictions_mod_p'],'restriction to formal N=0')
    S=np.zeros((48,48),dtype=np.int64)
    for col in range(24):
        S[col:col+25,col]=restrictions[0]
        S[col:col+25,col+24]=restrictions[1]
    resultant=determinant_mod(S,p)
    require(resultant!=0 and resultant==cert['sylvester_determinant_mod_p'],'padded Sylvester determinant')
    r=647;Bexp=r*(196+ceil_log2(r))
    require(Bexp==133282,'minor/adjugate coefficient bound')
    E1=Bexp+ceil_log2(650)+56*ceil_log2(1680)
    E2=48*(Bexp+ceil_log2(48))
    require(E1==133908 and E2==6397824,'two height branches')
    require(max(E1,E2)<6400000<14000001,'closure height separation')
    # Recheck the arithmetic entering the frozen cubic bridge, not that bridge.
    require(144-84==60 and 64*2<216,'cube preconditions numerical factors')
    require(169<4096 and 84<4096,'finite-input thresholds')
    residues=[n for n in range(21) if (n%3,n%7) in [(1,2),(2,1)]]
    require(residues==[8,16],'two surviving position residues')
    return {'status':'PASS_EXACT_TWO_KERNEL_HEIGHT_AND_CLOSURE',
      'matrix_shape':[nr,nc],'matrix_integer_entries':nr*nc,
      'integer_left_relation_column_checks':2*nc,'modular_right_kernel_row_checks':2*nr,
      'max_actual_entry_bits':max(v.bit_length() for row in A for v in row),
      'rank_Q_and_Fp':647,'rank_minor_mod_p':det,'padded_sylvester_mod_p':resultant,
      'H013_height_exponent':6400000,'frozen_entrance_exponent':14000001,
      'seconds':time.perf_counter()-started,'historical_math_replays':0,
      'lean':False,'external_independent_review':False}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,default=ROOT/'evidence/two_kernel_certificate.json');ap.add_argument('--out',type=Path)
    ar=ap.parse_args();result=verify(json.loads(ar.certificate.read_text()))
    if ar.out:ar.out.parent.mkdir(parents=True,exist_ok=True);ar.out.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
