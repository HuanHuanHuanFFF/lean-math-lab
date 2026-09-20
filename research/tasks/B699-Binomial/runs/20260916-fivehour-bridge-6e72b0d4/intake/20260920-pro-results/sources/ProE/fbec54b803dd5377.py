"""Exact interval certificates, each uniform for every P>2h, Q<P<4Q.
This does not enumerate P or Q. Only the finite h boundary left by the
paper theorem h>=33 is covered here.
"""
from fractions import Fraction as F
import json
from pathlib import Path

def f(h,t):
    A=F(h-1,2)
    return 2*t*(A-t)**2-(h-2*t)**2

def df(h,t):
    A=F(h-1,2)
    return 2*(A-t)*(A-3*t)+4*(h-2*t)

def R(h,t): return 4-2*t+(t+2*t*t)/h

def G(h,t): return 1-3*t/h+(2*t*t-t)/(h*h)

def bisect(h,shift):
    lo,hi=F(2),F(2*h*h,(h-4)**2)
    assert f(h,lo)+shift<0 and f(h,hi)+shift>0
    for _ in range(48):
        mid=(lo+hi)/2
        if f(h,mid)+shift<0: lo=mid
        else:hi=mid
    return lo,hi

def generate():
    out=[]
    for h in range(15,33,2):
        K=F(2*h*h,(h-4)**2)
        assert K<F(h+1,3) and df(h,K)>0
        lo=bisect(h,F(1,8*h))[0]
        hi=bisect(h,F(0))[1]
        record={'h':h,'K':str(K),'lower':str(lo),'upper':str(hi)}
        vals={
            'monotone_f_lower':df(h,K),
            'left_sign_margin':-(f(h,lo)+F(1,8*h)),
            'right_sign_margin':f(h,hi),
            'R_decreasing_margin':2-(1+4*hi)/h,
            'R_lower':R(h,hi),
            'R_upper':R(h,lo)+F(1,4*h**3),
            'G_decreasing_margin':F(3,h)-(4*hi-1)/(h*h),
            'G_lower':G(h,hi),'G_upper':G(h,lo),
        }
        assert vals['R_decreasing_margin']>0 and vals['G_decreasing_margin']>0
        assert 0<vals['R_lower']<vals['R_upper']<vals['G_lower']<vals['G_upper']<1
        assert all(vals[k]>0 for k in ['left_sign_margin','right_sign_margin','monotone_f_lower'])
        record['exact_bounds']={k:str(v) for k,v in vals.items()}
        out.append(record)
    return {'scope':'h odd 15..31, ALL Q<P<4Q and original exact recovery','method':'rational interval certificates, no P/Q enumeration','entries':out}
if __name__=='__main__':
    data=generate();root=Path(__file__).resolve().parents[1]
    (root/'certificates/low-root-small-h.json').write_text(json.dumps(data,indent=2))
    print('PASS_EXACT_INTERVALS',len(data['entries']))
    for a in data['entries']:
        b=a['exact_bounds']
        # Display rounding is not used by the exact proof/checker.
        print(a['h'],'R_hi<',round(float(F(b['R_upper'])),9),'G_lo>',round(float(F(b['G_lower'])),9))
