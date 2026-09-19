"""Exploratory exact search; does not certify any unrestricted theorem."""
import math, json, argparse, time
from sympy import factorint

def roots01(factors):
    roots=[0]; mod=1
    for p,e in factors.items():
        q=int(p)**int(e)
        inv=pow(mod,-1,q)
        roots=[r+mod*((b-r)*inv%q) for r in roots for b in (0,1)]
        mod*=q
    return roots,mod

def vals(n,p):
    v=0
    while n%p==0:
        v+=1;n//=p
    return v

def run(limit,step,require_shape=True):
    if limit < 8 or step <= 0 or step % 4:
        raise ValueError("require limit>=8 and positive step divisible by four")
    out=[];count=0;shape=0
    for n in range(step,limit+1,step):
        lam=3 if n%9 in (4,7) else 1
        mu=3 if n%9 in (5,8) else 1
        N=(n-1)//lam; K=(n-2)//(2*mu)
        roots,_=roots01(factorint(N))
        for r in roots:
            for j in range(r,n//2+1,N):
                if j<4 or j*2==n: continue
                count+=1
                g=math.gcd(n,j); al=n//g
                odd=al//(al&-al)
                if require_shape and (odd not in (1,3) or (odd==3 and vals(n,3)!=1)):continue
                shape+=1
                if j*(j-1)*(j-2)%K:continue
                be=j//g;ga=(n-j)//g;t=be*ga//N
                a=math.gcd(N,j);b=math.gcd(N,j-1)
                L=math.gcd(K,j);H=math.gcd(K,j-1);R=math.gcd(K,j-2)
                C=L*R
                out.append(dict(n=n,j=j,g=g,alpha=al,lam=lam,mu=mu,N=N,K=K,t=t,t_factors={str(p):int(e) for p,e in factorint(t).items()},a=a,b=b,L=L,H=H,R=R,C=C,u=t//C,smallg=(g**4<3*n),strip=(vals(n,2)>=4*vals(j,2)+9)))
    return dict(limit=limit,step=step,require_alpha_shape=require_shape,first_window_pairs=count,post_filter_pairs=shape,window_models=out)

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--limit',type=int,default=1000000);p.add_argument('--step',type=int,default=512);p.add_argument('--output',required=True);p.add_argument('--no-shape',action='store_true');a=p.parse_args()
    r=run(a.limit,a.step,not a.no_shape)
    with open(a.output,'w') as f:json.dump(r,f,indent=2,sort_keys=True)
    print(json.dumps({k:v if k!='window_models' else len(v) for k,v in r.items()}))
    print('First models',r['window_models'][:3])
