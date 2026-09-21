"""Regenerate algebraic and input certificates. Requires SymPy, not needed for replay."""
import sympy as S,json,math,argparse
from pathlib import Path
from fractions import Fraction
ROOT=Path(__file__).resolve().parents[1]
x,a,ell=S.symbols('x a ell')
F=lambda z:20*z**4+64*z**3+60*z**2+16*z+2

def vec(expr,var):
    p=S.Poly(S.expand(expr),var);return [str(p.nth(i)) for i in range(max(p.degree(),0)+1)]
def uv(k,l):
    if (k,l)==(0,1):return x*x+a*x-S.Rational(1,2),3*x*x/4+(a-S.Rational(1,4))*x
    if (k,l)==(0,2):return x*x+a*x-a-S.Rational(3,2),x*(x-3)/2
    return x*x+a*x-3*a-S.Rational(7,2),x*x/4+(-a-S.Rational(7,4))*x-3*a-S.Rational(7,2)

def source_v(n,p):
    e=0
    while n%p==0:n//=p;e+=1
    return e

def app(co,p,kind,extra=None):
    d=len(co)-1;H=sum(co);threshold=(2*(H+2))**(2*d+4);e=1
    while p**e<threshold:e+=1
    T=p**e;n=sum(c*T**i for i,c in enumerate(co));i0=next(i for i in range(1,d+1) if co[i])
    return dict(kind=kind,coefficients=co,p=p,e=e,T=str(T),n=str(n),threshold=str(threshold),source_exponent=e*i0+source_v(co[i0],p),parity_exit=(n%4!=0),extra=extra or {})

def build():
    cases=[]
    for k,l,rr in [(0,1,S.Rational(4)),(0,2,S.Rational(-6)),(1,2,-S.Rational(154,125))]:
        U,W=uv(k,l);R=x*(x-1);rem=S.rem(W**3+ell*R,U,x)
        record=dict(pair=[k,l],ratio=str(rr)); nums={}
        for power in (0,1):
            expr=S.expand(rem).coeff(x,power);D=S.ilcm(*[v.q for v in S.Poly(expr,a,ell).coeffs()]);num=S.expand(D*expr)
            nums[power]=num;record['remainder_'+str(power)]={'denominator':int(D),'ell_coefficient':vec(num.coeff(ell,1),a),'constant':vec(num.subs(ell,0),a)}
        eliminant=S.expand(nums[1].coeff(ell)*nums[0].subs(ell,0)-nums[0].coeff(ell)*nums[1].subs(ell,0));scalar,factors=S.factor_list(eliminant,a)
        record['eliminant']={'scalar':str(scalar),'factors':[{'coefficients':vec(f,a),'multiplicity':m} for f,m in factors]}
        UU=U.subs(a,rr);WW=W.subs(a,rr);el=S.solve(S.Poly(S.rem(WW**3+ell*R,UU,x),x).all_coeffs(),ell)[ell]
        FF=S.cancel(2+WW*(WW-UU)*(WW-2*UU)/(el*R));VV=S.cancel((FF-1)/UU)
        record.update(ell_value=str(el),f=vec(FF,x),V=vec(VV,x),W=vec(WW,x),U=vec(UU,x))
        if (k,l)==(0,1):record['canonical_affine']=['-5/3','-1/3']
        elif (k,l)==(1,2):record['canonical_affine']=['2/15','-25/21']
        else:record['canonical_affine']=None
        cases.append(record)
    rows=[]
    for aa,bb,p in [(1,1,3),(3,5,5),(7,1,7),(9,11,3)]:
        co=[2,2*aa+4*bb,2*aa*aa+8*aa*bb+6*bb*bb,12*aa*bb*bb+8*aa*aa*bb,12*aa*aa*bb*bb]
        rows.append(app(co,p,'quartic',dict(family='balanced_quadratics',a=aa,b=bb)))
    rows += [app([2,4,2,4,4],5,'quartic'),app([2,1,1,1,1],7,'quartic'),app([2,4,8,8,4],3,'quartic')]
    for r,m,p in [(2,1,5),(3,3,7),(5,7,3),(8,1,5)]:
        co=[0]*(3*r+1);co[0]=2
        for i,c in [(1,4*m),(r,4*m),(2*r,2),(2*r+1,8*m),(3*r,8*m)]:co[i]+=c
        rows.append(app(co,p,'primary_equal',dict(r=r,m=m,V=[1]+[0]*(2*r-1)+[2])))
    carries=[]
    for u in [1,2,3,4,8,13,27,81,1000,2**128+31,3**100]:
        n=216*u**3+162*u*u+27*u+2;tau=(3*u+2)*(4*u+1)*(6*u+1);j=min(tau,n-tau);E=source_v(n-2,3)
        carries.append(dict(u=str(u),n=str(n),j=str(j),E=E,layers=[E-2,E-1,E]))
    weak_T=1031;t=2*weak_T;n=int(F(t));J=t*(3*t+5)*(10*t*t+12*t+1)//2;j=min(J,n-J);g=math.gcd(n,j);odd=n//g
    while odd%2==0:odd//=2
    return {'schema':'B699-round7-v1','statements':{'quartic_exponent':12,'primary_threshold':'3e>=2d','balanced_interval':'d/3<e<2d/3','NC3_sufficiency':False},'ode_cases':cases,'canonical_quartic':vec(F(x),x),'canonical_shift_minus_one':vec(F(x-1),x),'applications':rows,'cubic_carries':carries,'weak_model':{'T':weak_T,'n':str(n),'j':str(j),'g':str(g),'alpha_odd':str(odd),'NC3':False,'common_prime':3,'common_valuations':[source_v(n*(n-1)*(n-2)//6,3),sum(n//(3**h)-j//(3**h)-(n-j)//(3**h) for h in range(1,n.bit_length()+1))]},'probe_status':{'direct_groebner':'timeout_no_conclusion','quotient_classification':'paper_plus_exact_certificates'}}

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--output',default=str(ROOT/'certificates'/'round7.json'));args=pa.parse_args();out=Path(args.output);out.parent.mkdir(parents=True,exist_ok=True)
    out.write_text(json.dumps(build(),indent=2,ensure_ascii=False)+'\n');print(out)
if __name__=='__main__':main()
