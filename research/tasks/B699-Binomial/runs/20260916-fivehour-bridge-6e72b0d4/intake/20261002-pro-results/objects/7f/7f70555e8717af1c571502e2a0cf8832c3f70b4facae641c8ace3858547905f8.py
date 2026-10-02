#!/usr/bin/env python3
"""Check an actual n,j against this round's proved consumers.
No file mutation; a residual full-source certificate certifies existence of an
actual source prime. Supplying --prime exhibits and checks a specific witness.
"""
import argparse,json
from math import gcd,isqrt
S={252:1,704:1,850:3,954:1,1100:1,1552:3}

def rough(x):
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def val_choose(n,j,p):
    total=0;Q=p
    while Q<=n:
        total+=n//Q-j//Q-(n-j)//Q;Q*=p
    return total

def main():
    ap=argparse.ArgumentParser();ap.add_argument('n',type=int);ap.add_argument('j',type=int);ap.add_argument('--prime',type=int);a=ap.parse_args()
    n,j=a.n,a.j
    if not 7<=j<=n//2:raise ValueError('requires 7<=j<=floor(n/2)')
    g=gcd(n,j);alpha=n//g;d=n-2*j;eps=d//g;s=S.get(n%1800)
    o=dict(n=str(n),j=str(j),g=str(g),alpha=str(alpha),d=str(d),epsilon=str(eps),in_six_classes=s is not None)
    if s is not None:
        rho=s*alpha%4 or 4
        gap=s*(d*d-n)<rho*g*(n-1)
        special=n%1800 in (704,1552) and s*(d*d-n)<4*g*(n-1)
        bounded=eps<=4096
        o.update(s=s,rho=rho,gcd_gap=gap,pure2_gap=special,primitive4096=bounded,
                 proved_Common6=bool(gap or special or bounded))
        if o['proved_Common6']:
            for r in range(6):
                q=rough(n-r);rest=q
                for b in range(r+1):rest//=gcd(rest,j-b)
                if rest>1:
                    o['complete_window_failure']=dict(r=r,q=str(q),residual=str(rest));break
            else:raise AssertionError('the claimed contract should force a complete source failure')
    if a.prime is not None:
        p=a.prime
        if p<7 or any(p%d==0 for d in range(2,isqrt(p)+1)):raise ValueError('prime witness must be an actual prime >=7')
        v6=val_choose(n,6,p);vj=val_choose(n,j,p)
        if not v6 or not vj:raise ValueError('specified prime is not common to both binomials')
        o['witness']=dict(p=p,v_choose6=v6,v_choosej=vj)
    print(json.dumps(o,ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
