"""Discovery of small certificates; mpmath is not part of the trust boundary."""
from pathlib import Path
from math import isqrt
import json
import mpmath as mp
from exact_logs import check_log_certificate
ROOT=Path(__file__).resolve().parents[1]
M=10**30; V=128
CASES=[(13,3,195,61,14,1),(5,3,35,29,6,1),(2,-3,7,-6,8,3),(10,-15,35,-10,6,1)]

def seeds_exact(D,E,a,b):
    assert a*a-D*b*b==1 and a>4 and (32-a)**2>D*b*b and a<32
    assert abs(E)<64
    seeds=[]
    for X in range(133):
        z=X*X-E
        if z<0 or z%D: continue
        Y=isqrt(z//D)
        if D*Y*Y!=z:continue
        assert X+Y>0
        # u>=sqrt(|E|) holds for X,Y>=0; strict upper endpoint follows
        # by applying epsilon^-1 and comparing the appropriate coordinate.
        xp,yp=a*X-D*b*Y,a*Y-b*X
        if (yp<0 if E>0 else xp<0):seeds.append([X,Y])
    return seeds

mp.mp.dps=160
records=[]
for A,B,D,E,a,b in CASES:
    seeds=seeds_exact(D,E,a,b)
    eps=mp.mpf(a)+b*mp.sqrt(D); tau=mp.log(eps)/mp.log(2)
    for seed in seeds:
        x,y=seed; mu=mp.log((mp.mpf(x)+y*mp.sqrt(D))/(2*A))/mp.log(2)
        pp,p=0,1;qq,q=1,0;t=tau
        for ix in range(400):
            ai=int(mp.floor(t));pp,p=p,ai*p+pp;qq,q=q,ai*q+qq
            t=1/(t-ai)
            if q<100*M:continue
            bi=int(mp.nint(q*mu))
            try: info=check_log_certificate(D,[a,b],seed,A,p,q,bi,M,V)
            except AssertionError:continue
            records.append({'A':A,'B':B,'D':D,'E':E,'unit':[a,b],'seed':seed,'p':p,'q':q,'nearest_mu':bi,'checked_margin':info});break
        else:raise RuntimeError('No small log certificate found')
terminal=[]
for A,B,D,E,a,b in CASES:
    sols=[]
    for v in range(13,V):
        X=A*(1<<v)+B; z=X*X-E
        if z%D==0 and z>=0 and isqrt(z//D)**2==z//D:sols.append(v)
    assert not sols
    terminal.append({'A':A,'B':B,'D':D,'E':E,'v_min':13,'v_max':V-1,'solutions':sols})
out={'M':M,'V':V,'cases':[{'A':A,'B':B,'D':D,'E':E,'unit':[a,b],'seeds':seeds_exact(D,E,a,b)} for A,B,D,E,a,b in CASES], 'log_certificates':records,'terminal':terminal}
p=ROOT/'outputs/pell-certificate.json';p.write_text(json.dumps(out,indent=2)+'\n');print('saved',p,'seeds',len(records),'terminal tests',4*(V-13));print([(r['D'],r['seed'],len(str(r['q'])),r['checked_margin']['delta_lower_1e6']) for r in records])
