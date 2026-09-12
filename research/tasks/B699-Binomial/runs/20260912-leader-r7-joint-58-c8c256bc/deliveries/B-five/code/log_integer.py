"""Independent fixed-point/integer log verifier; no Fraction or generator imports.
Each finite log summand is rounded down individually and the total rounding
loss plus a rational geometric tail is added to the upper endpoint.
"""
import argparse,json
from math import isqrt
from functools import lru_cache
S=1<<480
@lru_cache(None)
def core(a,b):
    assert b<=a<=2*b
    u=a-b;v=a+b;u2=u*u;v2=v*v
    un=u;vn=v;lo=0;terms=120
    for k in range(terms):
        lo += (2*S*un)//((2*k+1)*vn)
        un*=u2;vn*=v2
    num=2*S*un*v2;den=(2*terms+1)*vn*(v2-u2)
    tail=(num+den-1)//den
    return lo,lo+terms+tail

def logratio(a,b):
    assert a>0 and b>0
    k=0
    while a>=2*b:b*=2;k+=1
    while a<b:a*=2;k-=1
    lo,hi=core(a,b);u,v=core(2,1)
    return (lo+k*u,hi+k*v) if k>=0 else (lo+k*v,hi+k*u)

def enclosed_log(a,b,c,d):
    # Argument endpoints a/b and c/d.
    return logratio(a,b)[0],logratio(c,d)[1]

def ratio_bounds(a,b):
    assert a[0]>=0 and b[0]>0
    return ((a[0],b[1]),(a[1],b[0]))
def less(a,b,c,d):return a*d<c*b

def main():
    ap=argparse.ArgumentParser();ap.add_argument('output');args=ap.parse_args()
    T=10**160;r=isqrt(195*T*T)
    assert r*r<=195*T*T<(r+1)*(r+1)
    ln2=logratio(2,1)
    tl,th=ratio_bounds(enclosed_log(14*T+r,T,14*T+r+1,T),ln2)
    p=7881286306482578204223549622013;q=1640051588106112590258959690122
    def near_bounds(lo,hi,z,low_num,low_den,high_num,high_den):
        al,bl=lo;ah,bh=hi
        dl=q*al-z*bl;dh=q*ah-z*bh
        return dl,bl,dh,bh
    dl,bl,dh,bh=near_bounds(tl,th,p,0,1,0,1)
    assert dl*10**31 > -6*bl and dh*10**31<6*bh
    checks=[]
    for x,y,z in [(16,1,335768026229218981514847271425),(29,2,1854306220294895932212290715720)]:
        ml,mh=ratio_bounds(enclosed_log(x*T+y*r,26*T,x*T+y*(r+1),26*T),ln2)
        al,bl,ah,bh=near_bounds(ml,mh,z,0,1,0,1)
        pos=8*al>3*bl and 2*ah<bh
        neg=2*al>-bl and 8*ah<-3*bh
        assert pos or neg
        checks.append({'seed':[x,y],'sign':1 if pos else -1,'certified':True})
    assert 2**96*6*8<10**31
    assert 4*q<27**22
    assert 384*96**11 <2**82
    assert 96*2**82 < 2**96
    out={'method':'independent rounded integer summands; 120 terms, 480 bit scale; decimal sqrt enclosure',
         'shifts':checks,'error_bound':'6/10^31','distance_lower':'3/8','index_upper_exclusive':22,'status':'PASS'}
    open(args.output,'w').write(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print('PASS integer intervals: 2 shifts, no floating point')
if __name__=='__main__':main()
