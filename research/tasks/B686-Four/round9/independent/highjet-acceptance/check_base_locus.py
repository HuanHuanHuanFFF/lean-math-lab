"""Independent finite Taylor and resultant audit; no claim of saturated kernel."""
import hashlib
import json
import math
import sys
from fractions import Fraction as Q
from pathlib import Path
import sympy as sp

# Exact Bezout coefficients can exceed Python's display-only 4300 digit cap.
sys.set_int_max_str_digits(0)

HERE = Path(__file__).resolve().parent
SOURCE = HERE.parents[1]/'support'/'smith-highjet'/'highjet-input.json'
X,Y = sp.symbols('X Y')

def add(a,b): return [x+y for x,y in zip(a,b)]
def mul(a,b):
    n=len(a); c=[Q(0)]*n
    for i,x in enumerate(a):
        for j,y in enumerate(b[:n-i]): c[i+j]+=x*y
    return c
def power(a,n):
    out=[Q(1)]+[Q(0)]*(len(a)-1)
    for _ in range(n): out=mul(out,a)
    return out
def shifted_product(k,root,z):
    out=[Q(1)]+[Q(0)]*(len(z)-1)
    for h in range(1,k+1):
        term=z[:]; term[0]+=h+root; out=mul(out,term)
    return out
def eval_poly(c,z):
    out=[Q(0)]*len(z)
    for j,cj in enumerate(c): out=add(out,[cj*v for v in power(z,j)])
    return out
def normalize(row):
    den=math.lcm(*(v.denominator for v in row)); values=[int(v*den) for v in row]
    g=math.gcd(*values)
    if not g: return values
    first=next(v for v in values if v)
    return [v//g*(1 if first>0 else -1) for v in values]
def frac(value): return Q(int(value[0]),int(value[1]))
def serialize(poly):
    p=sp.Poly(poly,X,domain=sp.QQ)
    return [[int(c.p),int(c.q)] for c in reversed(p.all_coeffs())]

data=json.loads(SOURCE.read_text())
source_hash=hashlib.sha256(SOURCE.read_bytes()).hexdigest()
k,mu,D=data['k'],data['mu'],data['degree']
assert (k,mu,D)==(5,6,8)
descriptors=[tuple(v) for v in data['basis_order_qab']]
assert len(descriptors)==35 and len(set(descriptors))==35
assert all(0<=a<k and 0<=b<k and k*q+a+b<=D for q,a,b in descriptors)
xser=[Q(0),Q(1)]+[Q(0)]*(mu-2)
rows=[]; branches=[]
for rootx,rooty in data['support_XY']:
    cx=shifted_product(k,rootx,xser)
    cy=shifted_product(k,rooty,xser)
    ys=[Q(0)]*mu
    for h in range(1,mu):
        known=eval_poly(cy,ys)[h]
        ys[h]=(4*cx[h]-known)/cy[1]
    assert eval_poly(cy,ys)==[4*v for v in cx]
    branches.append([[v.numerator,v.denominator] for v in ys])
    ux=[v/Q(math.factorial(k)) for v in cx]
    columns=[]
    for q,a,b in descriptors:
        bx=[v/Q(math.factorial(a)) for v in shifted_product(a,rootx,xser)]
        by=[v/Q(math.factorial(b)) for v in shifted_product(b,rooty,ys)]
        columns.append(mul(power(ux,q),mul(bx,by)))
    rows.extend([[column[h] for column in columns] for h in range(mu)])
assert rows==[[frac(v) for v in row] for row in data['rational_rows']]
assert [normalize(r) for r in rows]==[normalize([Q(v) for v in r]) for r in data['primitive_integer_rows']]
A=sp.Matrix([normalize(row) for row in rows])
print('Independent Taylor rows rebuilt and matched; starting fraction-free RREF',flush=True)
rref_dm, denominator, pivots=A.to_DM().rref_den()
rref=rref_dm.to_Matrix(); denominator=int(denominator)
rank=len(pivots); vectors=[]
for free in [j for j in range(A.cols) if j not in pivots]:
    entries=[0]*A.cols; entries[free]=denominator
    for row,pivot in enumerate(pivots): entries[pivot]=-int(rref[row,free])
    entries=normalize([Q(v) for v in entries]); vectors.append(sp.Matrix(entries))
assert rank==24 and len(vectors)==11
print('Independent Taylor matrix: rank 24, nullity 11',flush=True)

P=lambda Z:sp.prod(Z+h for h in range(1,k+1))
U=P(X)/math.factorial(k)
B=lambda Z,a:sp.prod(Z+h for h in range(1,a+1))/math.factorial(a)
basis=[sp.Poly(sp.expand(U**q*B(X,a)*B(Y,b)),X,Y,domain=sp.QQ) for q,a,b in descriptors]
polynomials=[]
for vector in vectors:
    H=sp.Poly(sum(c*p.as_expr() for c,p in zip(vector,basis)),X,Y,domain=sp.QQ)
    assert not H.is_zero and H.total_degree()<=D and H.degree(Y)<k
    assert A*vector==sp.zeros(24,1)
    polynomials.append(H)
assert any(H.eval({X:10,Y:21})!=0 for H in polynomials)
F=sp.expand(P(Y)-4*P(X))
expected=sp.Poly(sp.prod((X-rootx)**mu for rootx,_ in data['support_XY']),X,domain=sp.QQ).monic()
G=None; resultants=[]; chain=[]
for index,H in enumerate(polynomials):
    _, cleared=H.clear_denoms(convert=True)
    cleared=cleared.primitive()[1]
    R=sp.Poly(sp.resultant(F,cleared.as_expr(),Y),X,domain=sp.QQ)
    assert not R.is_zero
    R=R.monic(); resultants.append({'basis_index':index,'degree':R.degree(),'coefficients':serialize(R)})
    if G is None: G=R
    else:
        s,t,g=sp.gcdex(G,R)
        assert s*G+t*R==g
        chain.append({'added_basis_index':index,'s':serialize(s),'t':serialize(t),'gcd':serialize(g)})
        G=g.monic()
    print(f'Resultant {index}: degree {R.degree()}, running gcd {G.degree()}',flush=True)
    if G==expected: break
assert G==expected
assert source_hash==hashlib.sha256(SOURCE.read_bytes()).hexdigest()
report={'status':'PASS','producer_input_sha256':source_hash,'matrix_shape':[24,35],
        'rank':rank,'rational_kernel_dimension':len(vectors),
        'saturated_kernel_claim':False,'independent_jets_match':True,
        'branches':branches,'basis_descriptors':descriptors,
        'rational_kernel_vectors':[[[int(c.p),int(c.q)] for c in v] for v in vectors],
        'resultants':resultants,'bezout_chain':chain,'final_gcd':serialize(G),
        'final_gcd_factored':str(sp.factor(G.as_expr())),
        'no_common_zero_for_X_ge_zero':True,
        'scope':'Only this fixed k=5, mu=6, degree=8, four-point support; no uniform height or original-equation conclusion.'}
(HERE/'base-locus-audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({key:report[key] for key in ('status','matrix_shape','rank','rational_kernel_dimension','final_gcd_factored','no_common_zero_for_X_ge_zero','scope')},indent=2))
