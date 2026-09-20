"""Failure diagnostics. None is a proof of an NC3 family or counterexample."""
from fractions import Fraction as F
from math import comb,gcd
from pathlib import Path
import json

def factor(n):
    out={};p=2
    while p*p<=n:
        while n%p==0:out[p]=out.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:out[n]=out.get(n,0)+1
    return out

def modular():
    general=[]
    for M in [16,32,64,128]:
        sols=[]
        for P in range(1,M,8):
            for Q in range(1,M,2):
                nu=(-2*pow(P*Q,-1,M))%M
                for v in range(2,M,2):
                    if (v*nu*nu-P*Q*Q+1)%M:continue
                    h=(P+2*nu)*pow(Q,-1,M)%M
                    if (P-Q-h*v)%M:continue
                    sols.append([P,Q,nu,v,h])
        general.append({'modulus':M,'count':len(sols),'first_three':sols[:3]})
    h13=[]
    for M in [16,32,64,128,256,512]:
        count=0;first=None
        for Q in range(1,M,2):
            for V in range(M):
                P=Q+26*V;nu=6*Q-13*V
                if nu%4!=2:continue
                if (2*V*nu*nu-P*Q*Q+1)%M:continue
                if (P*Q*nu+2)%M:continue
                count+=1
                if first is None:first=[Q,V,P%M,nu%M]
        h13.append({'modulus':M,'count':count,'first':first})
    return {'role':'finite falsification of hoped-for immediate modular obstruction; no all-moduli or NC inference','general':general,'h13':h13}

def weak_integer():
    P,Q,nu,h,v=89,3,20,43,2
    n=P*Q*nu+2;sig=(P+nu)*Q*Q;tau=P*(Q*Q+v*nu)
    assert P==Q+h*v and h*Q==P+2*nu and v*nu*nu==P*Q*Q-1
    assert n==sig+tau
    j=min(sig,tau);gg=gcd(n,j);B=comb(n,3);Cg=gcd(B,comb(n,j))
    fs=factor(Cg)
    return {'role':'exact integer recovery shell, NOT NC3','P':P,'Q':Q,'nu':nu,'h':h,'v':v,
            'n':n,'j':j,'k':n-j,'g':gg,'alpha':n//gg,'n_factorization':factor(n),
            'binom_n_3':B,'binomial_common_gcd':Cg,'all_common_odd_primes':[p for p in fs if p%2],
            'failures':['Q<11','4 does not divide n','alpha is neither a power of two nor three times a power of two','v2(nu)=2, not the true minimal-branch value 1','canonical complete K does not reproduce the alleged P,Q,H']}

def h13_real_shell():
    # An exact algebraic root, not a floating-point counterexample.
    h=13;Q=101
    def f(x):return (x-1)*(h-x)**2-4*h*x+F(4*h,Q**3)
    l,u=F(168,100),F(169,100)
    assert f(l)<0<f(u)
    # f'(x)>0 on this interval: 3x²-54x+143 is decreasing here.
    assert 3*u*u-54*u+143>0
    for _ in range(60):
        mid=(l+u)/2
        if f(mid)<0:l=mid
        else:u=mid
    # N/P^3 = (h-x)/(2x²)+2/(x³ Q³), strictly decreasing here.
    def N(x):return (h-x)/(2*x*x)+F(2,Q**3)/(x**3)
    # tau/P³ = 1/x² + (x-1)(h-x)/(2h x²).
    def J(x):return 1/(x*x)+(x-1)*(h-x)/(2*h*x*x)
    # Conservative interval arithmetic bounds, independent of monotonicity of J.
    Jlo=1/(u*u)+(l-1)*(h-u)/(2*h*u*u)
    Jhi=1/(l*l)+(u-1)*(h-l)/(2*h*l*l)
    Nlo,Nhi=N(u),N(l)
    assert 1<Nlo<Nhi<2 and 0<Jlo<Jhi<Nlo-1
    # Therefore floors (N,tau,sigma) at the formal modulus P³ are (1,0,1): no carry.
    return {'role':'real algebraic shell refuting uniform p^(3a)-carry from real recovery alone at h=13; NOT integers/prime powers/NC3',
            'h':h,'Q':Q,'root_polynomial':'(x-1)*(13-x)^2-52*x+52/101^3',
            'root_interval':[str(l),str(u)],'n_over_P3_interval':[str(Nlo),str(Nhi)],
            'tau_over_P3_interval':[str(Jlo),str(Jhi)],'formal_floor_triple':[1,0,1],
            'formal_carry':0,'missing':['P integer and prime power','nu and v integer','n=c*2^s','original integer n,j','complete source valuations and actual Psi']}

if __name__=='__main__':
    root=Path(__file__).resolve().parents[1]
    data={'modular_diagnostics':modular(),'integer_weak_shell':weak_integer(),'h13_real_shell':h13_real_shell()}
    (root/'outputs/diagnostics.json').write_text(json.dumps(data,indent=2))
    print(json.dumps({'status':'DIAGNOSTICS_COMPLETE_NO_NC_COUNTEREXAMPLE',
                      'integer_shell_common_odd_primes':data['integer_weak_shell']['all_common_odd_primes'],
                      'h13_real_formal_carry':data['h13_real_shell']['formal_carry']},indent=2))
