"""Construct the NEW finite certificates. Standard library only.
No prior run or repository is modified; discovery scripts are not imported.
"""
from pathlib import Path
from fractions import Fraction
from math import comb, gcd, isqrt
from collections import defaultdict
import json, hashlib, time
BASE=Path(__file__).resolve().parents[1]

def add(*polys):
    z=defaultdict(int)
    for p in polys:
        for m,c in p.items(): z[m]+=c
    return {m:c for m,c in z.items() if c}
def scale(p,c):return {m:c*v for m,v in p.items() if c*v}
def mul(p,q):
    z=defaultdict(int)
    for (a,b),c in p.items():
        for (d,e),f in q.items():z[a+d,b+e]+=c*f
    return {m:c for m,c in z.items() if c}
def power(p,k):
    z={(0,0):1}
    for _ in range(k):z=mul(z,p)
    return z
def shift(p,u,v):
    z=defaultdict(int)
    for (a,b),c in p.items():
        for h in range(a+1):
            for k in range(b+1):z[h,k]+=c*comb(a,h)*comb(b,k)*u**(a-h)*v**(b-k)
    return {m:c for m,c in z.items() if c}
def half_shift(p):
    z=defaultdict(int)
    for (a,b),c in p.items():
        for v in range(b+1):
            d=a+b-v
            for u in range(d+1):z[u,v]+=c*comb(b,v)*comb(d,u)*6**(d-u)
    return {m:c for m,c in z.items() if c}
def encode(p):return [[a,b,int(c)] for (a,b),c in sorted(p.items())]
def order(p,a,b):return min(sum(m) for m,c in shift(p,a,b).items() if c)

def all_polynomials():
    O={(0,0):1};x={(1,0):1};y={(0,1):1}
    N=add(x,y);W=mul(x,y);A=add(W,scale(N,-1),O)
    B=add(power(N,2),scale(W,-1),scale(N,-4),scale(O,3))
    P=add(power(N,2),scale(W,-3),scale(N,-1))
    R=add(power(N,2),W,scale(N,-5),scale(O,4))
    V=add(scale(power(N,2),4),scale(W,-3),scale(N,-16),scale(O,12))
    Q=add(scale(power(N,4),10),scale(mul(power(N,2),W),-36),scale(power(W,2),27),
          scale(power(N,3),-54),scale(mul(N,W),117),scale(power(N,2),90),
          scale(W,-81),scale(N,-58),scale(O,12))
    return {'R3_INNER':mul(mul(W,power(A,2)),mul(power(P,2),R)),
            'R3_OUTER':mul(mul(power(W,2),A),mul(B,power(V,2))),
            'R4_INNER':mul(mul(A,B),power(Q,2))}
SPECS={
 'R3_INNER': {'weights':[6,5,2], 'allowed':[[0,1],[1,2],[0,1,2,3,4]],'bound':[5,256],'C':15187500,'tail_start':58,'cap':593262},
 'R3_OUTER': {'weights':[6,5,2], 'allowed':[[0,1],[0,3],[0,1,2,3,4]],'bound':[1,4],'C':15187500,'tail_start':58,'cap':7593750},
 'R4_INNER': {'weights':[6,3,4], 'allowed':[[0,1],[0,1,2,3],[1,2,3]],'bound':[25,1],'C':6750000,'tail_start':62,'cap':337500000}}

def poly_certificates():
    out={}
    for name,F in all_polynomials().items():
        sp=dict(SPECS[name]);actual=[]
        for r,w,allowed in zip([1,3,4],sp['weights'],sp['allowed']):
            for b in allowed:
                o=order(F,b,r-b);assert o>=w
                actual.append([r,b,o])
        translated=half_shift(F);assert translated and min(translated.values())>0
        assert max(sum(m) for m in F)==12
        sp.update({'coefficients':encode(F),'shift_j6_kj':encode(translated),'orders':actual})
        out[name]=sp
    return out

def vp(n,p):
    e=0
    while n%p==0:n//=p;e+=1
    return e

def small5(n):
    s=1
    for p in (2,3):
        while n%p==0:n//=p;s*=p
    if n%5==0 and n%25!=0:s*=5
    return s

def qig(n):
    T=1
    for r in range(4):T*=small5(n-r)
    return T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3

def factor(n):
    if n<1:raise ValueError('positive factorization required')
    out=[];p=2
    while p*p<=n:
        e=0
        while n%p==0:n//=p;e+=1
        if e:out.append([p,e])
        p=3 if p==2 else p+2
    if n>1:out.append([n,1])
    return out

def residue_has_point(a,M,lo,hi):return a+max(0,(lo-a+M-1)//M)*M<=hi

def full_window_row(n):
    """Use ALL allowed residues, even for the conditional branch.
    Consequently every recorded empty row is an unconditional NC5 exclusion.
    """
    fs=[factor(n-r) for r in range(5)]
    blocks=sorted([(p**e,r,p,e) for r,f in enumerate(fs) for p,e in f if p>5 or p==5 and e>=2],reverse=True)
    states=[(0,1)];trace=[];ops=0
    for Q,r,p,e in blocks:
        new=[]
        for a,M in states:
            for b in range(r+1):
                aa=a+M*((b-a)*pow(M,-1,Q)%Q);MM=M*Q;ops+=1
                if residue_has_point(aa,MM,6,n//2):new.append((aa,MM))
        states=sorted(set(new));trace.append({'block':[r,p,e,Q],'states':[[a,M] for a,M in states]})
        if not states:break
    assert states==[],(n,states)
    return {'n':n,'factorizations':fs,'trace':trace,'crt_operations':ops}

def candidate_domain(cap):
    low=[n for n in range(12,min(8192,cap)) if n%72 in (18,56)]
    powers2=[];q=8;a=3
    while q<cap:powers2.append((a,q));a+=1;q*=2
    powers3=[];q=9;b=2
    while q<cap:powers3.append((b,q));b+=1;q*=3
    high=set();accepted_templates=[];attempts=0
    for a,P in powers2:
        for b,Q in powers3:
            for r2,r3 in [(0,2),(2,0)]:
                attempts+=1;n=r2+P*((r3-r2)*pow(P,-1,Q)%Q)
                if not (8192<=n<cap):continue
                if n%72 not in (18,56):continue
                if 2**vp(n-r2,2)!=P or 3**vp(n-r3,3)!=Q:continue
                high.add(n);accepted_templates.append([a,b,r2,r3,n])
    return {'low':low,'high':sorted(high),'templates':sorted(accepted_templates),'attempts':attempts,
            'domain':sorted(set(low)|high)}

def auxiliary_q_certificate():
    O={(0,0):1};N={(1,0):1,(0,1):1};W={(1,1):1}
    q=add(scale(power(N,4),10),scale(mul(power(N,2),W),-36),scale(power(W,2),27),
          scale(power(N,3),-54),scale(mul(N,W),117),scale(power(N,2),90),
          scale(W,-81),scale(N,-58),scale(O,12))
    shifted=half_shift(q)
    assert shifted and min(shifted.values())>0
    return {'coefficients':encode(q),'shift_j6_kj':encode(shifted)}

def generate():
    start=time.monotonic()
    pol=poly_certificates();cases={};union=set()
    for name,sp in SPECS.items():
        dom=candidate_domain(sp['cap']);passq=[n for n in dom['domain'] if qig(n)]
        needs=sorted(set(dom['domain'])-set(passq));union.update(needs)
        cases[name]={**dom,'qig_accepted':passq,'terminal_rows':needs}
    rows=[full_window_row(n) for n in sorted(union)]
    cert={'format':'B699-D-H02-folded-allocation-v1','target':5,'H02_residues_mod72':[18,56],
          'large_row_threshold':8192,'polynomials':pol,'finite_domains':cases,'terminal_rows':rows,
          'four_native_constants':{'min_n':18,'gcd_required':False},
          'auxiliary_Q_positivity':auxiliary_q_certificate()}
    (BASE/'evidence/new-certificate.json').write_text(json.dumps(cert,sort_keys=True,indent=2)+'\n')
    summary={'status':'PASS_NEW_CONDITIONAL_BRANCHES','polynomials':3,
      'taylor_conditions':sum(sum(w*(w+1)//2*len(bs) for w,bs in zip(sp['weights'],sp['allowed'])) for sp in SPECS.values()),
      'positive_coefficients':sum(len(sp['shift_j6_kj']) for sp in pol.values()),
      'auxiliary_Q_positive_coefficients':len(cert['auxiliary_Q_positivity']['shift_j6_kj']),
      'per_case':{k:{'templates':v['attempts'],'rows':len(v['domain']),'qig':len(v['qig_accepted']),'terminals':len(v['terminal_rows'])} for k,v in cases.items()},
      'different_terminal_rows':len(rows),'max_terminal_n':max(union),'crt_operations':sum(r['crt_operations'] for r in rows),
      'direct_j_enumerated':0,'seconds':time.monotonic()-start}
    (BASE/'outputs/generation.json').write_text(json.dumps(summary,sort_keys=True,indent=2)+'\n')
    print(json.dumps(summary,ensure_ascii=False))
    return cert
if __name__=='__main__':generate()
