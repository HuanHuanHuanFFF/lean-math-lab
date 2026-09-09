"""Small, exact structure probes; no old finite collision-range scan."""
from math import gcd, lcm, prod
from pathlib import Path
import json

OUT=Path(__file__).resolve().parent

def fac(x):
    out={}; p=2
    while p*p<=x:
        while x%p==0:
            out[p]=out.get(p,0)+1; x//=p
        p=3 if p==2 else p+2
    if x>1: out[x]=out.get(x,0)+1
    return out

def maxpp(x): return max((p**a for p,a in fac(x).items()),default=1)
def G(n,k): return prod(range(n+1,n+k+1))//lcm(*range(n+1,n+k+1))
def vp(x,p):
    e=0
    while x%p==0: x//=p;e+=1
    return e

# A: q>k alone does NOT make arbitrary matched prime powers rigid.
k=10;q=101;r=103
n=next(x for x in range(100000,120807) if (x+1)%q==0 and (x+2)%r==0)
m=next(x for x in range(n+81,n+81+10403) if (x+1)%q==0 and (x+3)%r==0)
a,c,b,e=1,2,1,3
D=(k-1)*(n+m+k+1)
det=(n+a)*(m+e)-(n+c)*(m+b)
assert det% (q*r)==0 and det!=0 and abs(det)<=D
assert n>369*k and m-n>8*k and m>=89693
A={'n':n,'m':m,'k':k,'q':q,'r':r,'offsets':[a,c,b,e],
   'q_times_r':q*r,'determinant':det,'D':D,
   'lcm_equal': lcm(*range(n+1,n+k+1))==lcm(*range(m+1,m+k+1)),
   'scope':'Partial matches, NOT a counterexample to B677 or to a statement assuming full LCM equality.'}

# B: equal maximal valuation for the only correction prime at k=3
# does not force equal correction factors.
n,m,k=100002,100105,3
B={'n':n,'m':m,'k':k,'max_v2_n':max(vp(x,2) for x in range(n+1,n+k+1)),
   'max_v2_m':max(vp(x,2) for x in range(m+1,m+k+1)),
   'G_n':G(n,k),'G_m':G(m,k),
   'LCM_n':lcm(*range(n+1,n+k+1)), 'LCM_m':lcm(*range(m+1,m+k+1))}
assert B['max_v2_n']==B['max_v2_m']==2 and B['G_m']==2*B['G_n']
assert B['LCM_n']!=B['LCM_m'] and n>369*k and m-n>8*k

# First discrimination of the gcd/span criterion, NOT equality scanning.
rows=[]
for n,k in [(100000,100),(100002,3),(1000000,32),(100000000,64)]:
    F=5*(k-1)*(n+k)
    factors=[fac(x) for x in range(n+1,n+k+1)]
    qs=[max((p**e for p,e in f.items()),default=1) for f in factors]
    S=[i for i,q in enumerate(qs,1) if q*q>=F]
    g=0
    for i in S:g=gcd(g,n+i)
    span=S[-1]-S[0] if S else 0
    newcert=len(S)>=2 and span*(g+1)>g*(k-1)
    row={'n':n,'k':k,'F':F,'maximal_prime_powers':qs,'marked':S,'g':g,'span':span,
         'gcd_span_certificate':newcert,'majority_certificate':len(S)>(k+1)//2,
         'endpoint_certificate':qs[0]*qs[-1]>=F}
    if newcert:
        m=n+9*k+1
        L0=lcm(*range(n+1,n+k+1)); L1=lcm(*range(m+1,m+k+1))
        assert L0!=L1
        row['single_sanity_m']=m
        row['single_sanity_LCM_unequal']=True
    rows.append(row)

result={'matching_probe':A,'periodic_probe':B,'criterion_probes':rows,
        'coverage':'4 chosen first intervals; one later sanity check only when certified. All n>=100000, no old m<89693 scan.'}
(OUT/'probes.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'matching_probe':A,'periodic_probe':B,
                 'criterion_summary':[{k:r[k] for k in ('n','k','g','span','gcd_span_certificate','majority_certificate','endpoint_certificate')}|{'marked_count':len(r['marked'])} for r in rows]},ensure_ascii=False,indent=2))
