"""Validate an actual two-prime-power row and apply only justified consumers."""
from __future__ import annotations
import argparse,json
from core import *

def consume(P:int,Q:int)->dict:
    if not 5<=P<Q:return {'status':'OUTSIDE_INTERFACE','reason':'require 5<=P<Q'}
    p,q=prime_power(P),prime_power(Q)
    if not p or not q or p[0]==q[0]:return {'status':'INVALID_TWO_POWER_INPUT','P_power':p,'Q_power':q}
    n=P*Q+1;k,d=divmod(Q,P)
    if not (n%4==0 and k==3 and Q<P*P and P<d*d<2*P):
        return {'status':'OUTSIDE_NEW_CONSUMER','reason':'not the stated k=3 first shell'}
    jp=P*pow(P,-1,Q);j=min(jp,n-jp);eps=1 if j==jp else -1
    s=(1-eps)//2;t=(1+eps)//2;X=(j-s)//P;Y=(j-t)//Q;u,x0=divmod(X,P)
    zz,rem=divmod(d*Y+eps,P)
    if rem or u!=1 or zz<3 or 3*zz-d!=1:
        return {'status':'OUTSIDE_NEW_CONSUMER','reason':'not h=1,u=1,z>=3'}
    w=reconstruct(zz,x0-zz,eps)
    assert valid_top(w) and (w['P'],w['Q'],w['j'])==(P,Q,j)
    lp,lq=lucas(n,j,p[0]),lucas(n,j,q[0])
    base={'n':n,'j_original':j,'P_power':p,'Q_power':q,'two_Lucas':[lp,lq],
      'z':zz,'a':w['a'],'eps':eps,'alpha':w['alpha'],'T0':w['T0'],'G':w['G']}
    if not(lp and lq):
        return base|{'status':'COMMON3_ENTIRE_ROW','consumer':'direct full prime-base Lucas at the unique original CRT candidate',
          'candidate_witness':p[0] if not lp else q[0]}
    if (1<<w['alpha'])<=d*d:
        assert w['T0']>w['G'] and w['T0_j_remainder']!=0
        return base|{'status':'COMMON3_ENTIRE_ROW','consumer':'K3-LOW2-T0','T0_j_remainder':w['T0_j_remainder']}
    if w['T0_j_remainder']:
        return base|{'status':'COMMON3_ENTIRE_ROW','consumer':'exact original T0 divides j check','T0_j_remainder':w['T0_j_remainder']}
    return base|{'status':'OPEN_BY_THIS_CONSUMER','reason':'No NC3 claim. Original full T2 slots, both full Lucas, and all remaining conditions still required.',
       'T2_L_remainder':w['T2_L_remainder']}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--P',type=int,required=True);ap.add_argument('--Q',type=int,required=True)
    args=ap.parse_args();print(json.dumps(consume(args.P,args.Q),ensure_ascii=False,indent=2))
if __name__=='__main__':main()
