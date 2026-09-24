"""Standard-library cross-check; deliberately imports neither SymPy nor predicates."""
import copy,hashlib,json,sys
from fractions import Fraction as F
from functools import reduce
from math import gcd,isqrt
from pathlib import Path


def trim(a):
    a=list(a)
    while len(a)>1 and a[-1]==0:a.pop()
    return a

def add(a,b):
    c=[F(0)]*max(len(a),len(b))
    for i,v in enumerate(a):c[i]+=v
    for i,v in enumerate(b):c[i]+=v
    return trim(c)

def neg(a):return [-v for v in a]

def sub(a,b):return add(a,neg(b))

def mul(a,b):
    c=[F(0)]*(len(a)+len(b)-1)
    for i,u in enumerate(a):
        for j,v in enumerate(b):c[i+j]+=u*v
    return trim(c)

def power(a,n):
    ans=[F(1)]
    for _ in range(n):ans=mul(ans,a)
    return ans

def divide(a,b):
    a=trim(a);b=trim(b)
    if b==[0]:raise ZeroDivisionError
    q=[F(0)]*max(1,len(a)-len(b)+1)
    while a!=[0] and len(a)>=len(b):
        k=len(a)-len(b);v=a[-1]/b[-1];q[k]+=v
        a=sub(a,[F(0)]*k+[v*t for t in b])
    return trim(q),trim(a)

def ev(a,x):
    y=0
    for c in reversed(a):y=y*x+c
    return y

def val(n,p):
    assert n>0
    e=0
    while n%p==0:n//=p;e+=1
    return e

def bval_digits(n,j,p):
    def ds(x):
        s=0
        while x:s+=x%p;x//=p
        return s
    return (ds(j)+ds(n-j)-ds(n))//(p-1)

# Sparse exact multivariate arithmetic. No CAS or sampled identity test.
class P:
    dim=4
    def __init__(self,x=0):
        if isinstance(x,P):self.a=x.a.copy()
        elif isinstance(x,dict):self.a={k:v for k,v in x.items() if v}
        else:self.a={} if x==0 else {(0,)*self.dim:F(x)}
    @classmethod
    def var(cls,i):
        k=[0]*cls.dim;k[i]=1;return cls({tuple(k):F(1)})
    def __add__(self,o):
        o=P(o);a=self.a.copy()
        for k,v in o.a.items():a[k]=a.get(k,F(0))+v
        return P(a)
    __radd__=__add__
    def __neg__(self):return P({k:-v for k,v in self.a.items()})
    def __sub__(self,o):return self+-P(o)
    def __rsub__(self,o):return P(o)+-self
    def __mul__(self,o):
        o=P(o);a={}
        for k,v in self.a.items():
            for l,w in o.a.items():
                t=tuple(x+y for x,y in zip(k,l));a[t]=a.get(t,F(0))+v*w
        return P(a)
    __rmul__=__mul__
    def __pow__(self,n):
        ans=P(1)
        for _ in range(n):ans=ans*self
        return ans
    def __eq__(self,o):return self.a==P(o).a


def symbolic_checks():
    f,K=P.var(0),P.var(1)
    den=f-2
    lnum=(K+1)*(K-3)
    qnum=((f-1)*K+1)*(K-3)**2
    mnum=qnum-lnum*(K-4)*den
    assert (K+1)*mnum==lnum*(lnum+4*den)
    assert mnum*qnum==lnum**3*den+4*lnum**2*den**2-5*mnum*lnum*den+mnum**2
    z,j=P.var(2),P.var(3)
    zd=2*j-f
    assert zd**2-1-4*j*(j-1)==(f-1)*(f+1-4*j)
    assert (K+1)*(K-3)-(((f-1)*K+1)*((f-1)*K-3))==-(f-2)*K*(f*K-2)
    mm=P.var(0);b=P(4);c=-5*mm;dd=mm**2
    cubic_disc=b*b*c*c-4*c**3-4*b**3*dd-27*dd**2+18*b*c*dd
    assert cubic_disc==-mm**2*(27*mm**2-140*mm-144)
    n,k,la,mu=[P.var(i) for i in range(4)]
    en=mu*(k+la)*(k-3*la)
    qn=mu**2*(k*(n-1)+la)*(k-3*la)**2
    mn=qn-mu*en*(k-4*la)*(n-2)
    assert (k+la)*mn==en*(en+4*mu*la**2*(n-2))
    return 6


def check_frozen(d):
    assert d['symbolic']['parameter_discriminant']==35152
    assert d['symbolic']['sqrt_bounds']==[187,188]
    assert 187**2<35152<188**2
    for a in d['applications']:
        cc=a['coefficients'];p=a['predicate'];deg=len(cc)-1;A=cc[-1]
        C=reduce(gcd,cc[1:]);H=sum(cc);T=3**p['exponent'];nn=ev(cc,T)
        D=max(t for t in range(1,deg+1) if deg%t==0 and A%(t*t)==0)
        assert D==p['D']==2 and nn%4==p['n_mod4']==0
        assert T>=(2*(H+2))**(2*deg+4)
        assert H==p['H'] and C==p['content_f_minus_2']
        r=0
        while 6*r<5*val(A,2)-2*val(C,2):r+=1
        M2=2**r;assert M2==p['M2']
        feasible=[s for s in range(deg-1,0,-1)
                  if 6*s>5*deg and all(cc[i]%2==0 for i in range(s+1,deg))
                  and cc[s]%2==0 and cc[s]>=M2]
        assert feasible==p['possible_top_difference_degrees']==[]
        tail=max((i for i in range(1,deg) if cc[i]),default=0)
        expected='CENTRAL_GAP_SUFFICIENT' if 6*tail<=5*deg else 'CENTRAL_SIXTH_CONTENT_SUFFICIENT'
        assert p['status']==expected
        assert val(nn-2,3)==a['source_exponent']
        assert val(nn*(nn-1)*(nn-2)//6,3)==a['v3_choose_n_3']
        assert nn.bit_length()==a['n_bits']
        assert hashlib.sha256(nn.to_bytes((nn.bit_length()+7)//8,'big')).hexdigest()==a['n_sha256_big_endian']
    for a in d['canonical_models']:
        ff=list(map(F,a['f']));jj=list(map(F,a['J']));zz=sub([2*t for t in jj],ff)
        assert zz==list(map(F,a['Z']))
        assert divide(mul(jj,sub(jj,[1])),sub(ff,[1]))[1]==[0]
        assert divide(mul(mul(jj,sub(jj,[1])),sub(jj,[2])),sub(ff,[2]))[1]==[0]
        assert divide(sub(mul(zz,zz),[1]),sub(ff,[1]))==([F(3)],[F(0)])
        assert all(ev(ff,t)%4==2 for t in range(1,18,2))
    a=d['squared_only_failure'];ff=list(map(F,a['f']));zz=list(map(F,a['Z']));kk=list(map(F,a['K']))
    assert divide(sub(mul(zz,zz),[1]),sub(ff,[1]))==(kk,[F(0)])
    assert divide(mul(add(kk,[1]),sub(kk,[3])),sub(ff,[2]))==([F(9,4)],[F(0)])
    rem=divide(mul(zz,sub(mul(zz,zz),[4])),sub(ff,[2]))[1]
    assert rem==list(map(F,a['second_window_remainder'])) and rem!=[0]
    for poly,multiplicity in [(sub(ff,[2]),2),(zz,1)]:
        cnt=0
        while divide(poly,[F(1,9),F(1)])[1]==[0]:
            poly=divide(poly,[F(1,9),F(1)])[0];cnt+=1
        assert cnt==multiplicity
    for a in d['original_weak_window_cores']:
        n,j=a['n'],a['j'];la,mu=a['lambda'],a['mu']
        assert la==(3 if val(n-1,3)==1 else 1)
        assert mu==(3 if val((n-2)//2,3)==1 else 1)
        N1,N2=(n-1)//la,(n-2)//(2*mu);z=n-2*j
        assert j*(j-1)%N1==0 and j*(j-1)*(j-2)%N2==0
        kap=(z*z-1)//N1;q=z*(kap-3*la)//(4*N2)
        ell=(kap+la)*(kap-3*la)//(4*N2);eta=(kap+la)//2
        mm=2*la*q*q-mu*ell*(2*eta-5*la)
        assert dict(kappa=kap,q=q,ell=ell,eta=eta,m=mm)==a['core']
        assert eta*mm==ell*(ell+2*mu*la*la)
        constant=mu*mu*la**3*(1+2*mu*la*la)
        assert constant==a['strip_constant']
        assert constant*z**6>2*(n-1)**3*(n-2)**2
    a=d['weak_pair_common_prime'];assert a['valuations']==[1,3]
    assert val(a['n']*(a['n']-1)*(a['n']-2)//6,3)==1
    assert bval_digits(a['n'],a['j'],3)==3


def finite_regression():
    checked,hit,uniform=0,0,0;by={'3':0,'63':0,'513':0}
    for n in range(8,801,4):
        la=3 if val(n-1,3)==1 else 1
        mu=3 if val((n-2)//2,3)==1 else 1
        C=mu*mu*la**3*(1+2*mu*la*la)
        bn=1;small=n*(n-1)*(n-2)//6
        for j in range(1,n//2+1):
            bn=bn*(n-j+1)//j
            if j<4:continue
            checked+=1;z=n-2*j
            if C*z**6<=2*(n-1)**3*(n-2)**2:
                g=gcd(small,bn)
                while g%2==0:g//=2
                assert g>1
                hit+=1;by[str(C)]+=1
            if 513*z**6<=2*(n-1)**3*(n-2)**2:uniform+=1
    # Necessary exponent arithmetic checked independently of symbol manipulations.
    exponent_checks=0
    for ea in range(2,65):
        for ec in range(ea+1):
            r=0
            while 6*r<5*ea-2*ec:r+=1
            assert r>=(3*ea-ec+3)//4
            for v in range(80):
                assert (6*v+2*ec>=5*ea)==(v>=r)
            exponent_checks+=1
    return {'original_input_pairs':checked,'exact_strip_hits':hit,'uniform_513_hits':uniform,
            'hits_by_constant':by,'exponent_checks':exponent_checks,
            'scope':'finite regression only, not the infinite proof'}


def main(src,out):
    d=json.loads(src.read_text());identities=symbolic_checks();check_frozen(d)
    mutations=[]
    for kind in range(4):
        bad=copy.deepcopy(d)
        if kind==0:bad['symbolic']['parameter_discriminant']+=1
        elif kind==1:bad['applications'][-1]['predicate']['M2']=4
        elif kind==2:bad['original_weak_window_cores'][0]['core']['m']+=1
        else:bad['squared_only_failure']['second_window_remainder']=['0']
        try:check_frozen(bad)
        except (AssertionError,ValueError):mutations.append(kind)
        else:raise AssertionError('corrupted certificate accepted')
    reg=finite_regression()
    result={'sparse_polynomial_identities':identities,'applications':len(d['applications']),
            'weak_window_pairs':len(d['original_weak_window_cores']),
            'canonical_models':len(d['canonical_models']),
            'corruption_classes_rejected':len(mutations),'regression':reg,
            'uses_sympy':False,'external_independent_review':False,'status':'PASS'}
    out.write_text(json.dumps(result,sort_keys=True,ensure_ascii=False,indent=2)+'\n')
    print('STANDARD_LIBRARY_IDENTITIES=PASS;',identities)
    print('FULL_RATIONAL_DIVISION_CROSSCHECK=PASS')
    print('ORIGINAL_STRIP_FINITE_REGRESSION=PASS;',reg)
    print('CORRUPTED_CERTIFICATES_REJECTED=PASS;',len(mutations))
    print('STANDARD_LIBRARY_CENTRAL_SIXTH_CHECK=PASS')

if __name__=='__main__':main(Path(sys.argv[1]),Path(sys.argv[2]))
