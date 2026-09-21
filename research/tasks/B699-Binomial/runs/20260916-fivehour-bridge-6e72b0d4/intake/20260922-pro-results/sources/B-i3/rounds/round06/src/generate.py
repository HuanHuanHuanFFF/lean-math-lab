#!/usr/bin/env python3
"""Generate exact finite certificates. Infinite quantifiers are proved in PROOFS.md.
Only this optional generation step uses SymPy. Checkers use the standard library.
"""
from __future__ import annotations
import argparse, json, math
from pathlib import Path
import sympy as S

ROOT = Path(__file__).resolve().parents[1]

def ast(e):
    e=S.sympify(e)
    if e.is_Integer: return int(e)
    if e.is_Symbol: return str(e)
    if e.is_Add: return ['add',*[ast(a) for a in e.args]]
    if e.is_Mul: return ['mul',*[ast(a) for a in e.args]]
    if e.is_Pow and e.exp.is_Integer and e.exp>=0: return ['pow',ast(e.base),int(e.exp)]
    raise ValueError(f'non-integral AST node: {e}')

def poly(e,x):
    p=S.Poly(e,x,domain=S.ZZ)
    return [int(p.nth(i)) for i in range(max(0,p.degree())+1)] if not p.is_zero else [0]

def peval(f,t): return sum(a*t**i for i,a in enumerate(f))
def vp(n,p):
    if n==0: raise ValueError('valuation at zero')
    n=abs(n);v=0
    while n%p==0:n//=p;v+=1
    return v

def pseudo(g,f):
    r=g[:];q=[0];A=f[-1];ex=0;d=len(f)-1
    def trim(a):
        while len(a)>1 and a[-1]==0:a.pop()
        return a
    trim(r)
    while len(r)-1>=d and any(r):
        shift=len(r)-1-d;c=r[-1]
        r=[A*v for v in r]
        for i,a in enumerate(f):r[i+shift]-=c*a
        ex+=1;trim(r)
    return ex,r

def rows():
    x=S.Symbol('x'); out=[]
    def add(kind,**kw):
        rec={'id':f'ROW{len(out)+1:02}', 'kind':kind,**kw}
        if kind=='cubic':
            f=[2,kw['C'],kw['B'],kw['A']];H=sum(f);bound=(2*(H+2))**10
        elif kind=='primary':
            G=sum(v*x**i for i,v in enumerate(kw['G']))
            U=sum(v*x**i for i,v in enumerate(kw['U']))
            f=poly(1+U*G**kw['multiplicity'],x);H=sum(f);bound=(2*(H+2))**(2*(len(f)-1)+4)
        elif kind=='split':
            U=sum(v*x**i for i,v in enumerate(kw['U']))
            f=poly(1+U*(1+kw['B']*x**kw['h']),x);H=sum(f);bound=4*kw['B']**3*(H+2)**2
        else:raise ValueError(kind)
        p=kw.get('p',5);e=kw.get('e',1)
        while p**e<bound:e+=1
        T=p**e;n=peval(f,T);i0=next(i for i in range(1,len(f)) if f[i])
        rec.update(p=p,e=e,f=f,H=H,T=str(T),bound=str(bound),n=str(n),
                   lowest_index=i0,source_exponent=vp(n-2,p),predicted_source_exponent=e*i0+vp(f[i0],p),
                   v_p_Cn3=vp(n-2,p)-(p==3), n_mod4=n%4)
        out.append(rec)
    add('cubic',A=8,B=4,C=2,p=5)
    add('cubic',A=8,B=4,C=2,p=3)
    add('cubic',A=1728,B=648,C=54,p=3)
    add('cubic',A=1728,B=648,C=54,p=5)
    add('cubic',A=2,B=0,C=0,p=5)
    add('cubic',A=4,B=0,C=0,p=5,scope_note='old_parity_exit_only')
    add('cubic',A=1,B=0,C=1,p=5)
    add('primary',G=[1,2],multiplicity=5,U=[1],irreducibility={'type':'linear'},p=3)
    for h in [3,5,9]:
        G=[1]+[0]*(h-1)+[2]
        add('primary',G=G,multiplicity=1,U=[1,4],irreducibility={'type':'reverse_eisenstein','prime':2},p=5)
    for r,h in [(1,3),(2,5),(5,11),(8,17)]:
        add('split',U=[1]+[0]*(r-1)+[4],B=2,h=h,eisenstein_prime=2,p=5)
    add('split',U=[1,0,12],B=2,h=5,eisenstein_prime=2,p=3)
    add('split',U=[1,4,0,4],B=2,h=7,eisenstein_prime=2,p=3)
    add('split',U=[1,0,4],B=6,h=5,eisenstein_prime=2,p=5)
    return out

def make():
    a,b,c,s,z,x,u,U,V,W,L,K,m=S.symbols('a b c s z x u U V W L K m')
    identities=[]
    def ident(name,lhs,rhs):
        assert S.expand(lhs-rhs)==0,name
        var=sorted(lhs.free_symbols|S.sympify(rhs).free_symbols,key=str)
        identities.append({'id':name,'variables':[str(q) for q in var], 'lhs':ast(lhs),'rhs':ast(rhs)})
    ux=1+a*x;vx=1+c*x+b*x*x;wx=s*x+z;D=b-a*c+a*a
    ident('cubic_factor_coefficients',ux*vx+1,2+(a+c)*x+(b+a*c)*x*x+a*b*x**3)
    Rem=D*(a*z-s)-a**3
    quot=S.cancel((a**3*(vx*wx-1)-Rem)/ux)
    ident('linear_source_remainder',a**3*(vx*wx-1),ux*S.expand(quot)+Rem)
    ident('second_source_transport',U**3*(V*W)*(V*W-1)*(V*W-2)-W*(W-U)*(W-2*U),
          (U*V-1)*((U**2*V**2+U*V+1)*W**3-3*U*(U*V+1)*W**2+2*U**2*W))
    ident('slot_cubic_expansion',wx*(wx-ux)*(wx-2*ux),
          (2*a*a*s-3*a*s*s+s**3)*x**3+(2*a*a*z-6*a*s*z+4*a*s+3*s*s*z-3*s*s)*x*x+
          (-3*a*z*z+4*a*z+3*s*z*z-6*s*z+2*s)*x+z**3-3*z*z+2*z)
    bn=a*a*(s-a)*(s-2*a);cn=2*a**3-a*s*s
    ident('classification_delta',bn-a*cn+a*a*s*s,3*a*a*s*(s-a))
    ident('classification_final',-s*(bn-a*cn+a*a*s*s)-a**3*s*s,-a*a*s*s*(3*s-2*a))
    n=216*u**3+162*u*u+27*u+2;j=72*u**3+78*u*u+23*u+2;k=144*u**3+84*u*u+4*u
    ident('exception_sum',j+k,n)
    ident('exception_j_factor',j,(3*u+2)*(4*u+1)*(6*u+1))
    ident('exception_k_factor',k,4*u*(36*u*u+21*u+1))
    ident('exception_source1',n-1,(6*u+1)*(36*u*u+21*u+1))
    ident('exception_source2',n-2,27*u*(2*u+1)*(4*u+1))
    ident('exception_first_window',j*k,(n-1)*4*u*(3*u+2)*(4*u+1))
    Z=2*(3*u+2)*(6*u+1)*(36*u*u+21*u+1)*(72*u*u+78*u+23)
    ident('exception_three_deficit',54*j*(j-1)*(j-2),(n-2)*Z)
    ident('pseudo_norm_gap',4*(6*L**3*K),3*(8*L**3*K))
    ident('positive_product_bound',U*U-4*W*(U-W),(U-2*W)**2)
    ident('explicit_split_threshold',4*2**3*(6+12*m)**2,1152*(2*m+1)**2)
    modpoly=poly(Z,u)
    formal=[]
    fs=[([2,2,4,8],[1,1,0,4]),([2,4,6,4],[2,4,4,0]),([2,54,648,1728],[2,46,312,576])]
    # Additional finite regressions, not a proof by enumeration.
    for coeff in [(2,0,0,2),(2,1,0,1),(2,4,2,8),(2,2,2,2),(2,6,8,4)]:
        f=list(coeff)
        for jc in [(0,0,0,0),(1,0,0,0),(2,0,0,0),(1,f[1]//2,f[2]//2,f[3]//2)]:fs.append((f,list(jc)))
    for f,js in fs:
        F=sum(q*x**i for i,q in enumerate(f));J=sum(q*x**i for i,q in enumerate(js));H=sum(f);Ld=H+2;d=len(f)-1
        for source in [1,2]:
            divisor=f[:];divisor[0]-=source
            ge=(3 if source==1 else 6)*S.prod(J-a0 for a0 in range(source+1))
            g=poly(ge,x);ex,rem=pseudo(g,divisor)
            formal.append({'f':f,'J':js,'source':source,'divisor':divisor,'G':g,
                           'exponent':ex,'pseudo_remainder':rem,'degree':d,'norm_bound':str(6*Ld**3*(2*Ld)**(2*d+1))})
    exception=[]
    samples=[1,2,3,4,10,17,101,3**12+2,10**30+2,3**60,3**90+2,2*5003]
    for t in samples:
        nn=int(n.subs(u,t));jj=int(j.subs(u,t));kk=nn-jj;E=vp(nn-2,3)
        digits=[nn//3**a-jj//3**a-kk//3**a for a in range(E-2,E+1)]
        exception.append({'u':str(t),'n':str(nn),'j':str(min(jj,kk)),'tau':str(jj),'sigma':str(kk),
                          'E':E,'layers':list(range(E-2,E+1)),'carries':digits,
                          'vp_tau_falling3':vp(jj*(jj-1)*(jj-2),3), 'gcd':str(math.gcd(nn,jj))})
    return {'schema':'B699-R6-v1','scope':{'index':3,'allow_prime_3':True,'same_input':True,
            'adopted_NC3_implies_4_divides_n':True,'lean':False,'repository_writes':False,
            'polynomial_divisibility_is_not_sufficient':True},
            'statements':{'cubic_degree':3,'constant_term':2,'lifting_base_factor':2,
                          'lifting_degree_multiplier':2,'lifting_offset':4,
                          'primary_comparison':'strict_3e_gt_2d','split_comparison':'strict_h_gt_2r',
                          'split_threshold_factor':4},
            'identities':identities,'unit_mod3':{'polynomial':modpoly,'constant_residue':2},
            'pseudo_divisions':formal,'exception_samples':exception,'rows':rows(),
            'original_regression':{'n_min':8,'n_max':90,'j_min':4,'primes':[2,3,5,7,11,13]}}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);args=p.parse_args()
    args.out.parent.mkdir(parents=True,exist_ok=True)
    data=make();args.out.write_text(json.dumps(data,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'identities':len(data['identities']),'pseudo_divisions':len(data['pseudo_divisions']),
                      'rows':len(data['rows']),'exception_samples':len(data['exception_samples'])}))
