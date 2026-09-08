"""Minimal new discriminant/source-normalization audit, not a B699 search."""
import math,json,hashlib
from fractions import Fraction
from pathlib import Path
def determinant(matrix):
    A=[r[:] for r in matrix];size=len(A);sign=1;previous=1
    if not size:return 1
    for t in range(size-1):
        if A[t][t]==0:
            found=next((r for r in range(t+1,size) if A[r][t]),None)
            if found is None:return 0
            A[t],A[found]=A[found],A[t];sign=-sign
        pivot=A[t][t]
        for r in range(t+1,size):
            for c in range(t+1,size):
                value=pivot*A[r][c]-A[r][t]*A[t][c]
                assert value%previous==0
                A[r][c]=value//previous
            A[r][t]=0
        previous=pivot
    return sign*A[-1][-1]
def discriminant(coeff):
    degree=len(coeff)-1;f=coeff[::-1]
    g=[r*coeff[r] for r in range(1,degree+1)][::-1]
    size=2*degree-1;matrix=[]
    for shift in range(degree-1):matrix.append([0]*shift+f+[0]*(size-shift-len(f)))
    for shift in range(degree):matrix.append([0]*shift+g+[0]*(size-shift-len(g)))
    R=determinant(matrix)
    assert R%coeff[-1]==0
    return (-1)**(degree*(degree-1)//2)*R//coeff[-1]
def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
cases={(j+k,i,j) for i in range(2,9) for j in (i+1,2*i+1) for k in (j,j+3)}
cases|={(16,3,7),(28,3,14),(57,4,22),(12,2,4),(34,3,11),(28,5,14)}
records=[]
for n,i,j in sorted(cases):
    k=n-j
    assert 1<=i<j<=n//2
    coeff=[math.comb(j,r)*math.comb(k,i-r) for r in range(i+1)]
    disc=discriminant(coeff)
    formula=Fraction(1)
    for v in range(1,i+1):
        formula*=Fraction((j-i+v)**(v-1)*(k-i+v)**(v-1)*(n-i+v)**(i-v),
                          v**(2*i-v-2))
    assert formula.denominator==1 and disc==formula and disc>0
    first,second=math.comb(n,i),math.comb(n,j)
    D=1;selected=[]
    for p in range(i,n+1):
        if not prime(p) or first%p or second%p==0:continue
        z=first;e=0
        while z%p==0:z//=p;e+=1
        D*=p**e;selected.append([p,e])
    assert all(c%D==0 for c in coeff)
    scaled=[c//D for c in coeff]
    assert disc==D**(2*i-2)*discriminant(scaled)
    assert disc%(D**(2*i-2))==0 and disc>=D**(2*i-2)
    # Exact squared upper bound used before logarithms.
    hyper=math.prod(v**v for v in range(1,i+1))
    assert hyper**2<=i**(i*(i+1))
    assert (disc*math.factorial(i)**(2*i-2))**2*4**(i*(i-1))<=hyper**2*n**(3*i*(i-1))
    records.append(dict(n=n,i=i,j=j,k=k,coefficients=coeff,discriminant=disc,
                        avoiding_part=D,selected_prime_powers=selected,gcd=math.gcd(first,second)))
constants={
 "alpha_comparison":37873*37-29147*48,
 "exp37_comparison":11000**4*25**37-68**37,
 "log3600_comparison":3600*4**8-11**8,
 "log10000_comparison":10000*4**9-11**9,
 "exp07_lower_vs2":Fraction(1)+Fraction(7,10)+Fraction(7,10)**2/2+Fraction(7,10)**3/6-2,
 "e_upper_68_25":Fraction(68,25)-Fraction(11743,4320)
}
assert all(v>0 for v in constants.values())
bad=[7,14,7]
assert discriminant(bad)==0 and math.gcd(*bad)==7
out={"status":"PASS","scope":"exact discriminant formula/content/scaling checks on chosen cases and fixed numerical constants",
     "case_count":len(records),"nontrivial_avoiding_parts":sum(r["avoiding_part"]>1 for r in records),
     "boundary_prime_i_cases":sum(any(p==r["i"] for p,e in r["selected_prime_powers"]) for r in records),
     "records":records,"positive_constant_certificates":{k:str(v) for k,v in constants.items()},
     "nonzero_assumption_guard":{"polynomial_coefficients":bad,"content":7,"discriminant":0,
        "meaning":"content-power size bound fails for a repeated-root polynomial; not an original B699 counterexample"},
     "not_a_global_scan":True,"not_a_lean_check":True,
     "script_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
print(json.dumps(out,indent=2))

