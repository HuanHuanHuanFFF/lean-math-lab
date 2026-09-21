"""Checker A: sparse multivariate coefficient identities and exact integer valuations."""
import json,math,argparse
from pathlib import Path
from fractions import Fraction as Q
from arith_a import Poly,vector,divrem_x,prime,valuation,eval_int,vp_binomial
ROOT=Path(__file__).resolve().parents[1]
x,a,ell=[Poly.var(i) for i in range(3)]

def require(ok,msg):
    if not ok:raise ValueError(msg)
def shapes(k,l):
    if (k,l)==(0,1):return x*x+a*x-Q(1,2),Q(3,4)*x*x+(a-Q(1,4))*x
    if (k,l)==(0,2):return x*x+a*x-a-Q(3,2),x*(x-3)/2
    if (k,l)==(1,2):return x*x+a*x-3*a-Q(7,2),x*x/4+(-a-Q(7,4))*x-3*a-Q(7,2)
    raise ValueError('unexpected pair')
def sqroot(q):
    if q<0:return None
    u,v=math.isqrt(q.numerator),math.isqrt(q.denominator)
    return Q(u,v) if u*u==q.numerator and v*v==q.denominator else None

def scalar_at(p,aa,xx):
    p=p.substitute(1,aa).substitute(0,xx)
    require(set(p.t)<= {(0,0,0)},'not scalar')
    return p.t.get((0,0,0),Q(0))

def verify(c):
    require(c['schema']=='B699-round7-v1','schema')
    require(c['statements']==dict(quartic_exponent=12,primary_threshold='3e>=2d',balanced_interval='d/3<e<2d/3',NC3_sufficiency=False),'statement contract')
    require([v['pair'] for v in c['ode_cases']]==[[0,1],[0,2],[1,2]],'complete case set')
    counts={'ode_cases':0,'coefficient_identities':0,'row_applications':0,'cubic_carries':0}
    for rec in c['ode_cases']:
        k,l=rec['pair'];U,W=shapes(k,l);R=x*(x-1)
        require((3*R*W.diff()-R.diff()*W-2*R*U.diff()+((k+l)*x-k)*U).is_zero(),'ODE identity')
        actual=divrem_x(W**3+ell*R,U)[1];expected=Poly();nums=[]
        for i in (0,1):
            rr=rec['remainder_'+str(i)];N=ell*vector(rr['ell_coefficient'],a)+vector(rr['constant'],a)
            require(type(rr['denominator']) is int and rr['denominator']>0,'remainder denominator')
            expected+=N*x**i/rr['denominator'];nums.append(N)
        require(actual==expected,'remainder coefficients')
        elim=nums[1].coeff(2,1)*nums[0].substitute(2,0)-nums[0].coeff(2,1)*nums[1].substitute(2,0)
        fac=Poly.constant(Q(rec['eliminant']['scalar']));roots=set()
        for ff in rec['eliminant']['factors']:
            co=list(map(Q,ff['coefficients']));m=ff['multiplicity'];require(type(m) is int and m>0,'multiplicity')
            fac*=vector(co,a)**m
            if len(co)==2:roots.add(-co[0]/co[1])
            elif len(co)==3:
                r=sqroot(co[1]**2-4*co[0]*co[2])
                if r is not None:roots.update([(-co[1]+r)/(2*co[2]),(-co[1]-r)/(2*co[2])])
            else:raise ValueError('unproved rational root classification')
        require(fac==elim,'eliminant factorization')
        roots={aa for aa in roots if scalar_at(U,aa,0)!=0 and scalar_at(U,aa,1)!=0}
        require(roots=={Q(rec['ratio'])},'rational branch exhaustion')
        UU=U.substitute(1,Q(rec['ratio']));WW=W.substitute(1,Q(rec['ratio']));EE=Q(rec['ell_value'])
        ff=vector(rec['f'],x);VV=vector(rec['V'],x)
        require(UU==vector(rec['U'],x) and WW==vector(rec['W'],x),'normalized shape')
        require(EE!=0,'nonzero quadratic quotient')
        require(UU*VV==ff-1,'first factor product')
        require(divrem_x(VV*WW-1,UU)[1].is_zero(),'first inverse')
        require(WW*(WW-UU)*(WW-2*UU)==EE*R*(ff-2),'second identity')
        if rec['canonical_affine'] is None:
            require(Q(rec['f'][-1])<0,'negative-leading exclusion')
        else:
            tt=vector(rec['canonical_affine'],x)
            require(ff==20*tt**4+64*tt**3+60*tt**2+16*tt+2,'canonical affine map')
        counts['ode_cases']+=1;counts['coefficient_identities']+=8
    F=vector(c['canonical_quartic'],x)
    require(F==20*x**4+64*x**3+60*x**2+16*x+2,'canonical quartic')
    require(F-2==4*x*(x+1)*(5*x*x+11*x+4),'rational origins factor')
    require(sqroot(Q(41)) is None,'irreducible quadratic origin')
    require(F.substitute(0,x-1)==vector(c['canonical_shift_minus_one'],x),'shift identity')
    require(Q(c['canonical_shift_minus_one'][2])<0,'negative quadratic exclusion')
    require(all(int(Q(v))%4==0 for v in c['canonical_quartic'][1:]),'mod4 obstruction')
    require(valuation(20,2)<4 and valuation(20,5)<4,'fourth-power-free leading coefficient')
    # Uniform equality branch: all symbols here are formal variables, not original input changes.
    U=1+6*x;V=(2*U*U+3*U-3)/2;W=2*(U-1)/3
    require(W*(W-U)*(W-2*U)==Q(8,27)*(U*V-1),'constant-quotient equality')
    tau=(3*x+2)*(4*x+1)*(6*x+1);n=216*x**3+162*x*x+27*x+2
    Z=2*(3*x+2)*(6*x+1)*(36*x*x+21*x+1)*(72*x*x+78*x+23)
    require(54*tau*(tau-1)*(tau-2)==(n-2)*Z,'exact original 3-adic identity')
    # Its nonconstant coefficients vanish modulo3 and its constant is2 modulo3.
    for ex,cv in Z.t.items():
        require(cv.denominator==1 and int(cv)%3==(2 if ex==(0,0,0) else 0),'Z mod3')
    counts['coefficient_identities']+=7
    for row in c['applications']:
        co=row['coefficients'];require(all(type(v) is int and v>=0 for v in co),'nonnegative integer coefficients');require(co[0]==2 and co[-1]>0,'degree/constant')
        p,e=row['p'],row['e'];require(prime(p) and p%2==1 and type(e) is int and e>=1,'odd prime-power base')
        d=len(co)-1;H=sum(co);threshold=(2*(H+2))**(2*d+4);T=p**e;n=eval_int(co,T)
        require(str(T)==row['T'] and str(n)==row['n'] and str(threshold)==row['threshold'],'exact row recovery')
        require(T>=threshold and n%2==0,'threshold/parity')
        require(row['parity_exit']==(n%4!=0),'old parity scope')
        i0=next(i for i in range(1,len(co)) if co[i]);E=e*i0+valuation(co[i0],p)
        require(E==row['source_exponent']==valuation(n-2,p),'complete original source')
        if row['kind']=='quartic':require(d==4,'quartic degree')
        elif row['kind']=='primary_equal':
            r,m=row['extra']['r'],row['extra']['m'];require(r>=2 and m>=1 and d==3*r,'boundary family')
            expect=[0]*(3*r+1);expect[0]=2
            for i,v in [(1,4*m),(r,4*m),(2*r,2),(2*r+1,8*m),(3*r,8*m)]:expect[i]+=v
            require(co==expect,'boundary coefficients');require(row['extra']['V']==[1]+[0]*(2*r-1)+[2],'Eisenstein factor')
            require(3*(2*r)==2*d,'true equality boundary')
        else:raise ValueError('unproved application type')
        counts['row_applications']+=1
    for row in c['cubic_carries']:
        u=int(row['u']);n=216*u**3+162*u*u+27*u+2;tau=(3*u+2)*(4*u+1)*(6*u+1);j=min(tau,n-tau);E=valuation(n-2,3)
        require(u>0 and str(n)==row['n'] and str(j)==row['j'] and E==row['E']>=4,'original exception recovery')
        require(row['layers']==[E-2,E-1,E],'exact three layers')
        require(valuation(tau*(tau-1)*(tau-2),3)==E-3,'complete deficit')
        for h in row['layers']:require(n//3**h-j//3**h-(n-j)//3**h==1,'original carry')
        require(vp_binomial(n,3,3)==E-1 and vp_binomial(n,j,3)>=3,'original common 3')
        counts['cubic_carries']+=1
    weak=c['weak_model'];T=weak['T'];t=2*T;n=20*t**4+64*t**3+60*t*t+16*t+2;s=t*(3*t+5)*(10*t*t+12*t+1)//2;j=min(s,n-s);g=math.gcd(n,j);odd=n//g
    while odd%2==0:odd//=2
    require(prime(T) and T>512 and n%4==2,'weak model scope')
    require(str(n)==weak['n'] and str(j)==weak['j'] and str(g)==weak['g'] and str(odd)==weak['alpha_odd'],'weak recovery')
    require(weak['NC3'] is False and odd not in (1,3),'not NC3')
    require(vp_binomial(n,j,T)==0 and vp_binomial(n,3,T)>0,'weak original base carry')
    require(weak['common_prime']==3 and weak['common_valuations']==[vp_binomial(n,3,3),vp_binomial(n,j,3)] and min(weak['common_valuations'])>0,'weak original common witness')
    return {'status':'PASS','checker':'A-sparse-coefficients',**counts}

def main():
    pa=argparse.ArgumentParser();pa.add_argument('certificate',nargs='?',default=str(ROOT/'certificates'/'round7.json'));args=pa.parse_args();print(json.dumps(verify(json.loads(Path(args.certificate).read_text())),indent=2))
if __name__=='__main__':main()
