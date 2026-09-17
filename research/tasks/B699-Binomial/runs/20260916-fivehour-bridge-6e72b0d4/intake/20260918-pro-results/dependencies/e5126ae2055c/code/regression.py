#!/usr/bin/env python3
"""Bounded implementation tests, never a substitute for the infinite proof."""
import argparse,json,time
from math import comb,gcd,prod,isqrt
from pathlib import Path
from consumer import pair_certificate,small_part,bridge_allowed,require,valuation_binomial
from verify import algebra
ROOT=Path(__file__).resolve().parents[1]
start=time.monotonic();counts={str(i):{'legal_inputs':0,'triggered':0,'cofactor_prime_checks':0} for i in (5,6,7,8)}
zero_counts={'half':0,'third_minus':0,'third_plus':0}; affines=0;out_of_h02=[]

def factors(x):
    ps=[];p=2
    while p*p<=x:
        if x%p==0:
            ps.append(p)
            while x%p==0:x//=p
        p+=1
    if x>1:ps.append(x)
    return ps

for n in range(12,513):
    sources={i:comb(n,i) for i in (5,6,7,8) if n>=2*(i+1)}
    for i in sources:
        if bridge_allowed(n,i):
            require(all(small_part(n-r,i)==small_part(n-r,5) for r in range(5)),'native bridge small parts')
            if i>=6:require(comb(n,5)%5!=0,'5-filter source valuation')
            if i>=7:require(comb(n,5)%7!=0,'7-filter source valuation')
    for j in range(6,n//2+1):
        target_value=None
        for i,src in sources.items():
            if j<=i:continue
            counts[str(i)]['legal_inputs']+=1
            c=pair_certificate(n,j,i)
            if c is None:continue
            counts[str(i)]['triggered']+=1
            if target_value is None:target_value=comb(n,j)
            residual=c['source_obstruction']['witness_cofactor']
            for p in factors(residual):
                require(p>=i and src%p==0 and target_value%p==0,'same prime, both original binomials')
                counts[str(i)]['cofactor_prime_checks']+=1
            if i==5 and n%72 not in (18,56) and len(out_of_h02)<5:
                out_of_h02.append({'n':n,'j':j,'cofactor':residual})
        for key,condition in [('half',2*j==n-1),('third_minus',3*j==n-1),('third_plus',3*j==n+2)]:
            if condition:
                require(pair_certificate(n,j,5) is not None,'all zero-line inputs covered')
                zero_counts[key]+=1
        s=small_part(n-1,5);q1=(n-1)//s
        if j*(j-1)%q1==0:
            for r in (3,4):
                for b in range(r+1):
                    D=gcd(n-r,j-b)
                    if D<=r:continue
                    A=(n-r)//D;a=(j-b)//D
                    require(1<=a and 2*a<=A and gcd(A,a)==1,'legal primitive affine range')
                    h=(A*b-(r-1)*a)*(A*(b-1)-(r-1)*a)
                    require(h%q1==0,'exact affine source divisibility')
                    if h:
                        require(abs(h)<r*(r-1)*A*A,'strict affine quadratic envelope')
                        require(gcd(abs(h//q1),A)==gcd((r-1)**2,A),'exact affine quotient gcd')
                        affines+=1
                    else:
                        require(2*j==n-1 or 3*j==n-1 or 3*j==n+2,'only listed legal zero lines')

q3=125//small_part(125,5);loss=q3//gcd(q3,prod(25-b for b in range(4)))
require(q3==125 and loss==5 and valuation_binomial(128,5,5)==2 and valuation_binomial(128,25,5)==1,'complete endpoint 5^3, not 5^2')
require(small_part(49,7)==1 and small_part(49,8)==49,'7 threshold is native to target')
# Concrete whole row, outside H02, with no unit in its five native windows.
n=302;p=149
require(all(p%d for d in range(2,isqrt(p)+1)),'example prime')
qs=[(n-r)//small_part(n-r,5) for r in range(5)]
require(all(q>1 for q in qs) and n%72 not in (18,56),'non-unit outside-H02 row')
require((n-1)*p*p>=12*small_part(n-1,5)*(n-4)**2,'outside-H02 exact row condition')
require(all(gcd(comb(n,5),comb(n,j))>=5 for j in range(6,n//2+1)),'bounded original-row check')
# The gcd>=5 check above alone is not used as an admissible-prime proof;
# instead certify a prime >=5 in every actual binomial gcd.
for j in range(6,n//2+1):
    require(any(q>=5 for q in factors(gcd(comb(n,5),comb(n,j)))),'qualified prime in every example target')
result={'status':'PASS_BOUNDED_REGRESSIONS','range':'12<=n<=512; target in {5,6,7,8}',
        'not_an_infinite_proof':True,'counts':counts,'zero_lines_checked':zero_counts,
        'partial_first_row_affine_checks':affines,'complete_5_power_regression':{'n':128,'j':25,'q3':125,'residual':5},
        'outside_H02_row':{'n':302,'Q':149,'native_q0_to_q4':qs,'all_legal_j_checked':146},
        'elapsed_seconds':round(time.monotonic()-start,3)}
parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path);args=parser.parse_args()
if args.output: args.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print(json.dumps(result,ensure_ascii=False,indent=2))
