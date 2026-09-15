#!/usr/bin/env python3
"""Exact sparse Z[D,a,rho] identities. No CAS or floating point."""
import argparse,json
from pathlib import Path

class P:
    def __init__(self,x=0):
        if isinstance(x,P):self.c=dict(x.c)
        elif isinstance(x,int):self.c={} if x==0 else {(0,0,0):x}
        else:self.c={k:v for k,v in x.items() if v}
    def __add__(self,b):
        b=P(b);c=dict(self.c)
        for k,v in b.c.items():c[k]=c.get(k,0)+v
        return P(c)
    __radd__=__add__
    def __neg__(self):return P({k:-v for k,v in self.c.items()})
    def __sub__(self,b):return self+-P(b)
    def __rsub__(self,b):return P(b)+-self
    def __mul__(self,b):
        b=P(b);c={}
        for k,v in self.c.items():
            for l,w in b.c.items():
                z=tuple(k[i]+l[i] for i in range(3));c[z]=c.get(z,0)+v*w
        return P(c)
    __rmul__=__mul__
    def __pow__(self,e):
        if not isinstance(e,int) or e<0:raise ValueError('nonnegative power required')
        r=P(1)
        for _ in range(e):r=r*self
        return r

def run(out):
    D=P({(1,0,0):1});a=P({(0,1,0):1});r=P({(0,0,1):1})
    ids=[]
    def check(name,p):
        if p.c:raise ValueError((name,p.c))
        ids.append(name)
    F=6*a*(a-D)*(a-2*D)
    check('first_to_joint_remainder',2*F-3*a-(2*a+1)*(3*a*(2*a-1))-12*a*D*(2*D-3*a))
    check('uncancelled_three_remainder',4*a*(a-D)*(a-2*D)-a-a*(2*a-1)*(2*a+1)-4*a*D*(2*D-3*a))
    check('bound_six_factorization',6*D**3-2*F-3*a*D**2-3*(2*D-a)*(2*a-D)**2)
    check('minus_threshold',((D+15)**2-14*(D+15)-7)-(D**2+16*D+8))
    for sign in [1,-1]:
        x=D+sign;N=x*x-2
        def poly(rr,aa):return 12*aa*(aa-D)*(aa-2*D)-(rr*D-3*aa)*N
        zeta=a*(x+sign)
        check('first_window_reduction_'+str(sign),a*(zeta-1)-a*(2*sign*a-1)-D*a*a)
        check('rho3_factor_'+str(sign),poly(3,a)-3*(a-D)*(4*a*a-8*D*a+N))
        check('rho6_factor_'+str(sign),poly(6,a)-3*(a-2*D)*(4*a*a-4*D*a+N))
        check('rho_reflection_'+str(sign),poly(6-r,2*D-a)+poly(r,a))
        # Difference in a window reduction is divisible by n-2 at the coefficient level.
        # n is represented here by rho, an independent indeterminate.
        Q=6*a*(r-1)*(a*(r-1)-D)*(a*(r-1)-2*D)-F
        # Horner remainder at r=2 vanishes. Exact substitution into coefficient dictionary.
        rem={}
        for (i,j,k),v in Q.c.items():rem[(i,j,0)]=rem.get((i,j,0),0)+v*2**k
        check('second_window_remainder_'+str(sign),P(rem))
    x=D
    check('alternating_tail',x**3-1-6*(x+1)**2-((x-8)**3+18*(x-8)**2+84*(x-8)+25))
    check('complement_block',a*(x-1)-((a-1)*x+(x-a)))
    # Mod-4 contradictions apply to the quadratic factor, not to a product with it.
    for x0 in (0,2):
        for a0 in range(4):
            for s in (1,-1):
                d0=x0-s
                assert (4*a0*a0-8*d0*a0+x0*x0-2)%4==2
                assert (4*a0*a0-4*d0*a0+x0*x0-2)%4==2
    result={'status':'PASS_IDENTITIES','identities':ids,'identity_count':len(ids),'quadratic_mod4_checks':32}
    out.mkdir(parents=True,exist_ok=True);(out/'identities.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(json.dumps({'status':result['status'],'identity_count':len(ids)},sort_keys=True))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);run(p.parse_args().out)
