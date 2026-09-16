"""Standalone second verifier. Does not import the generator or its arithmetic helpers."""
import argparse,copy,json,math
from fractions import Fraction
from pathlib import Path

def prime(p):
    return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def vfact(n,p):
    ans=0
    while n:n//=p;ans+=n
    return ans

def valuation(n,j,p):return vfact(n,p)-vfact(j,p)-vfact(n-j,p)

def check_witness(n,j,p,a,b,pcache):
    if p not in pcache:pcache[p]=prime(p)
    if not (4<=j<=n//2 and p>=3 and pcache[p]):raise ValueError('invalid legal/prime witness')
    if a<=0 or b<=0 or valuation(n,3,p)!=a or valuation(n,j,p)!=b:raise ValueError('wrong complete valuations')

def expdom(x,n,p):
    pp=p
    while pp<=max(x,n)*p:
        # Independently get the single digit from adjacent floor quotients.
        if (x//(pp//p))%p>(n//(pp//p))%p:return False
        pp*=p
    return True

def expected_gap_keys():
    out=[]
    for B in range(1,5):
      for A in range(1,9):
       for T in range(1,5):
        z=math.isqrt(2*A*B**3)
        if z*z<2*A*B**3:z+=1
        x0=max(z,-(-4*A*A*B//T))
        for X in (x0,x0+1):
         n=T*(A*X+B)
         for w in range(B+1):
          for u in range(A+1):
           j=T*(u*X+w)
           if 4<=j<=n//2:out.append((T,A,B,X,u,w))
    return sorted(out)

def check_gap(data):
    pcache={};rows=data['records'];keys=[]
    for row in rows:
        if len(row)!=9:raise ValueError('record length')
        T,A,B,X,u,w,p,e1,e2=row
        if min(T,A,B,X)<1 or X*X<2*A*B**3 or T*X<4*A*A*B:raise ValueError('gap assumptions')
        n=T*(A*X+B);j=T*(u*X+w);g=math.gcd(n,j)
        check_witness(n,j,p,e1,e2,pcache)
        # Recover homogeneous Phi from the original coefficient transform.
        E=0
        for r in range(4):
            term=math.comb(j,r)*math.comb(n-j,3-r)
            E+=term*u**(3-r)*(u-A)**r
        value=Fraction(6*E,g*(n-1)*(n-2))
        if not abs(value)<Fraction(15,16):raise ValueError('norm bound')
        keys.append((T,A,B,X,u,w))
    if sorted(keys)!=expected_gap_keys():raise ValueError('incomplete or duplicated coverage')
    return len(rows),len(pcache)

def check_rows(data):
    inputs=[(5,1,2,24,24),(7,1,2,48,48),(3,2,3,26,26),(5,1,3,124,124),(5,1,3,73,91)]
    if [tuple(r['input']) for r in data]!=inputs:raise ValueError('wrong row input list')
    count=0;pcache={}
    for row in data:
        P,f,r,A,B=row['input'];T=P**f;X=P**(3*r);n=T*(A*X+B)
        if not prime(P) or not (P>=5 or f>=2) or B%P==0:raise ValueError('inactive source')
        expected=[]
        for w in range(B+1):
            for u in range(A+1):
                j=T*(u*X+w)
                if 4<=j<=n//2 and expdom(u,A,P) and expdom(w,B,P):expected.append(j)
        seen=[]
        for j,p,a,b in row['witnesses']:
            check_witness(n,j,p,a,b,pcache)
            if valuation(n,j,P)!=0:raise ValueError('source-carry partition')
            seen.append(j);count+=1
        if sorted(seen)!=sorted(expected):raise ValueError('incomplete digit partition')
    return count,len(pcache)

def run(out):
    g=json.loads((out/'gap_witnesses.json').read_text());r=json.loads((out/'row_witnesses.json').read_text())
    ng,pg=check_gap(g);nr,pr=check_rows(r)
    rejects=[]
    def bad(label,fn):
        try:fn()
        except (ValueError,AssertionError):rejects.append(label);return
        raise AssertionError('accepted damaged record '+label)
    for label,mutate in [
       ('missing_assignment',lambda z:z['records'].pop()),
       ('duplicate_assignment',lambda z:z['records'].append(z['records'][0].copy())),
       ('composite_prime',lambda z:z['records'][0].__setitem__(6,9)),
       ('prime_two_wrong_threshold',lambda z:z['records'][0].__setitem__(6,2)),
       ('wrong_exponent',lambda z:z['records'][0].__setitem__(8,999)),
       ('broken_gap',lambda z:z['records'][0].__setitem__(3,1)),
       ('illegal_j',lambda z:(z['records'][0].__setitem__(4,0),z['records'][0].__setitem__(5,0)))]:
        d=copy.deepcopy(g);mutate(d);bad(label,lambda d=d:check_gap(d))
    d=copy.deepcopy(r);d[0]['witnesses'].pop();bad('missing_row_digit',lambda:check_rows(d))
    d=copy.deepcopy(r);d.pop();bad('missing_source_row',lambda:check_rows(d))
    # Truncated symbolic source would be noticed by independent coefficient identity output/manifest.
    result={'gap_assignments_rebuilt':ng,'row_assignments_rebuilt':nr,
        'distinct_primes_checked_gap':pg,'distinct_primes_checked_rows':pr,
        'damaged_regression_rejections':rejects,
        'level':'Author second implementation, not independent human/Lean acceptance. Checks finite regressions and their completeness only.'}
    (out/'independent.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);run(p.parse_args().out)
