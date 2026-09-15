"""Exact finite consumers for bounded b=3 exponents; no floating root decisions.

Small pure-two square rows are certified in the original statement.  Large
bounded exponents may use the strictly concave cubic in the legal a interval.
"""
from functools import lru_cache
from math import isqrt
from pathlib import Path
import hashlib,json

ROOT=Path(__file__).resolve().parent


def integer_roots(x,epsilon,h):
    d=x-epsilon
    assert d>=1
    last=3*d-1
    c=72*d*d+9*(x*x-2)
    const=h*d*(x*x-2)
    f=lambda a:((4*a-36*d)*a+c)*a-const
    derivative=lambda a:(12*a-72*d)*a+c
    delta=lambda a:12*a*a+(12-72*d)*a+(4-36*d+c)
    discriminant=(12-72*d)**2-48*(4-36*d+c)
    assert discriminant>=0
    peak=max(1,min(last,(72*d-12-isqrt(discriminant))//24))
    while peak<last and delta(peak)>0:peak+=1
    while peak>1 and delta(peak-1)<=0:peak-=1
    assert (peak==last or delta(peak)<=0) and (peak==1 or delta(peak-1)>0)
    top=f(peak)
    if top<0:return [],0
    if top==0:
        roots=[peak]
        if peak<last and f(peak+1)==0:roots.append(peak+1)
        return roots,0
    steps=0
    def increasing_root(g,dg,lo,hi):
        nonlocal steps
        gl,gh=g(lo),g(hi)
        assert gl<=gh
        if gl>0 or gh<0:return None
        if gl==0:return lo
        if gh==0:return hi
        while hi-lo>1:
            steps+=1
            assert steps<10000,'No completeness receipt: finite root iteration cap'
            slope=dg(lo)
            step=max(1,(-gl)//slope) if slope>0 else (hi-lo)//2
            mid=min(hi-1,lo+step)
            gm=g(mid)
            if gm==0:return mid
            if gm<0:lo,gl=mid,gm
            else:hi,gh=mid,gm
        return None
    roots=[]
    r=increasing_root(f,derivative,1,peak)
    if r is not None:roots.append(r)
    q=lambda b:f(3*d-b)
    dq=lambda b:-derivative(3*d-b)
    r=increasing_root(q,dq,1,3*d-peak)
    if r is not None:roots.append(3*d-r)
    assert all(f(a)==0 and 1<=a<3*d for a in roots)
    return sorted(set(roots)),steps


def factors(n):
    result=[]
    p=2
    while p*p<=n:
        if n%p==0:
            result.append(p)
            while n%p==0:n//=p
        p+=1
    if n>1:result.append(n)
    return result


@lru_cache(maxsize=None)
def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))


def binval(n,j,p):
    q=p;total=0
    while q<=n:
        total+=n//q-j//q-(n-j)//q
        q*=p
    return total


def small_square_row(s):
    n=2**(2*s)
    if n//2<4:return {'s':s,'n':n,'pairs':0,'intervals':[]}
    ps=sorted({p for r in (1,2) for p in factors(n-r) if p>=3 and binval(n,3,p)>0})
    assert all(prime(p) for p in ps)
    powers=[]
    for p in ps:
        q=p;e=1
        while q<=n:
            powers.append((p,e,q))
            q*=p;e+=1
    first=4;intervals=[]
    while first<=n//2:
        choices=[(min(n//2,(first//q+1)*q-1),p,e,q) for p,e,q in powers if first%q>n%q]
        assert choices,(s,first)
        last,p,e,q=max(choices)
        assert binval(n,3,p)>0 and prime(p)
        assert first//q==last//q and first%q>n%q
        intervals.append({'first':first,'last':last,'p':p,'exponent':e,'q':q})
        first=last+1
    return {'s':s,'n':n,'pairs':n//2-3,'intervals':intervals}


def self_check():
    cases=0;largest_steps=0
    for x in (2,4,8,16,32):
        for epsilon in (-1,1):
            d=x-epsilon
            for h in range(1,63):
                if h%3==0:continue
                f=lambda a:4*a*(a-3*d)*(a-6*d)-(h*d-9*a)*(x*x-2)
                expected=[a for a in range(1,3*d) if f(a)==0]
                got,steps=integer_roots(x,epsilon,h)
                assert got==expected,(x,epsilon,h,got,expected)
                cases+=1;largest_steps=max(largest_steps,steps)
    rows=[small_square_row(s) for s in range(1,10)]
    assert sum(r['pairs'] for r in rows)==174736
    output={'result':'PASS','scope':'All original i3 rows n=2^(2s), 1<=s<=9; separate bounded solver validation is not an infinite theorem',
            'small_rows':rows,'original_pairs':174736,'independent_small_cubic_comparisons':cases,
            'maximum_small_newton_steps':largest_steps,
            'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (ROOT/'b3_small_bottom_certificate.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'result':'PASS','original_rows':len(rows),'pairs':174736,
                      'cubic_checks':cases,'maximum_steps':largest_steps}))


if __name__=='__main__':self_check()
