"""Independent checker: another logarithm series and seed enumeration direction.

The publication's infinite lower bound is a paper input, not established by
this script. This script checks every finite certificate needed after it.
"""
from fractions import Fraction as F
from functools import lru_cache
from pathlib import Path
import json

ROOT=Path(__file__).resolve().parents[1]
S=1<<384
T=420
EXPECTED=[(13,3,195,61,14,1),(5,3,35,29,6,1),(2,-3,7,-6,8,3),(10,-15,35,-10,6,1)]
M=10**30; V=128

def sqrt_int(x):
    assert x>=0
    if x==0:return 0
    z=1<<((x.bit_length()+1)//2)
    while True:
        y=(z+x//z)//2
        if y>=z:
            assert z*z<=x<(z+1)**2
            return z
        z=y

def up(x,y):return (x+y-1)//y

def small_log(a,b):
    assert b<=a<=2*b
    # log(a/b) = sum ((a-b)/a)^k/k; all terms nonnegative.
    l=S*(a-b)//a; h=up(S*(a-b),a)
    pl=ph=S; lo=hi=0
    for k in range(1,T+1):
        pl=pl*l//S; ph=up(ph*h,S)
        lo+=pl//k; hi+=up(ph,k)
    hi+=up(S,(T+1)*(1<<T))
    return lo,hi

@lru_cache(None)
def l2():return small_log(2,1)

@lru_cache(None)
def logq(a,b=1):
    assert a>0 and b>0
    k=0
    while a>=2*b: b*=2;k+=1
    while a<b:a*=2;k-=1
    lo,hi=small_log(a,b); u,v=l2()
    return (lo+k*u,hi+k*v) if k>=0 else (lo+k*v,hi+k*u)

@lru_cache(None)
def log_quad(x,y,D):
    z=sqrt_int(D*S*S)
    return logq(x*S+y*z,S)[0],logq(x*S+y*(z+1),S)[1]

def div(iv,jv):
    vals=[F(x,y) for x in iv for y in jv]
    return min(vals),max(vals)

def seeds(D,E,a,b):
    out=[]
    for Y in range(133):
        z=D*Y*Y+E
        if z<0:continue
        X=sqrt_int(z)
        if X*X!=z:continue
        xp=a*X-D*b*Y;yp=a*Y-b*X
        if (yp<0 if E>0 else xp<0):out.append([X,Y])
    return sorted(out)

def verify(data):
    assert data['M']==M and data['V']==V
    expected_cases=[dict(A=A,B=B,D=D,E=E,unit=[a,b],seeds=seeds(D,E,a,b)) for A,B,D,E,a,b in EXPECTED]
    assert data['cases']==expected_cases, 'Pell cases/seeds are not complete'
    exp_keys=[(A,B,D,E,a,b,*ss) for A,B,D,E,a,b in EXPECTED for ss in seeds(D,E,a,b)]
    got_keys=[(r['A'],r['B'],r['D'],r['E'],*r['unit'],*r['seed']) for r in data['log_certificates']]
    assert got_keys==exp_keys, 'missing/duplicate seed certificate'
    cert_results=[]
    for r in data['log_certificates']:
        A,D=r['A'],r['D'];x,y=r['seed'];a,b=r['unit']
        p,q,bi=r['p'],r['q'],r['nearest_mu']
        assert isinstance(p,int) and isinstance(q,int) and q>0 and isinstance(bi,int)
        lu=log_quad(a,b,D);lr=log_quad(x,y,D);lc=logq(2*A)
        tau=div(lu,l2()); mu=div((lr[0]-lc[1],lr[1]-lc[0]),l2())
        err=max(abs(q*tau[0]-p),abs(q*tau[1]-p))
        left,right=q*mu[0]-bi,q*mu[1]-bi
        assert F(-1,2)<left<=right<F(1,2)
        assert left>0 or right<0
        delta=min(abs(left),abs(right))-M*err
        assert delta>F(1,100)
        assert (1<<V)*delta>128*q
        # Same displayed margin, independently reconstructed intervals.
        assert r['checked_margin']['delta_lower_1e6']==int(delta*10**6)
        assert r['checked_margin']['terminal_V']==V
        cert_results.append({'D':D,'seed':[x,y],'delta_lower_1e6':int(delta*10**6)})
    terminals=[]
    for A,B,D,E,a,b in EXPECTED:
        sols=[]
        for v in range(13,V):
            X=A*(1<<v)+B
            val=X*X-E
            if val>=0 and val%D==0 and sqrt_int(val//D)**2==val//D:sols.append(v)
        assert not sols
        terminals.append(dict(A=A,B=B,D=D,E=E,v_min=13,v_max=V-1,solutions=sols))
    assert data['terminal']==terminals
    # Coarse paper-height substitutions checked as exact integer inequalities.
    assert 12*96**11*4*48<10**26
    assert M//2-5>90*10**26
    assert (32-14)**2>195 and (32-8)**2>9*7 and (32-6)**2>35
    return {'status':'PASS','complete_seed_count':len(exp_keys),'terminal_exponents_checked':4*(V-13),'interval_method':'independent 384-bit log(1/(1-u)) series','certificates':cert_results}

if __name__=='__main__':
    p=ROOT/'outputs/pell-certificate.json'
    result=verify(json.loads(p.read_text()))
    (ROOT/'outputs/pell-independent-check.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result))
