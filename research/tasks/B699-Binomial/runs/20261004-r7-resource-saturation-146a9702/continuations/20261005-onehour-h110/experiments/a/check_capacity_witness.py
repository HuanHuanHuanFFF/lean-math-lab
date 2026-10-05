from pathlib import Path
import json,warnings,hashlib,time
import sympy as sp
from sympy.utilities.exceptions import SymPyDeprecationWarning
warnings.simplefilter('ignore',SymPyDeprecationWarning)
BASE=Path(__file__).parent;P=11;Z=sp.symbols('Z');start=time.monotonic()
def trim(a):
    while a and a[-1]==0:a.pop()
    return a

def rem(a,g):
    a=a[:];iv=pow(g[-1],-1,P)
    while len(a)>=len(g):
        z=a[-1]*iv%P;shift=len(a)-len(g)
        for i,v in enumerate(g):a[i+shift]=(a[i+shift]-z*v)%P
        trim(a)
    return a

def gcd(a,b):
    while b:a,b=b,rem(a,b)
    return a

def mulmod(a,b,g):
    if not a or not b:return []
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%P
    return rem(c,g)

def power(a,n,g):
    v=[1]
    while n:
        if n&1:v=mulmod(v,a,g)
        n//=2
        if n:a=mulmod(a,a,g)
    return v

def primes(n):
    out=[];d=2
    while d*d<=n:
        if n%d==0:
            out.append(d)
            while n%d==0:n//=d
        d+=1
    if n>1:out.append(n)
    return out

def rabin(g):
    n=len(g)-1;targets={n//l for l in primes(n)};x=rem([0,1],g);cur=x[:];checks=[]
    for k in range(1,n+1):
        cur=power(cur,P,g)
        if k in targets:
            diff=[0]*max(len(cur),len(x))
            for i in range(len(diff)):diff[i]=((cur[i] if i<len(cur) else 0)-(x[i] if i<len(x) else 0))%P
            gg=gcd(g,trim(diff));assert len(gg)==1;checks.append(k)
    assert cur==x
    return dict(degree=n,frobenius_final=True,gcd_exponents=checks)

d=json.loads((BASE/'capacity-witness-direct-jets.json').read_text(encoding='utf-8-sig'));assert d['all_source_jets_zero'] and d['conditions_checked']==23476
probe=json.loads((BASE/'initial-capacity-probe.json').read_text());sample=next(s for a in probe['results'] if a['h']==152 for s in a['samples'] if s['label']=='random1');rows=[]
for src,old in zip(d['sources'],sample['points']):
    a=trim(src['dehomogenized_coefficients'][:]);assert a==old['dehomogenized_coefficients'];f=sp.Poly.from_dict({(j,):c for j,c in enumerate(a) if c},Z,modulus=P);unit,factors=sp.factor_list(f);prod=sp.Poly(unit,Z,modulus=P);rec=[];omega=0
    for g,m in factors:
        gg=[int(c)%P for c in reversed(g.all_coeffs())];rr=rabin(gg);prod*=g**m;omega+=int(m);rec.append(dict(coefficients=gg,multiplicity=int(m),rabin=rr))
    assert prod==f;upower=src['initial_order']-src['weight']*int(f.degree());cap=upower+omega;assert cap==old['omega_after_strip']
    rows.append(dict(point=src['point'],r=src['r'],s=src['s'],weight=src['weight'],initial_order=src['initial_order'],u_factor_multiplicity=upower,omega=cap,capped_capacity=min(cap,7),factors=rec))
total=sum(x['capped_capacity'] for x in rows);assert total==102
out=dict(scope='One explicit F11 source polynomial only. Independent literal Horner source jets, and candidate one-variable factors reconstructed then checked by a separate elementary Rabin implementation. This is a counterdirection to uniform capped capacity <=97, not seven rational/loadable factors or an original NC point.',polynomial_sha256=hashlib.sha256((BASE/'capacity-witness.poly.tsv').read_bytes()).hexdigest(),q=d['q'],D=d['D'],terms=d['terms'],conditions_checked=d['conditions_checked'],source_jet_check=True,capacity_sum=total,all_initial_orders_equal_required=all(s['initial_order']==s['required_order'] for s in d['sources']),points=rows,seconds=round(time.monotonic()-start,3))
(BASE/'capacity-witness-check.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:v for k,v in out.items() if k not in ('points','scope')},ensure_ascii=False))
