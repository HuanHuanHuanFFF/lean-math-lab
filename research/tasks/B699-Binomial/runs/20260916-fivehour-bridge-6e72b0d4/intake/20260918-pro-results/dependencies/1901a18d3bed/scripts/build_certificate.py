"""Finite checks for the integral-quotient theorem; not a proof of all indices."""
from __future__ import annotations
import argparse, json, math
from pathlib import Path

def row(D:int,b:int,r:int)->tuple[int,int]:
    x,y=0,b
    for _ in range(r):x,y=y,2*(D-1)*y+3-x
    return x,y

def lucas(P:int,r:int)->list[int]:
    out=[0,1]
    for _ in range(r):out.append(P*out[-1]-out[-2])
    return out

def factor(n:int)->dict[int,int]:
    out={};p=2
    while p*p<=n:
        while n%p==0:out[p]=out.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:out[n]=out.get(n,0)+1
    return out

def build()->dict:
    rec=[]
    for D in range(3,52,2):
        P=2*(D-1)
        for b in (1,2):
            for nu in range(3,64,2):
                r=2*nu-1 if b==1 else 2*nu
                j,k=row(D,b,r); n=j+k
                U=lucas(P,nu+1); h=(nu-1)//2
                A=U[h+1]-U[h]; B=U[h+1]+U[h]
                V=U[nu]+2*U[nu-1] if b==1 else 2*U[nu+1]+U[nu]
                tau=(n-2)//(2*D)
                assert n%4==0 and (n-1)*(n-2)==2*D*j*k
                assert tau==A*B*V and all(x>1 and x%2 for x in (A,B,V))
                assert math.gcd(A,B)==math.gcd(A,V)==math.gcd(B,V)==1
                rec.append(dict(D=D,branch=b,nu=nu,r=r,n=str(n),j=str(j),tau=str(tau),A=str(A),B=str(B),V=str(V)))
    ends=[]
    for D in sorted(set(range(3,502,2))|{3**a for a in range(1,21)}):
        fs=factor(D) if D<=501 else {}
        if D>501:
            v=D;a=0
            while v%3==0:a+=1;v//=3
            assert v==1;fs={3:a}
        p=next((p for p in fs if p>=5),3)
        n=8*D*D-6*D+2;j=4*D-1
        ends.append(dict(D=str(D),n=str(n),j=str(j),p=p))
    D=H=5;b=1;r=21;j,k=row(D,b,r);n=j+k
    lam=3 if n%9 in (4,7) else 1;mu=3 if n%9 in (5,8) else 1
    N=(n-1)//lam;K=(n-2)//(2*mu);g=math.gcd(n,j);C=K//H;t=(j//g)*(k//g)//N
    weak=dict(D=D,H=H,r=r,n=str(n),j=str(j),lambda_=lam,mu=mu,g=g,C=str(C),t=str(t),u=t//C,z=str((C*g*g-lam)//(H*H)),common_prime=107,
              C_factorization=[[251,1],[26839,1],[34649,1],[4646141,1]],
              recurrence_matrix_mod107=[[0,1],[106,8]],T20_mod107=[[38,13],[94,35]],period_in_w=27,
              subsequence='w=1+27h (h>=0), r=20w+1',
              n_prime_divisor=107,j_mod107=j%107)
    return dict(schema='B699-E-INTEGER-QUOTIENT-1',scope=dict(D_odd_min=3,D_odd_max=51,nu_odd_min=3,nu_odd_max=63,branches=[1,2]),triples=rec,endpoints=ends,weak_family=weak)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);a=ap.parse_args()
    out=build();p=Path(a.output);p.parent.mkdir(parents=True,exist_ok=True)
    p.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(dict(triple_records=len(out['triples']),endpoint_records=len(out['endpoints']),output_bytes=p.stat().st_size)))
if __name__=='__main__':main()
