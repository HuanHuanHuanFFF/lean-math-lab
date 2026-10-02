#!/usr/bin/env python3
"""Exact auxiliary coordinate change; this is NOT an NC3 or prime-power recognizer."""
from fractions import Fraction
import argparse,json

def normalize(u:Fraction,y:Fraction,r:Fraction)->dict[str,Fraction]:
    H=u*u-u*y*y+3*u*y-2*u+(y-1)**2
    J=u*u+u*y*y-3*u*y+y
    A=4*u*y*y*H;B=3*(u-1)*(y-1)**2*J
    if not u*(u-1)*y*(y-1)*r*H*J:raise ValueError('basic/H/J/r gate is zero')
    rho=A*r/B
    N=(u-1)*(A*r-B)
    D=8*r*u*u*y*y-6*(u-1)**2*(y-1)**2
    if not N*D:raise ValueError('original N/D gate is zero')
    assert r==B*rho/A
    assert N==3*(u-1)**2*(y-1)**2*J*(rho-1)
    assert D==6*(u-1)*(y-1)**2/H*(u*J*rho-(u-1)*H)
    return dict(u=u,y=y,r=r,H=H,Jcal=J,rho_N=rho,N=N,D=D)

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    for n in ['u','y','r']:ap.add_argument(n,type=Fraction)
    a=ap.parse_args();out=normalize(a.u,a.y,a.r)
    print(json.dumps({'status':'COORDINATE_IDENTITY_ONLY','values':{k:str(v)for k,v in out.items()},'unverified':['K and additional original gates','all six polynomial equations','unsquared Q','affine integrality/nonnegativity','same original (n,j)','complete source prime powers']},ensure_ascii=False,indent=2))
if __name__=='__main__':main()
