"""Diagnostic only: canonical 7 is already covered by the user's D update."""
from pathlib import Path
from math import gcd,lcm,isqrt
import argparse,json

def phi(n):
    result=n;d=2
    while d*d<=n:
        if n%d==0:
            result=result//d*(d-1)
            while n%d==0:n//=d
        d+=1
    if n>1:result=result//n*(n-1)
    return result

def lift(e):
    z=1
    for r in range(3,e):
        if (7*z*z+1)%(1<<(r+1)):z+=1<<(r-1)
        assert (7*z*z+1)%(1<<(r+1))==0
    assert (7*z*z+1)%(1<<e)==0
    return z

def local(L,V):
    u=L;a=0
    while u%2==0:u//=2;a+=1
    odd=343*u;period=lcm(294,phi(odd));need=max(V,a,9)
    v=4+period*max(0,(need-4+period-1)//period)
    e2=max(a,3);two=1<<e2;z=lift(max(e2-2,0));d0=2*z%two
    d=d0+two*((14-d0)*pow(two,-1,odd)%odd)
    nr=pow(2,v,L)
    assert (7*d*d-5*nr*nr-6*nr+4)%L==0
    assert pow(2,v,343)==16 and (d-14)%343==0
    assert v>=V and v%294==4
    return {'modulus':L,'v':v,'d_mod_combined_modulus':d,'v_period':period,'combined_modulus':two*odd}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('output');a=ap.parse_args()
    table=[]
    for ell in (1,3):
        w=7*ell
        for h in range(1,(w+1)//2):
            if gcd(h,7)>1:continue
            roots=[y for y in range(64) if (w*y*y+h)%64==0]
            if roots:table.append([ell,h,roots])
    assert [(r[0],r[1]) for r in table]==[(1,1),(3,3)]
    states=[]
    for ell,h in [(1,1),(3,3)]:
        odds=[1,3] if ell==1 else [1]
        for m in odds:
            for r in range(42):
                n=m*pow(2,r,441)%441
                if (3 if n%9 in (4,5,7,8) else 1)!=ell:continue
                if (n-2)%7 or (h*(n-1)*(n-2)-14*ell)%49:continue
                states.append([ell,h,m,r])
    assert states==[[1,1,1,25],[3,3,1,4]]
    states343=[]
    for r in range(294):
        if pow(2,r,343)!=16:continue
        ell=3 if pow(2,r,9) in (4,5,7,8) else 1
        states343.append([ell,ell,r])
    assert states343==[[3,3,4],[1,1,151]]
    moduli=[1,2,8,64,343,49*13,32*121*343,2**20*9*25*7*13,17*19*31,2**12*37*41]
    witnesses=[local(L,10**6) for L in moduli]
    data={'status':'DIAGNOSTIC_PASS','counts_as_new_7_closure':False,'norm_equation':{'D':35,'norm':29,'x':'5*2^v+3'},
          'mod64':table,'states_mod42':states,'states_mod294':states343,'local_witnesses':witnesses,
          'boundary':'local congruence witnesses are not integer solutions or noCommon witnesses'}
    Path(a.output).write_text(json.dumps(data,indent=2)+'\n');print('DIAGNOSTIC: 7 -> norm35; 10 exact local witnesses, no new closure credited')
if __name__=='__main__':main()
