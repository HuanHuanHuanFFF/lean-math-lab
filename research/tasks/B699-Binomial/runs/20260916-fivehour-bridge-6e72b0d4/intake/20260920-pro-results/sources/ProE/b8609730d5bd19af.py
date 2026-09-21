"""Independent endpoint verifier.
Does NOT import kernel_crt. Reconstructs binary quartics by the binomial
formula and finds every integer root using exact Sturm intervals.
"""
import json
from fractions import Fraction
from math import gcd, comb, isqrt, lcm
from pathlib import Path


def required_keys():
    out=[]
    for D in range(1,10):
        if any(D%(p*p)==0 for p in range(2,isqrt(D)+1)):continue
        for T in (-3,-2,-1,1,2,3):
            if D*T*T>=10:continue
            aa=1-D*T*T;bb=2*D*T;G=gcd(aa,bb)
            K=D*D*T**4-10*D*T*T+5
            C=D*D*T*K*K//G**4
            ms=sorted([u for u in range(-abs(C),abs(C)+1) if u and C%u==0])
            for den in ((1,2) if D%4==3 else (1,)):
                for m in ms:out.append((D,T,den,m,G,aa//G,bb//G,C))
    return out


def expand_linear_product(c1,z1,n,c2,z2,m):
    # Descending coefficients, independent of primary polynomial arithmetic.
    ans=[0]*(n+m+1)
    for i in range(n+1):
        for j in range(m+1):
            ans[n+m-i-j]+=comb(n,i)*comb(m,j)*c1**(n-i)*z1**i*c2**(m-j)*z2**j
    return ans


def rebuild(j):
    D=j['d'];m=j['m'];den=j['den'];G=j['g']
    cx,sx=j['e']*m,-j['b'];cy,sy=-j['c']*m,j['a']
    p=expand_linear_product(cx,sx,4,cy,sy,0)
    mixed=expand_linear_product(cx,sx,2,cy,sy,2)
    yy=expand_linear_product(cx,sx,0,cy,sy,4)
    p=[a-10*D*b+5*D*D*c for a,b,c in zip(p,mixed,yy)]
    p[-1]-=den**3*G*m
    return p


def trim(p):
    p=list(p)
    while len(p)>1 and p[0]==0:p.pop(0)
    return p

def primitive(p):
    p=trim(p)
    den=1
    for c in p:den=lcm(den,Fraction(c).denominator)
    integers=[int(Fraction(c)*den) for c in p]
    g=0
    for c in integers:g=gcd(g,c)
    return [c//g for c in integers] if g else [0]

def divide(a,b):
    a=list(map(Fraction,trim(a)));b=list(map(Fraction,trim(b)))
    q=[Fraction(0)]*max(1,len(a)-len(b)+1)
    original=len(a)
    while a!=[0] and len(a)>=len(b):
        ratio=a[0]/b[0];pos=original-len(a);q[pos]+=ratio
        for i in range(len(b)):a[i]-=ratio*b[i]
        a=trim(a)
    return trim(q),a

def derivative(p):return [c*(len(p)-1-i) for i,c in enumerate(p[:-1])]

def sturm(p):
    p=primitive(p);a,b=p,primitive(derivative(p))
    while b!=[0]:
        _,r=divide(a,b);a,b=b,primitive(r)
    # Remove repeated factors, without relying on a nonzero discriminant.
    q,r=divide(p,a)
    if r!=[0]:raise ValueError('gcd division failed')
    f=primitive(q)
    if len(f)<=1:return [f]
    ss=[f,primitive(derivative(f))]
    while True:
        _,r=divide(ss[-2],ss[-1])
        r=primitive([-c for c in r])
        if r==[0]:break
        ss.append(r)
    return ss


def eval_num(p,num,den=1):
    v=p[0];scale=1
    for c in p[1:]:
        scale*=den;v=v*num+c*scale
    return v

def changes(signs):
    s=[(x>0)-(x<0) for x in signs if x]
    return sum(a!=b for a,b in zip(s,s[1:]))

def variations(ss,num):return changes([eval_num(p,num,2) for p in ss])
def vinfty(ss,sgn):return changes([p[0]*(sgn**(len(p)-1)) for p in ss])

def integer_roots(p):
    ss=sturm(p)
    B=1+max((abs(c)+abs(p[0])-1)//abs(p[0]) for c in p[1:])
    lo,hi=-B,B
    vl,vh=variations(ss,2*lo-1),variations(ss,2*hi+1)
    total=vl-vh
    if total!=vinfty(ss,-1)-vinfty(ss,1):raise ValueError('global Cauchy/Sturm mismatch')
    todo=[(lo,hi,vl,vh)];cells=[];roots=[]
    while todo:
        L,R,vL,vR=todo.pop()
        number=vL-vR
        if number<0:raise ValueError('negative root count')
        if number==0:continue
        if L==R:
            cells.append([L,number])
            if eval_num(p,L)==0:roots.append(L)
            continue
        mid=(L+R)//2;vm=variations(ss,2*mid+1)
        todo.append((mid+1,R,vm,vR));todo.append((L,mid,vL,vm))
    if sum(r[1] for r in cells)!=total:raise ValueError('root cover mismatch')
    return sorted(roots),sorted(cells),B,total


def validate_structure(cert):
    if set(cert)!={'schema','jobs','raw_roots'} or cert['schema']!='B699_MAXIMAL_ORDER5_V1':raise ValueError('schema')
    keys=required_keys()
    if len(keys)!=len(cert['jobs']):raise ValueError('incomplete jobs')
    polys=[]
    for key,row in zip(keys,cert['jobs']):
        if set(row)!={'parameters','crt'}:raise ValueError('row keys')
        j=row['parameters']
        if set(j)!={'d','t','den','m','g','a','b','e','c','C','coeff'}:raise ValueError('parameter keys')
        if tuple(j[x] for x in ('d','t','den','m','g','a','b','C'))!=key:raise ValueError('wrong/excluded regime')
        if j['a']*j['e']-j['b']*j['c']!=1:raise ValueError('non-unimodular recovery')
        p=rebuild(j)
        if list(reversed(p))!=j['coeff']:raise ValueError('quartic coefficient mismatch')
        if len(p)!=5 or not p[0]:raise ValueError('not quartic')
        # Independently validate the bound advertised by the other algorithm.
        bound=row['crt']['bound']
        if not isinstance(bound,int) or bound<=0 or bound%2:raise ValueError('root bound format')
        for i in range(1,5):
            if abs(p[i])>abs(p[0])*(bound//2)**i:raise ValueError('false root bound')
        polys.append(p)
    return polys


def verify(cert):
    polys=validate_structure(cert);raw=[];witnesses=[]
    for row,p in zip(cert['jobs'],polys):
        j=row['parameters'];roots,cells,bound,total=integer_roots(p)
        if roots!=row['crt']['integer_roots']:raise ValueError('independent integer root mismatch')
        for z in roots:
            X=j['e']*j['m']-j['b']*z;Y=-j['c']*j['m']+j['a']*z
            raw.append(dict(d=j['d'],t=j['t'],den=j['den'],m=j['m'],z=z,X=X,Y=Y))
        witnesses.append(dict(d=j['d'],t=j['t'],den=j['den'],m=j['m'],cells=cells,integer_roots=roots,real_root_count=total))
    if raw!=cert['raw_roots']:raise ValueError('raw recovery mismatch')
    return dict(job_count=len(polys),raw_roots=raw,sturm_witnesses=witnesses)

if __name__=='__main__':
    import time,sys
    root=Path(__file__).resolve().parents[1];t0=time.monotonic()
    cert=json.loads((root/'certificates/endpoint.json').read_text())
    result=verify(cert)
    if '--write-output' in sys.argv:
        (root/'outputs/sturm_check.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(dict(status='PASS_INDEPENDENT_STURM_ENDPOINT',job_count=result['job_count'],raw_roots=result['raw_roots'],elapsed_seconds=round(time.monotonic()-t0,4)),indent=2))
