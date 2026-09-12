"""Construct the complete 22-state C=9 certificate. No search in n or j."""
import argparse
from math import gcd
from exact import require,write_json

def generate():
    records=[]
    for mode in ['outer','middle']:
        for h in range(1,9):
            if gcd(h,9)!=1:continue
            if mode=='middle' and 2*h>=9:continue
            for m in range(1,h+1,2):
                if h%m:continue
                if mode=='middle' and h%(m*m):continue
                for r in range(108):
                    n=m*pow(2,r,81)%81
                    if n%9!=2 or (h*(n-1)*(n-2)-18)%81:continue
                    witnesses=[]
                    for p in [5,13,19,37]:
                        t=m*pow(2,r,p)%p
                        rhs=((9-2*h)*t*t+6*h*t-4*h)%p if mode=='middle' else (4*h*(t-1)*(t-2)+9)%p
                        if rhs not in {9*y*y%p for y in range(p)}:
                            witnesses.append((p,rhs))
                    require(witnesses,'uncovered modular state')
                    p,rhs=witnesses[0]
                    records.append(dict(mode=mode,h=h,m=m,residue=r,modulus=p,rhs=rhs))
    require(len(records)==22,'unexpected discovery count')
    return dict(C=9,period=108,normalizing_modulus=81,moduli=[5,13,19,37],records=records)

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args()
    data=generate();write_json(a.out,data)
    print('generated',len(data['records']),'complete modular states')
