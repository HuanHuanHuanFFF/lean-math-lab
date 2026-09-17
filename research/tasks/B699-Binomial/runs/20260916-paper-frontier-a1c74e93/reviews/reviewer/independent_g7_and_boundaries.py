from collections import defaultdict
from math import comb, gcd, isqrt, lcm
from fractions import Fraction
from pathlib import Path
from datetime import datetime, timezone
import hashlib, json, time
RPATH=Path(__file__).resolve().parent
start=time.perf_counter()

def add(*ps):
    out=defaultdict(int)
    for p in ps:
        for e,c in p.items():out[e]+=c
    return {e:c for e,c in out.items() if c}
def scale(p,t):return {e:c*t for e,c in p.items() if c*t}
def mul(p,q):
    out=defaultdict(int)
    for (a,b),c in p.items():
        for (d,e),f in q.items():out[a+d,b+e]+=c*f
    return {e:c for e,c in out.items() if c}
def power(p,t):
    out={(0,0):1}
    for _ in range(t):out=mul(out,p)
    return out
def shift(p,x,y):
    out=defaultdict(int)
    for (i,j),c in p.items():
        for a in range(i+1):
            for b in range(j+1):out[a,b]+=c*comb(i,a)*comb(j,b)*x**(i-a)*y**(j-b)
    return {e:c for e,c in out.items() if c}
ONE={(0,0):1}; J={(1,0):1}; K={(0,1):1}
def construct(j,k):
    n=add(j,k); X=mul(j,k)
    A=add(X,scale(n,-1),ONE);B=add(power(n,2),scale(n,-1),scale(X,-3))
    rr=add(scale(power(X,2),27),scale(mul(X,power(n,2)),-36),scale(mul(X,n),117),scale(X,-81),scale(power(n,4),10),scale(power(n,3),-54),scale(power(n,2),90),scale(n,-58),scale(ONE,12))
    ff=mul(mul(mul(power(X,3),B),power(A,2)),rr)
    dd=mul(mul(power(add(n,scale(ONE,-1)),8),power(add(n,scale(ONE,-3)),4)),power(add(n,scale(ONE,-4)),3))
    return n,rr,ff,dd
n,rr,ff,dd=construct(J,K)
assert max(map(sum,ff))==16 and min(map(sum,ff))==7
zeros=[]
for row,m in ((1,8),(3,4),(4,3)):
    for b in range(row+1):
        pp=shift(ff,b,row-b)
        for a in range(m):
            for c in range(m-a):
                assert pp.get((a,c),0)==0
                zeros.append([row,b,a,c])
assert len(zeros)==142
np,rp,fp,dp=construct(add(J,scale(ONE,6)),add(J,K,scale(ONE,6)))
gap=add(mul(np,dp),scale(fp,-64))
assert all(c>0 for c in rp.values()) and rp[(0,0)]>0
assert all(c>0 for c in fp.values()) and fp[(0,0)]>0
assert all(c>0 for c in gap.values()) and gap[(0,0)]>0
assert 4**3*5**8==25000000 and 3**4*2**3*5**8==253125000
assert 253125000<64*2**22
coeffs=lambda p:[[a,b,c] for (a,b),c in sorted(p.items())]
g7={'time_utc':datetime.now(timezone.utc).isoformat(),'status':'passed','source_degree':16,'origin_order':7,'integer_Taylor_zero_conditions':zeros,'positive_coefficients':{'R':coeffs(rp),'F':coeffs(fp),'nD7_minus_64F':coeffs(gap)},'positive_coefficient_counts':{'R':len(rp),'F':len(fp),'gap':len(gap)},'constant_terms':{'R':rp[(0,0)],'F':fp[(0,0)],'gap':gap[(0,0)]},'costs':[25000000,253125000],'rounding_identity':'253125000 < 64 * 2^22','accepted_necessary_bound':'n^6 < 2^22 * alpha^7'}
(RPATH/'independent_g7.json').write_text(json.dumps(g7,indent=2)+'\n',encoding='utf-8')

# Enumerate all reduced weight triples, independently of the author's degree list.
reduced=[]
for d in range(1,21):
    for w1 in range(d//2+1):
        for w3 in range(d//4+1):
            for w4 in range(d//5+1):
                if w1+w3+w4==d-1:reduced.append([d,w1,w3,w4])
assert [x[0] for x in reduced]==[1,2,4,5,6,8,10,12,16,20]
p=1000003
assert all(p%r for r in range(2,isqrt(p)+1))
def rank_certificate(mat,p):
    a=[r[:] for r in mat]; ids=list(range(len(a))); row=0; pivots=[]; selected=[]; det=1
    width=len(a[0])
    for col in range(width):
        pivot=next((i for i in range(row,len(a)) if a[i][col]%p),None)
        if pivot is None:continue
        a[row],a[pivot]=a[pivot],a[row];ids[row],ids[pivot]=ids[pivot],ids[row]
        value=a[row][col]%p; det=det*value%p; inv=pow(value,p-2,p)
        for i in range(row+1,len(a)):
            if a[i][col]%p:
                factor=a[i][col]*inv%p
                for c in range(col,width):a[i][c]=(a[i][c]-factor*a[row][c])%p
        pivots.append(col);selected.append(ids[row]);row+=1
        if row==width:break
    return {'rank':row,'pivot_columns':pivots,'selected_original_rows':selected,'minor_determinant_mod_p':det}
cases=[]
for d,w1,w3,w4 in reduced:
    if d<8:continue
    columns=[(u,v) for v in range(d//2+1) for u in range(d-2*v+1) if u+2*v>=8]
    constraints=[(r,b,e,f) for r,w in ((1,w1),(3,w3),(4,w4)) for b in range(r+1) for e in range(w) for f in range(w-e)]
    mat=[]
    for r,b,e,f in constraints:
        values=[]
        for u,v in columns:
            value=0
            for a in range(u+1):
                i=a+v;j=u-a+v
                if i>=e and j>=f:value+=comb(u,a)*comb(i,e)*comb(j,f)*b**(i-e)*(r-b)**(j-f)
            values.append(value%p)
        mat.append(values)
    cert=rank_certificate(mat,p)
    assert cert['rank']==len(columns),(d,cert['rank'],len(columns))
    square=[mat[i] for i in cert['selected_original_rows']]
    check=rank_certificate(square,p)
    assert check['rank']==len(columns) and check['minor_determinant_mod_p']==cert['minor_determinant_mod_p']
    cases.append({'degree':d,'weights':[w1,w3,w4],'rows':len(mat),'columns':len(columns),**cert})
boundary={'time_utc':datetime.now(timezone.utc).isoformat(),'status':'passed','field_prime':p,'primality_check':'trial division by every integer 2..floor(sqrt(p))','all_reduced_degree_weight_tuples':reduced,'nontrivial_matrix_count':len(cases),'cases':cases,'scope':'nonzero symmetric rational F, uniform row 1/3/4 multiplicities, degree=sum(weights)+1; excludes origin order >=8 only in this class','proof_dependency':'the row-factor reduction and exact degree/weight enumeration are justified in the paper review'}
(RPATH/'independent_method_boundary.json').write_text(json.dumps(boundary,indent=2)+'\n',encoding='utf-8')

# One small reproducible exact CRT instance of the finite-layer compatibility lemma.
M=72;S=[3,5,7];Mo=9;Q=45*Mo
for r in S:Q*=r
Kpow=3
f=lambda u:1250*u**3+450*u**2+27*u-1
u2=next(u for u in range(1,2**Kpow,2) if f(u)%2**Kpow==0)
odd_class=pow(2,-1,Q);L=2**Kpow*Q
u0=(u2+2**Kpow*((odd_class-u2)*pow(2**Kpow,-1,Q)%Q))%L
order=1;v=2%Q
while v!=1:v=v*2%Q;order+=1
s=lcm(6,order)
x=5*2**s;n=x*x
# Choose j/n inside (3/10,2/5), with seven candidate u values in the fixed CRT class.
low=(9*x*x)//(250*(x+1))+1
first=u0+max(0,(low-u0+L-1)//L)*L
F=lambda h,x,u:4*u*(25*u-3*(x-1))*(25*u-6*(x-1))-(h*(x-1)-9*u)*(x*x-2)
assert F(1,Fraction(5),Fraction(1,2))==0
accepted=None
for index in range(7):
    u=first+index*L;j=25*u*(x+1)//3
    assert 3*n<10*j and 5*j<2*n
    if F(1,x,u)!=0 and F(2,x,u)!=0:accepted=(index,u,j);break
assert accepted is not None
index,u,j=accepted
assert (25*u*(x+1))%3==0 and 4<=j<n//2
assert gcd(n,j)==25 and n//25==2**(2*s)
assert (x+1)%3==0 and (x+1)%9!=0
assert (x+1)//gcd(x+1,j)==3
assert all(j%r==n%r for r in S)
assert F(1,x,u)%M==0
W1=(3*j*(j-1))%(n-1)==0;W2=(6*j*(j-1)*(j-2))%(n-2)==0
assert not(W1 and W2)
assert 25**4<3*n and 128*25**4*(n-1)**3<27*n**4
sample={'time_utc':datetime.now(timezone.utc).isoformat(),'status':'passed','M':M,'S':S,'Q':Q,'K':Kpow,'u_class_mod_L':u0,'L':L,'order_2_mod_Q':order,'s':s,'interval':['3/10','2/5'],'selected_candidate_index':index,'n_bit_length':n.bit_length(),'j_bit_length':j.bit_length(),'gcd_n_j':25,'canonical_b':3,'all_specified_carry_indicators_zero':True,'F1_mod_M':0,'F1_and_F2_nonzero':True,'W1':W1,'W2':W2,'G4_passes':True,'OLD128_passes':True,'scope':'one independent exact regression; the arbitrary finite-layer and interval quantifiers require the paper construction'}
(RPATH/'independent_finite_barrier.json').write_text(json.dumps(sample,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'passed','seconds':time.perf_counter()-start,'g7_zero_conditions':len(zeros),'g7_positive_counts':g7['positive_coefficient_counts'],'ranks':[[c['degree'],c['rows'],c['columns'],c['rank']] for c in cases],'finite_barrier_s':s,'finite_barrier_n_bits':n.bit_length(),'finite_barrier_W1':W1,'finite_barrier_W2':W2}))
