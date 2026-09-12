"""Primary exact interval checker, with no discovery/continued-fraction library."""
from pathlib import Path
from math import isqrt
import json
from exact_logs import check_log_certificate
ROOT=Path(__file__).resolve().parents[1]
CASES=[(13,3,195,61,14,1),(5,3,35,29,6,1),(2,-3,7,-6,8,3),(10,-15,35,-10,6,1)]

def verify(data):
    assert data['M']==10**30 and data['V']==128
    cs=[]; keys=[]
    for A,B,D,E,a,b in CASES:
        assert a*a-D*b*b==1
        assert 4<a<32 and (32-a)**2>D*b*b and abs(E)<64
        seeds=[]
        for X in range(133):
            v=X*X-E
            if v<0 or v%D:continue
            Y=isqrt(v//D)
            if D*Y*Y!=v:continue
            xp=a*X-D*b*Y;yp=a*Y-b*X
            if (yp<0 if E>0 else xp<0):
                seeds.append([X,Y]);keys.append((A,B,D,E,a,b,X,Y))
        cs.append(dict(A=A,B=B,D=D,E=E,unit=[a,b],seeds=seeds))
    assert data['cases']==cs
    records=data['log_certificates']
    assert [(r['A'],r['B'],r['D'],r['E'],*r['unit'],*r['seed']) for r in records]==keys
    for r in records:
        info=check_log_certificate(r['D'],r['unit'],r['seed'],r['A'],r['p'],r['q'],r['nearest_mu'],data['M'],data['V'])
        assert info==r['checked_margin']
    out=[]
    for A,B,D,E,a,b in CASES:
        solutions=[]
        for v in range(13,128):
            X=A*(1<<v)+B;z=X*X-E
            if z>=0 and z%D==0 and D*isqrt(z//D)**2==z:solutions.append(v)
        assert solutions==[]
        out.append(dict(A=A,B=B,D=D,E=E,v_min=13,v_max=127,solutions=solutions))
    assert data['terminal']==out
    assert 12*96**11*4*48<10**26
    assert 10**30//2-5>90*10**26
    return {'status':'PASS','seed_count':len(keys),'exponent_bound':'v<10^30 -> v<128','terminal_checks':460,'interval_method':'640-bit atanh series, integer outward rounding'}
if __name__=='__main__':
    o=verify(json.loads((ROOT/'outputs/pell-certificate.json').read_text()))
    (ROOT/'outputs/pell-primary-check.json').write_text(json.dumps(o,indent=2)+'\n');print(json.dumps(o))
