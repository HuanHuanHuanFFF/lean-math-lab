#!/usr/bin/env python3
"""Standard-library checker; no imports from the builder or from SymPy.

Recomputes the finite domain via divisor pairs and the unreduced quadratic.
Also checks exact multivariate identities, positive coefficient witnesses,
and integer Bezout identities for the infinite coefficient-only obstruction.
"""
from __future__ import annotations
import argparse, copy, json, math
from fractions import Fraction as F
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]

class Poly:
    def __init__(self, n, terms=None):
        self.n=n; self.t={e:F(c) for e,c in (terms or {}).items() if c}
    @classmethod
    def const(cls,c,n=1): return cls(n,{(0,)*n:F(c)})
    @classmethod
    def var(cls,i=0,n=1):
        e=[0]*n;e[i]=1;return cls(n,{tuple(e):F(1)})
    def coerce(self,o):
        if not isinstance(o,Poly): return Poly.const(o,self.n)
        if o.n!=self.n: raise ValueError('incompatible rings')
        return o
    def __add__(self,o):
        o=self.coerce(o);t=dict(self.t)
        for e,c in o.t.items():t[e]=t.get(e,F(0))+c
        return Poly(self.n,t)
    __radd__=__add__
    def __neg__(self):return Poly(self.n,{e:-c for e,c in self.t.items()})
    def __sub__(self,o):return self+-self.coerce(o)
    def __rsub__(self,o):return self.coerce(o)+-self
    def __mul__(self,o):
        o=self.coerce(o);t={}
        for e,c in self.t.items():
            for f,d in o.t.items():
                k=tuple(a+b for a,b in zip(e,f));t[k]=t.get(k,F(0))+c*d
        return Poly(self.n,t)
    __rmul__=__mul__
    def __pow__(self,k):
        if not isinstance(k,int) or k<0:raise ValueError('nonnegative exponent required')
        ans=Poly.const(1,self.n);base=self
        while k:
            if k&1:ans=ans*base
            base=base*base;k//=2
        return ans
    def __truediv__(self,k):
        if isinstance(k,Poly):raise ValueError('only scalar division allowed')
        return self*F(1,k)
    def coefficients(self):
        assert self.n==1
        deg=max((e[0] for e in self.t),default=0)
        return [str(self.t.get((i,),F(0))) for i in range(deg+1)]
    def shift(self,k):
        ans=Poly.const(0);v=Poly.var()+k
        for c in reversed(self.coefficients()):ans=ans*v+F(c)
        return ans
    def value(self,k):
        ans=F(0)
        for c in reversed(self.coefficients()):ans=ans*k+F(c)
        return ans

def from_coefficients(seq):return Poly(1,{(i,):F(c) for i,c in enumerate(seq)})
def require(ok,msg):
    if not ok:raise ValueError(msg)

def unitary_by_pairs(n):
    ans=set()
    for q in range(1,math.isqrt(n)+1):
        if n%q==0 and math.gcd(q,n//q)==1:ans.update((q,n//q))
    return sorted(ans)

def check_identities():
    d,k,a,m,g,U=[Poly.var(i,6) for i in range(6)]
    E=a*m;W=E+2*U*g*g;M=d*d+2*k*d-2*k*k;B=d*d+k*d-3*k*k
    Qbar=M*W*W-k*(d+2*k)*W*E+k*k*E*E
    identities={
      'linear_row_congruence':d*W+k*E-(d+k)*E-2*d*U*g*g,
      'quadratic_row_congruence':Qbar-B*E*E-2*U*g*g*(E*(2*M-k*(d+2*k))+2*M*U*g*g),
      'positive_quadratic_difference':Qbar-B*W*W-k*(W-E)*((d+k)*W-k*E),
      'homogeneous_factorization':(d*W+k*E)*Qbar-(d*M*W**3-2*k**3*W*W*E-2*k**3*W*E*E+k**3*E**3),
      'consecutive_factor_identity':(d+k)*B-d*M+3*k**3,
      'B_discriminant13':4*B-(2*d+k)**2+13*k*k,
      'M_upper':3*d*d-2*M-(d-2*k)**2,
      'B_upper':3*d*d-2*B-((d-k)**2+5*k*k),
    }
    for name,f in identities.items():require(not f.t,'identity '+name)
    return list(identities)

def check_finite(records):
    expected=[];squares=0;admissible=0
    for kap,d,q0 in [(3,5,13),(3,5,1),(3,7,1)]:
        M=d*d+2*kap*d-2*kap*kap
        for a in unitary_by_pairs(d):
            for m in unitary_by_pairs(M):
                E=a*m
                Dfull=(d+2*kap)**2*E**2-4*M*(E**2-q0*m**3)
                # m² is retained in this independent root computation.
                red=Dfull//(m*m);require(Dfull==m*m*red,'D scaling')
                roots=[]
                if Dfull>=0:
                    w=math.isqrt(Dfull)
                    if w*w==Dfull:
                        squares+=1
                        roots=sorted(set(F((d+2*kap)*E+sgn*w,2*M) for sgn in (-1,1)))
                for v in roots:
                    if v.denominator==1:
                        V=v.numerator;W=kap*V
                        if W>E and W%2==1 and math.gcd(V,E)==1:admissible+=1
                expected.append({'kappa':kap,'d':d,'Q0':q0,'a':a,'m':m,
                   'D_reduced':red,'floor_sqrt':math.isqrt(red) if red>=0 else None,
                   'roots_V':[str(v) for v in roots]})
    expected.sort(key=lambda t:(t['kappa'],t['d'],t['Q0'],t['a'],t['m']))
    require(records==expected,'complete finite domain or roots mismatch')
    require(admissible==0,'unexpected admissible primitive coordinate')
    return {'states':len(expected),'square_discriminants':squares,'admissible_primitive_coordinates':admissible}

def check_main_positive(data):
    specs=[(1,1,3),(1,3,7),(3,1,7)];require(len(data)==3,'positive proof count')
    for item,(kap,c,shift) in zip(data,specs):
        require((item['kappa'],item['c'],item['shift'])==(kap,c,shift),'positive proof spec')
        d=Poly.var()+shift;M=d*d+2*kap*d-2*kap*kap;B=d*d+kap*d-3*kap*kap
        coeff=(4*B**4-kap**2*c**4*M**3).coefficients()
        require(item['coefficients']==coeff,'positive polynomial mismatch')
        require(all(F(v)>0 for v in coeff),'nonpositive coefficient')
    return len(specs)

def check_boundary(z):
    r=Poly.var();d=(r**4-7*r*r+3*r+9)/3;p=r*r-3;q=r*r+r-3
    M=d*d+2*d-2;B=d*d+d-3
    m=(r**6-11*r**4+6*r**3+40*r*r-24*r-39)/9
    b=(r**6-r**5-10*r**4+13*r**3+27*r*r-30*r-27)/9
    Q=13*q
    require(not (M-p*m).t and not (B-q*b).t,'simultaneous factorization')
    require(z['m_coefficients']==m.coefficients() and z['b_coefficients']==b.coefficients(),'boundary coefficient formulas')
    specs=[('M',p,9*m,27),('B',q,9*b,783)]
    require(len(z['bezout'])==2,'Bezout count')
    for item,(name,P,R,K) in zip(z['bezout'],specs):
        require(item['name']==name and item['constant']==K,'Bezout spec')
        require(all(F(v).denominator==1 for v in item['U']+item['V']),'noninteger Bezout coefficient')
        value=from_coefficients(item['U'])*P+from_coefficients(item['V'])*R-K
        require(not value.t,'Bezout identity '+name)
    expr={
       'M_side_m_gt1':m-1,'M_side_p_gt1':p-1,'B_side_Q_gt1':Q-1,
       'B_side_remainder_gt1':B-Q,'old_SHARP':27*d*M*Q**2-512*B**2,
       'new_Q_norm':m**3-4*B*Q**3,'old_NEG_a':m**3-2*B**2,
       'old_NEG_b':5*p**3-8*d,'new_complement_height':27*B**3-32*d*d*Q**3,
       'old_Q_height':27*Q**2-512*(d-1)}
    require(z['positive_shift']==100 and set(z['positive'])==set(expr),'boundary positivity domain')
    for name,f in expr.items():
        coeff=f.shift(100).coefficients();require(z['positive'][name]==coeff,'boundary positivity polynomial '+name)
        require(all(F(v)>0 for v in coeff),'boundary positive sign '+name)
    r0=z['r0'];period=z['period']
    require((r0,period)==(1102,4524),'specified infinite progression')
    require(r0>=100 and period>0,'unbounded positive progression')
    for mod,res in [(12,10),(13,10),(29,0)]:
        require(r0%mod==res and period%mod==0,'progression congruence')
    # Evaluations modulo 13 use the invertible denominator 3.
    require(((10**4-7*10**2+3*10+9)*pow(3,-1,13))%13==6,'B ramified residue')
    require((10**2+10-3)%13!=0,'13 is not already in q')
    require(783==27*29,'resultant support')
    samples=[]
    for i in (0,1,2,10):
        R=r0+period*i
        D=d.value(R);MM=M.value(R);BB=B.value(R);mm=m.value(R);pp=p.value(R);qq=q.value(R);QQ=Q.value(R)
        require(all(v.denominator==1 for v in (D,MM,BB,mm,pp,qq,QQ)),'sample integrality')
        D,MM,BB,mm,pp,qq,QQ=map(int,(D,MM,BB,mm,pp,qq,QQ))
        require(MM==mm*pp and math.gcd(mm,pp)==1,'sample M unitary split')
        require(BB%QQ==0 and math.gcd(QQ,BB//QQ)==1,'sample B unitary split')
        require(1<QQ<BB,'sample proper B split')
        h=QQ.bit_length()-1;s=6*h+1;n=QQ*(1<<s)
        require(n%9==1 and math.gcd(BB,n)==QQ,'partial original-row model')
        require(QQ**4<n and n*n<QQ**15,'partial row height')
        require((mm*mm+1)%13==2 and QQ%13==0,'decisive failure of full Z=1 norm')
        samples.append({'index':i,'r':R,'d':D,'candidate_Q':QQ,'M_T':pp,'M_epsilon':mm,
                        'partial_g':QQ,'partial_n':n,'binary_exponent':s,'norm_rhs_mod13':2})
    return {'factorizations':2,'integer_bezout_identities':2,'positive_polynomials':len(expr),
            'progression':{'r0':r0,'period':period},'samples':samples,
            'warning':'Infinite coefficient/partial (n,g) model; no j. Its Z=1 norm fails modulo 13, so it is not NC3.'}

def verify(data):
    require(data['version']==1,'version')
    require(243<32*8 and 729<64*12 and 3**15<2**24,'height scalar inequalities')
    return {'identities':check_identities(),'main_positive_polynomials':check_main_positive(data['main_positive']),
            'finite':check_finite(data['finite']),'boundary':check_boundary(data['boundary'])}

def negative_tests(data):
    rejected=[]
    mutations={
      'missing_finite_state':lambda d:d['finite'].pop(),
      'wrong_primitive_block':lambda d:d['finite'][0].update(a=2),
      'wrong_discriminant':lambda d:d['finite'][0].update(D_reduced=d['finite'][0]['D_reduced']+1),
      'invented_root':lambda d:d['finite'][0].update(roots_V=['7']),
      'changed_positive_constant':lambda d:d['main_positive'][0]['coefficients'].__setitem__(0,'1'),
      'truncated_positive_polynomial':lambda d:d['main_positive'][1]['coefficients'].pop(),
      'bad_bezout_constant':lambda d:d['boundary']['bezout'][0].update(constant=1),
      'bad_infinite_progression':lambda d:d['boundary'].update(period=2262),
      'bad_boundary_polynomial':lambda d:d['boundary']['positive']['new_Q_norm'].__setitem__(0,'-1'),
    }
    for name,mutate in mutations.items():
        changed=copy.deepcopy(data);mutate(changed)
        try:verify(changed)
        except (ValueError,KeyError,TypeError,AssertionError):rejected.append(name)
        else:raise ValueError('bad certificate accepted: '+name)
    return rejected

def main():
    p=argparse.ArgumentParser();p.add_argument('--certificate',type=Path,default=ROOT/'certificates'/'certificate.json');p.add_argument('--output',type=Path,required=True);p.add_argument('--negative-tests',action='store_true');args=p.parse_args()
    data=json.loads(args.certificate.read_text());out=verify(data)
    if args.negative_tests:out['rejected_mutations']=negative_tests(data)
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'identities':len(out['identities']),'finite':out['finite'],'negative_tests':len(out.get('rejected_mutations',[]))}))
if __name__=='__main__':main()
