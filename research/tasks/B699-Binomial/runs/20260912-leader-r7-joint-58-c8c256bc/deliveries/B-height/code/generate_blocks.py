"""Exact periodic certificates. Discovery is not imported by this module."""
from pathlib import Path
from math import gcd,isqrt
import argparse,json
SPECS=[(17,'outer',408,[3,5,7,13,103,137,241,307,409,953,2857]),
       (25,'outer',1500,[3,7,11,13,31,41,61,101,151,251,331,601,751,1201,1801,2251]),
       (11,'middle',330,[3,23,67,89]),(13,'middle',156,[53,79]),
       (17,'middle',408,[13,103,137,409,3061]),(19,'middle',342,[7, 571]),
       (25,'middle',1500,[3,7,13,61,101]),(27,'middle',486,[163,487])]

def vp(a,p):
    assert a>0
    k=0
    while a%p==0:a//=p;k+=1
    return k

def ell9(a):return 3 if a%9 in (4,5,7,8) else 1

def model(C,side,high):
    rows=[]
    for ell in (1,3):
        if C%3==0 and ell==3:continue
        w=ell*C; stop=(w+1)//2 if high and side=='middle' else w
        for h in range(1,stop):
            if gcd(C,h)!=1:continue
            if high:
                if side=='outer': ok=any((w*y*y-w-8*h)%64==0 for y in range(1,64,2))
                else:ok=any((w*y*y+h)%64==0 for y in range(64))
                if not ok:continue
            if side=='outer': odds={m for m in range(1,h+1,2) if h%m==0}
            else:odds={m for m in range(1,isqrt(h)+1,2) if h%(m*m)==0}
            if ell==1:odds|={3*m for m in list(odds) if m%3}
            rows.extend((ell,h,m) for m in sorted(odds))
    return rows

def low_record(C,side):
    states=[];equations=[]
    for ell,h,m in model(C,side,False):
        w=C*ell
        for v in range(2,9):
            n=m*(1<<v)
            if n<8 or ell9(n)!=ell or (n-2)%C:continue
            if (h*(n-1)*(n-2)-2*w)%(C*C):continue
            states.append([ell,h,m,v])
            rhs=4*h*(n-1)*(n-2)+w if side=='outer' else (w-2*h)*n*n+6*h*n-4*h
            if rhs<0 or rhs%w:continue
            y=isqrt(rhs//w)
            if w*y*y==rhs:equations.append([ell,h,m,v,n,y])
    return dict(states=states,equations=equations)

def make(C,side,T,mods):
    for d in [9,C*C]+mods:assert pow(2,T,d)==1,(C,T,d)
    roots={(w,p):{w*y*y%p for y in range(p)} for w in [C,3*C] for p in mods}
    powers={d:[pow(2,r,d) for r in range(T)] for d in [9,C*C]+mods}
    high=[]
    for ell,h,m in model(C,side,True):
        w=ell*C
        for r in range(T):
            a=m*powers[9][r]%9;nC=m*powers[C*C][r]%(C*C)
            if ell9(a)!=ell or (nC-2)%C:continue
            if (h*(nC-1)*(nC-2)-2*w)%(C*C):continue
            for p in mods:
                n=m*powers[p][r]%p
                rhs=(4*h*(n-1)*(n-2)+w)%p if side=='outer' else ((w-2*h)*n*n+6*h*n-4*h)%p
                if rhs not in roots[w,p]:high.append([ell,h,m,r,p]);break
            else:raise AssertionError(('unexcluded',C,side,ell,h,m,r))
    return dict(C=C,side=side,period=T,high_v_min=9,model_high=model(C,side,True),high=high,low=low_record(C,side))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('outdir');a=ap.parse_args();o=Path(a.outdir);o.mkdir(parents=True,exist_ok=True)
    data={'version':1,'specifications':[[c,s,t] for c,s,t,_ in SPECS],'blocks':[make(*sp) for sp in SPECS]}
    (o/'block_certificates.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
    print('GENERATED',[(r['C'],r['side'],len(r['high']),len(r['low']['states']),r['low']['equations']) for r in data['blocks']])
if __name__=='__main__':main()
