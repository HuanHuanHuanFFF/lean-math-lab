"""Independent acceptance of NEW data. Does not import generate.py.
Rebuilds polynomials, all finite domains, trial-division prime certificates,
and full CRT intersections. Assertions are mathematical acceptance gates.
"""
from pathlib import Path
from math import comb, prod, gcd, isqrt
from fractions import Fraction
import json, time, hashlib
BASE=Path(__file__).resolve().parents[1]

class Poly:
    def __init__(self,d=0):
        self.d=dict(d) if isinstance(d,dict) else ({(0,0):int(d)} if d else {})
        self.d={k:int(v) for k,v in self.d.items() if v}
    def __add__(self,o):
        if not isinstance(o,Poly):o=Poly(o)
        d=self.d.copy()
        for k,v in o.d.items():d[k]=d.get(k,0)+v
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.d.items()})
    def __sub__(self,o):return self+-Poly(o) if not isinstance(o,Poly) else self+-o
    def __rsub__(self,o):return Poly(o)+-self
    def __mul__(self,o):
        if not isinstance(o,Poly):o=Poly(o)
        d={}
        for (a,b),v in self.d.items():
            for (c,e),w in o.d.items():d[(a+c,b+e)]=d.get((a+c,b+e),0)+v*w
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,e):
        assert isinstance(e,int) and e>=0
        r=Poly(1);a=self
        while e:
            if e%2:r=r*a
            a=a*a;e//=2
        return r
    def substitute(self,x,y):
        return sum((c*x**a*y**b for (a,b),c in self.d.items()),Poly())
    def encoded(self):return [[a,b,c] for (a,b),c in sorted(self.d.items())]

X=Poly({(1,0):1});Y=Poly({(0,1):1})
# The verifier uses expanded x,y expressions, not the generator's N,W formulas.
A=(X-1)*(Y-1)
B=X**2+X*Y+Y**2-4*X-4*Y+3
P=X**2-X*Y+Y**2-X-Y
R=X**2+3*X*Y+Y**2-5*X-5*Y+4
V=4*X**2+5*X*Y+4*Y**2-16*X-16*Y+12
Q=10*X**4+4*X**3*Y-54*X**3+15*X**2*Y**2-45*X**2*Y+90*X**2+4*X*Y**3-45*X*Y**2+99*X*Y-58*X+10*Y**4-54*Y**3+90*Y**2-58*Y+12
EXPECTED={
 'R3_INNER':(X*Y*A**2*P**2*R,[6,5,2],[[0,1],[1,2],[0,1,2,3,4]],Fraction(5,256)),
 'R3_OUTER':(X**2*Y**2*A*B*V**2,[6,5,2],[[0,1],[0,3],[0,1,2,3,4]],Fraction(1,4)),
 'R4_INNER':(A*B*Q**2,[6,3,4],[[0,1],[0,1,2,3],[1,2,3]],Fraction(25))}

def valuation(n,p):
    e=0
    while n%p==0:e+=1;n//=p
    return e

def s5(n):
    return 2**valuation(n,2)*3**valuation(n,3)*(5 if valuation(n,5)==1 else 1)

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def validate_factorization(n,f):
    assert f==sorted(f) and len({p for p,e in f})==len(f)
    assert all(prime(p) and isinstance(e,int) and e>=1 for p,e in f)
    assert prod(p**e for p,e in f)==n
    return f

def regenerate_domain(cap):
    # Reverse CRT, 3-power outer loop and exact positional maxima checked anew.
    out={n for n in range(12,min(cap,8192)) if (n%8,n%9) in ((0,2),(2,0))}
    low=sorted(out);high=set();tups=[];nt=0
    as_=[];bs_=[];P2=8;aa=3
    while P2<cap:as_.append((aa,P2));aa+=1;P2*=2
    Q3=9;bb=2
    while Q3<cap:bs_.append((bb,Q3));bb+=1;Q3*=3
    for b,Q3 in bs_:
        for a,P2 in as_:
            for u,v in ((2,0),(0,2)):
                nt+=1;n=v+Q3*((u-v)*pow(Q3,-1,P2)%P2)
                if not 8192<=n<cap:continue
                if (n%8,n%9) not in ((0,2),(2,0)):continue
                if valuation(n-u,2)!=a or valuation(n-v,3)!=b:continue
                assert valuation(n-u,2)==max(valuation(n-r,2) for r in range(5))
                assert valuation(n-v,3)==max(valuation(n-r,3) for r in range(5))
                assert P2*Q3>n
                high.add(n);out.add(n);tups.append([a,b,u,v,n])
    return {'low':low,'high':sorted(high),'templates':sorted(tups),'attempts':nt,'domain':sorted(out)}

def passes_qig(n):
    parts=[s5(n-r) for r in range(4)]
    return prod(parts)**6*(3*n*n-12*n+8)<1048576*(n-1)**6*(n-3)**3

def verify(cert=None,write=True):
    start=time.monotonic()
    if cert is None:cert=json.loads((BASE/'evidence/new-certificate.json').read_text())
    assert cert['format']=='B699-D-H02-folded-allocation-v1' and cert['target']==5
    assert cert['H02_residues_mod72']==[18,56] and cert['large_row_threshold']==8192
    assert cert['four_native_constants']=={'min_n':18,'gcd_required':False}
    assert set(cert['polynomials'])==set(EXPECTED)==set(cert['finite_domains'])
    qshift=Q.substitute(X+6,X+Y+6)
    assert min(qshift.d.values())>0
    assert cert['auxiliary_Q_positivity']=={'coefficients':Q.encoded(),'shift_j6_kj':qshift.encoded()}
    tay=pos=0;terminalset=set();casecounts={}
    # Non-negative factorizations of the analytic upper bounds (n>=12).
    # P<=n², B<n² and R<5n²/4,V<4n² are immediate from W<=n²/4.
    # For Q: 27W²-36n²W+117nW <= (117/4)n(4-n)W <=0.
    assert 36-Fraction(27,4)==Fraction(117,4)
    assert 8192*2**19>3*30**6
    for name,(F,w,allowed,K) in EXPECTED.items():
        s=cert['polynomials'][name]
        assert s['weights']==w and s['allowed']==allowed and s['bound']==[K.numerator,K.denominator]
        assert s['coefficients']==F.encoded() and max(a+b for a,b in F.d)==12
        # Integer Taylor conditions via derivative coefficients, NOT translating at nodes.
        actual=[]
        for r,wr,Bs in zip((1,3,4),w,allowed):
            for b in Bs:
                for u in range(wr):
                    for v in range(wr-u):
                        value=sum(c*comb(a,u)*comb(d,v)*b**(a-u)*(r-b)**(d-v)
                                  for (a,d),c in F.d.items() if a>=u and d>=v)
                        assert value==0;tay+=1
                # Compute exact reported order independently.
                for order in range(wr,13):
                    vals=[sum(c*comb(a,u)*comb(d,order-u)*b**(a-u)*(r-b)**(d-order+u)
                              for (a,d),c in F.d.items() if a>=u and d>=order-u) for u in range(order+1)]
                    if any(vals):break
                actual.append([r,b,order])
        assert s['orders']==actual
        shifted=F.substitute(X+6,X+Y+6)
        assert shifted.d and min(shifted.d.values())>0 and s['shift_j6_kj']==shifted.encoded()
        pos+=len(shifted.d)
        # Two orientations; only one source position pays the isolated factor 5.
        cost=max(2**(2*w[2]),2**w[2]*3**w[1])*5**max(w)
        assert cost==s['C']
        cutoff=2*sum(r*ww for r,ww in zip((1,3,4),w))
        cap=(2*K*cost).__ceil__()
        assert s['tail_start']==cutoff and s['cap']==cap and cap>cutoff
        expected=regenerate_domain(cap);given=cert['finite_domains'][name]
        for key in expected:assert given[key]==expected[key],(name,key)
        passed=sorted(n for n in expected['domain'] if passes_qig(n))
        terminal=sorted(set(expected['domain'])-set(passed))
        assert given['qig_accepted']==passed and given['terminal_rows']==terminal
        terminalset.update(terminal)
        casecounts[name]={'cap':cap,'templates':expected['attempts'],'candidates':len(expected['domain']),'qig':len(passed),'terminal':len(terminal)}
    rows=cert['terminal_rows'];assert [r['n'] for r in rows]==sorted(terminalset)
    operations=0;primes=set();maxactive=0
    for row in rows:
        n=row['n'];assert len(row['factorizations'])==5
        blocks=[]
        for r,f in enumerate(row['factorizations']):
            validate_factorization(n-r,f)
            for p,e in f:
                primes.add(p)
                if p>=7 or p==5 and e>=2:blocks.append((p**e,r,p,e))
        blocks.sort(reverse=True);states={(0,1)};trace=[];rowops=0
        for Qq,r,p,e in blocks:
            nxt=set()
            for a,M in states:
                assert gcd(M,Qq)==1
                for b in range(r+1):
                    rowops+=1
                    # Reverse CRT; reduce to unique representative modulo M*Q.
                    mod=M*Qq;z=(b+Qq*((a-b)*pow(Qq,-1,M)%M))%mod if M>1 else b
                    lower=(6-z+mod-1)//mod;upper=(n//2-z)//mod
                    if max(0,lower)<=upper:nxt.add((z,mod))
            states=nxt;maxactive=max(maxactive,len(states))
            trace.append({'block':[r,p,e,Qq],'states':[[a,M] for a,M in sorted(states)]})
            if not states:break
        assert not states and row['trace']==trace and row['crt_operations']==rowops
        operations+=rowops
    # Source contracts, bytes only; never label this as rerunning old mathematics.
    smap=BASE/'sources/SOURCE_MAP.json'
    if smap.exists():
        for src in json.loads(smap.read_text())['files']:
            pth=BASE/src['local_path'];assert hashlib.sha256(pth.read_bytes()).hexdigest()==src['sha256']
    result={'status':'PASS_NEW_FOLDED_SPLITTING','polynomials':len(EXPECTED),'integer_taylor_zero_conditions':tay,
      'strict_positive_half_plane_coefficients':pos,'auxiliary_Q_positive_coefficients':len(qshift.d),'cases':casecounts,'different_terminal_rows':len(rows),
      'source_primes_trial_proved':len(primes),'max_source_prime':max(primes),'crt_operations':operations,
      'largest_active_residue_list':maxactive,'all_final_intersections_empty':True,
      'Lean':False,'independent_human_review':False,'seconds':time.monotonic()-start}
    if write:(BASE/'outputs/verification.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    return result
if __name__=='__main__':print(json.dumps(verify(),ensure_ascii=False))
